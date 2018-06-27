unit Unit_Relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Unit_DM,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Unit_Persistencia, Unit_Utils, StrUtils;

type
  TfrmRelatorios = class(TForm)
    frxUsuario: TfrxReport;
    frxDBCliente: TfrxDBDataset;
    frxProduto: TfrxReport;
    frxDBProduto: TfrxDBDataset;
    frxDBVenda: TfrxDBDataset;
    frxDBContasReceber: TfrxDBDataset;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    rbtFeminino: TRadioButton;
    RadioGroup2: TRadioGroup;
    Panel1: TPanel;
    rbtMasculino: TRadioButton;
    rbtTodosProd: TRadioButton;
    rbtProdInd: TRadioButton;
    rbtAvista: TRadioButton;
    rbtAprazo: TRadioButton;
    rbtReceber: TRadioButton;
    rbtPagar: TRadioButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnGerar: TButton;
    edtDeMovCaixa: TMaskEdit;
    edtDeDataContas: TMaskEdit;
    edtAteDataContas: TMaskEdit;
    rbtIndeterminado: TRadioButton;
    edtCliDe: TEdit;
    edtCliAte: TEdit;
    Label8: TLabel;
    edtProDe: TEdit;
    edtProAte: TEdit;
    RGclientes: TRadioGroup;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    rbtTodosProdMin: TRadioButton;
    edtAteMovCaixa: TMaskEdit;
    Label11: TLabel;
    frxVenda: TfrxReport;
    Label12: TLabel;
    Label2: TLabel;
    edtDeCodContas: TEdit;
    edtAteCodContas: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    edtVenData: TMaskEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    edtCodCliVenda: TEdit;
    frxContasReceber: TfrxReport;
    frxAvista: TfrxReport;
    frxAprazo: TfrxReport;
    edtTotalVenda: TEdit;
    procedure btnGerarClick(Sender: TObject);
    procedure ShowReport(Rpt: TfrxReport);
    procedure rbtAprazoClick(Sender: TObject);
    procedure rbtAvistaClick(Sender: TObject);

//    procedure edtAteMovCaixaChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

procedure TfrmRelatorios.btnGerarClick(Sender: TObject);
var temp_data1, temp_data2, temp_preco: string;
begin
		//Clientes
    if rbtFeminino.Checked or rbtMasculino.Checked or rbtIndeterminado.Checked then
    begin
      DM.IBTCliente.Filtered := false;
      if rbtFeminino.Checked = True then
      begin
        DM.IBTCliente.filter := 'Cli_Sexo=1 and Cli_Codigo >='+quotedstr(edtCliDe.Text)+' and Cli_Codigo <='+quotedstr(edtCliAte.Text);
      end
      else if rbtMasculino.Checked = True then
      begin
        DM.IBTCliente.filter := 'Cli_Sexo=0 and Cli_Codigo >'+quotedstr(edtCliDe.Text)+' and Cli_Codigo <'+quotedstr(edtCliAte.Text);
      end
      else if rbtIndeterminado.Checked = True then
        DM.IBTCliente.filter := 'Cli_Sexo=2 and Cli_Codigo >'+quotedstr(edtCliDe.Text)+' and Cli_Codigo <'+quotedstr(edtCliAte.Text);
      DM.IBTCliente.Filtered:= True;

			showReport(frxUsuario);
    end
		//Produtos
    else if rbtProdInd.Checked or rbtTodosProdMin.checked or rbtTodosProd.checked then
    begin
			DM.IBTProduto.filtered := false;
			if rbtTodosProdMin.checked = true then
				DM.IBTProduto.filter := 'pro_estoque = pro_estoqueMin and pro_codigo >='+quotedstr(edtProDe.Text)+' and pro_codigo <='+quotedstr(edtProAte.Text)
			else if rbtProdInd.checked = true then
				DM.IBTProduto.filter := 'pro_estoque = pro_estoqueMin and pro_codigo >='+quotedstr(edtProDe.Text)+' and pro_codigo <='+quotedstr(edtProAte.Text)
			else if rbtTodosProd.checked = true then
				DM.IBTProduto.filter := 'pro_codigo >='+quotedstr(edtProDe.Text)+' and pro_codigo <='+quotedstr(edtProAte.Text);
			DM.IBTProduto.filtered:= true;
		showReport(frxProduto);
		end

		//Vendas
    else if rbtAprazo.Checked or rbtAvista.Checked then
    begin
      temp_data1 := edtVenData.Text;
      temp_data1 := AnsiReplaceStr(temp_data1, '/', '.');

      temp_preco := edtTotalVenda.Text;
      temp_preco := AnsiReplaceStr(temp_preco, ',', '.');
			if rbtAvista.checked = true then
			begin
				DM.IBTContasReceber.filtered := false;

        DM.IBTContasReceber.filter := 'contrec_nparc = 0 and contrec_valor = '+quotedstr(temp_preco)+' and contrec_datapag <= '+quotedstr(temp_data1);
				DM.IBTContasReceber.filtered := True;
				showReport(frxAvista);
			end
			else if rbtAprazo.Checked then
			begin
      	DM.IBTContasReceber.filtered := false;
//				temp_data1 := edtVenData.Text;
//				temp_data1 :=  AnsiReplaceStr(temp_data1, '/', '.');
        DM.IBTContasReceber.filter := 'contrec_valor = '+quotedstr(temp_preco)+' and contrec_datavenc <='+
					quotedstr(temp_data1)+' and contrec_codcliente ='+quotedstr(edtCodCliVenda.Text);
				DM.IBTContasReceber.filtered := True;
				showReport(frxAprazo);
      end;
    end    

		//contas a receber
    else if rbtReceber.Checked =true then
    begin
      if edtDeDataContas.Text >= edtAteDataContas.Text then
         Application.MessageBox('Data informada inválida',
      'Informe uma data maior que do campo ao lado', MB_ICONERROR + MB_OK)
      else
			begin	
        temp_data1 := edtDeDataContas.Text;
        temp_data2 := edtAteDataContas.Text;
        temp_data1 := AnsiReplaceStr(temp_data1, '/', '.');
        temp_data2 := AnsiReplaceStr(temp_data2, '/', '.');
        DM.IBTContasReceber.filtered := false;
        DM.IBTContasReceber.filter := 'contrec_codCliente >= '+quotedstr(edtDeCodContas.Text)+
        ' and contrec_codCliente <= '+quotedstr(edtAteCodContas.Text)+
        ' and contrec_datavenc >= '+quotedstr(temp_data1)
        +' and contrec_datavenc <= '+quotedstr(temp_data2);
				DM.IBTContasReceber.Filtered := true;
        showReport(frxContasReceber);        
			end;
    end

		//movimentação caixa
    else
    begin
      if edtDeMovCaixa.Text >= edtAteMovCaixa.Text then
        Application.MessageBox('Data informada inválida',
      'Informe uma data maior que do campo ao lado', MB_ICONERROR + MB_OK)
      else begin
        temp_data1 := edtDeMovCaixa.Text;
        temp_data2 := edtAteMovCaixa.Text;
        temp_data1 := AnsiReplaceStr(temp_data1, '/', '.');
        temp_data2 := AnsiReplaceStr(temp_data2, '/', '.');
        DM.IBTVenda.filtered := false;
        if (temp_data1 <> '') or (temp_data2 <> '') then
        begin
          DM.IBTVenda.filter := 'ven_data >='+quotedstr(temp_data1)+'and ven_data <='+quotedstr(temp_data2)
        end;
        DM.IBTVenda.filtered := false;
        showReport(frxVenda);
      end;
    end;
end;
      
procedure TfrmRelatorios.rbtAprazoClick(Sender: TObject);
begin
  edtCodCliVenda.Enabled := True;
end;

procedure TfrmRelatorios.rbtAvistaClick(Sender: TObject);
begin
  edtCodCliVenda.Enabled := False;
end;

procedure TfrmRelatorios.ShowReport(Rpt: TfrxReport);
begin
	rpt.PreviewOptions.Maximized := False;
  rpt.PrepareReport;
  rpt.ShowPreparedReport;
end;

end.
