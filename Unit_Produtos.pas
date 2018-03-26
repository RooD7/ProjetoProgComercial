unit Unit_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.ComCtrls, Unit_Persistencia, StrUtils, Unit_Utils;

type
  TfrmProdutos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    sgdProdutos: TStringGrid;
    Panel1: TPanel;
    cbxCampos: TComboBox;
    edt_Pesquisa: TMaskEdit;
    btn_Sair: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    btn_Editar: TBitBtn;
    btn_Limpar: TBitBtn;
    btn_Cancelar: TBitBtn;
    btn_Gravar: TBitBtn;
    btn_Sair1: TBitBtn;
    lblQtde: TLabel;
    edt_Codigo: TLabeledEdit;
    edt_Descricao: TLabeledEdit;
    edt_CodBarras: TLabeledEdit;
    edt_PreCusto: TLabeledEdit;
    edt_PreVenda: TLabeledEdit;
    edt_EstAtual: TLabeledEdit;
    edt_EstMin: TLabeledEdit;
    CheckBox1: TCheckBox;
    procedure Popula_Grid;
    Procedure Pinta_Grid;
    procedure Preenche_Componentes;
    Function Validado : Boolean;
    function Coleta_Dados : Dados_Produto;
    procedure Habilita_Tela(Habilita : Boolean);
    procedure Habilita_Botoes(Quais : String);
    procedure Limpa_Tela;
    procedure btn_EditarClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_LimparClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_Sair1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

Procedure TfrmProdutos.Pinta_Grid;
  Begin
sgdProdutos.Cells[0,0] := 'Cód.';
sgdProdutos.Cells[1,0] := 'Descrição';
sgdProdutos.Cells[2,0] := 'Cod.Barras';
sgdProdutos.Cells[3,0] := 'Preço Custo';
sgdProdutos.Cells[4,0] := 'Preço Venda';
sgdProdutos.Cells[5,0] := 'Estoque';
sgdProdutos.Cells[6,0] := 'Est. Mín.';
sgdProdutos.ColWidths[0] := 60;
sgdProdutos.ColWidths[1] := 100;
sgdProdutos.ColWidths[2] := 100;
if CheckBox1.Checked
  then sgdProdutos.ColWidths[3] := 100
  Else sgdProdutos.ColWidths[3] := -1;
sgdProdutos.ColWidths[4] := 100;
sgdProdutos.ColWidths[5] := 100;
sgdProdutos.ColWidths[6] := 100;
  End;

procedure TfrmProdutos.Popula_Grid;
  Var
    Produtos_Atuais : Produtos_Cadastrados;
    I : Integer;
  Begin
    SetLength(Produtos_Atuais,0);
    Produtos_Atuais := Retorna_Produtos_Cadastrados;
    for I := 0 to Length(Produtos_Atuais)-1 do
      Begin
sgdProdutos.Cells[0,I+1] := IntToStr(Produtos_Atuais[I].Codigo);
sgdProdutos.Cells[1,I+1] := Produtos_Atuais[I].Descricao;
sgdProdutos.Cells[2,I+1] := Produtos_Atuais[I].Cod_Barras;
sgdProdutos.Cells[3,I+1] := FloatToStr(Produtos_Atuais[I].Preco_Custo);
sgdProdutos.Cells[4,I+1] := FloatToStr(Produtos_Atuais[I].Preco_Venda);
sgdProdutos.Cells[5,I+1] := FloatToStr(Produtos_Atuais[I].Estoque_Atual);
sgdProdutos.Cells[6,I+1] := FloatToStr(Produtos_Atuais[I].Estoque_Minimo);
      End;//end do FOR
  End;//end da subrotina

procedure TfrmProdutos.Preenche_Componentes;
  Var
    Temp : Dados_Produto;
  Begin
Temp := Retorna_Dados_Produto(1);
edt_Codigo.Text := IntToStr(Temp.Codigo);
edt_Descricao.Text := Temp.Descricao;
edt_CodBarras.Text := Temp.Cod_Barras;
edt_PreCusto.Text := FloatToStr(Temp.Preco_Custo);
edt_PreVenda.Text := FloatToStr(Temp.Preco_Venda);
edt_EstAtual.Text := FloatToStr(Temp.Estoque_Atual);
edt_EstMin.Text := FloatToStr(Temp.Estoque_Minimo);
  End;

Function TfrmProdutos.Validado : Boolean;
  Var
    Temp_CPF : String;
  Begin
    if Trim(edt_Descricao.Text) = ''
      Then Begin
Application.MessageBox('O campo de descrição é obrigatório',
                       'Informe a descrição',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_Descricao.SetFocus;
             Exit;
           End;
    if Trim(edt_CodBarras.Text) = ''
      Then Begin
Application.MessageBox('O campo de código de barras é obrigatório',
                       'Informe o código de barras',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_CodBarras.SetFocus;
             Exit;
           End;
    if Trim(edt_PreCusto.Text) = ''
      Then Begin
Application.MessageBox('O campo de preço de custo é obrigatório',
                       'Informe o preço de custo',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_PreCusto.SetFocus;
             Exit;
           End;
    if Trim(edt_PreVenda.Text) = ''
      Then Begin
Application.MessageBox('O campo de preço de Venda é obrigatório',
                       'Informe o preço de Venda',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_PreVenda.SetFocus;
             Exit;
           End;
    if Trim(edt_EstAtual.Text) = ''
      Then Begin
Application.MessageBox('O campo de estoque atual é obrigatório',
                       'Informe o estoque atual',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_EstAtual.SetFocus;
             Exit;
           End;
    if Trim(edt_EstMin.Text) = ''
      Then Begin
Application.MessageBox('O campo de estoque mínimo é obrigatório',                       'Informe o estoque mínimo',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_EstMin.SetFocus;
             Exit;
           End;
    Result := True;
  End;

procedure TfrmProdutos.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked
  then sgdProdutos.ColWidths[3] := 100
  Else sgdProdutos.ColWidths[3] := -1;
end;

function TfrmProdutos.Coleta_Dados : Dados_Produto;
  Begin
Result.Codigo := StrToInt(edt_Codigo.Text);
Result.Descricao := edt_Descricao.Text;
Result.Cod_Barras := edt_CodBarras.Text;
Result.Preco_Custo := StrToFloat(edt_PreCusto.Text);
Result.Preco_Venda := StrToFloat(edt_PreVenda.Text);
Result.Estoque_Atual := StrToFloat(edt_EstAtual.Text);
Result.Estoque_Minimo := StrToFloat(edt_EstMin.Text);
  End;

procedure TfrmProdutos.FormShow(Sender: TObject);
  begin
    PageControl1.ActivePageIndex := 0;
    Pinta_Grid;
    Popula_Grid;
  end;

procedure TfrmProdutos.Habilita_Botoes(Quais : String);
  Begin
    if Quais[1] = '0'
      then btn_Editar.Enabled := False
      Else btn_Editar.Enabled := True;
    if Quais[2] = '0'
      then btn_Limpar.Enabled := False
      Else btn_Limpar.Enabled := True;
    if Quais[3] = '0'
      then btn_Cancelar.Enabled := False
      Else btn_Cancelar.Enabled := True;
    if Quais[4] = '0'
      then btn_Gravar.Enabled := False
      Else btn_Gravar.Enabled := True;
    if Quais[5] = '0'
      then btn_Sair.Enabled := False
      Else btn_Sair.Enabled := True;
  End;

procedure TfrmProdutos.Habilita_Tela(Habilita : Boolean);
  Begin
    edt_Codigo.Enabled := Habilita;
    edt_Descricao.Enabled := Habilita;
    edt_CodBarras.Enabled := Habilita;
    edt_PreCusto.Enabled := Habilita;
    edt_PreVenda.Enabled := Habilita;
    edt_EstAtual.Enabled := Habilita;
    edt_EstMin.Enabled := Habilita;
  End;

procedure TfrmProdutos.Limpa_Tela;
  Begin
    edt_Codigo.Clear;
    edt_Descricao.Clear;
    edt_CodBarras.Clear;
    edt_PreCusto.Clear;
    edt_PreVenda.Clear;
    edt_EstAtual.Clear;
    edt_EstMin.Clear;
  End;

procedure TfrmProdutos.btn_Sair1Click(Sender: TObject);
begin
    frmProdutos.Close;
end;

procedure TfrmProdutos.btn_CancelarClick(Sender: TObject);
begin
    Habilita_Botoes('10001');
    Habilita_Tela(False);
end;

procedure TfrmProdutos.btn_EditarClick(Sender: TObject);
begin
    Habilita_Tela(True);
    Habilita_Botoes('01110');
end;

procedure TfrmProdutos.btn_GravarClick(Sender: TObject);
begin
    if Validado
      then Begin
             Grava_Dados_Produto(Coleta_Dados);
             Habilita_Tela(False);
             Habilita_Botoes('10001');
          End;
end;

procedure TfrmProdutos.btn_LimparClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente limpar todos os campos? Tem Certeza?',
                            'Limpar todos os campos?',
                            MB_ICONQUESTION+MB_YESNO) = mrYes
   then Limpa_Tela;

end;

end.
