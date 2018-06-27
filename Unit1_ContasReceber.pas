 unit Unit1_ContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Unit_Persistencia, Vcl.Mask, Vcl.Menus;

type
  Tfrm_contasReceber = class(TForm)
    Label1: TLabel;
    StringGrid: TStringGrid;
    Label2: TLabel;
    edt_Pesquisa: TMaskEdit;
    PopupMenu1: TPopupMenu;
    Editarcadastro1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure carregaContasReceber;
    // procedure Combox_ClientesChange(Sender: TObject);
    procedure edt_PesquisaChange(Sender: TObject);
    procedure populaGrid;
    procedure StringGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Editarcadastro1Click(Sender: TObject);
    // procedure pagarConta(cod: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_contasReceber: Tfrm_contasReceber;
  Linha: Integer;

implementation

{$R *.dfm}

procedure Tfrm_contasReceber.Editarcadastro1Click(Sender: TObject);
var
  selecionado: String;
  data: Tdate;
begin
  selecionado := StringGrid.Cells[0, Linha];
  // ShowMessage(selecionado);
  if Application.MessageBox('Deseja realmente dar baixa nessa conta? ',
    'Deseja pagar essa conta ?', MB_YESNO) = IDYES then
  begin
    // dar baixa
    //ShowMessage(selecionado);
    data := date;
    pagarConta(selecionado, data);
    //ShowMessage('pagou');
    carregaContasReceber;
  end;
end;

procedure Tfrm_contasReceber.edt_PesquisaChange(Sender: TObject);
begin
  populaGrid;
end;

procedure Tfrm_contasReceber.populaGrid;
var
  Clientes_Atuais: Clientes_Cadastrados;
  i, j, linha: Integer;
  Campo, Termo: String;
  contas: Contas_Receber;
  Cli: Dados_Cliente;
  msg:string;
  codcts:integer;
  codcli:integer;

begin

  If Trim(edt_Pesquisa.Text) = '' Then
  Begin
    Campo := '';
    Termo := '';
  End;

  for I := 1 to StringGrid.RowCount do
  begin
    StringGrid.Cells[0, i] := '';
    StringGrid.Cells[1, i] := '';
    StringGrid.Cells[2, i] := '';
    StringGrid.Cells[3, i] := '';
  end;


  Campo := 'Nome';
  Termo := Trim(edt_Pesquisa.Text);

  //SetLength(Clientes_Atuais, 0);

  Clientes_Atuais := Retorna_Clientes_Cadastrados(Campo, Termo, 'AZ');

  //StringGrid.RowCount := 1; // Recebe primeiro só a linha de cabeçalho

  contas := Retorna_Contas_Receber();

  //SetLength(contas, 0);

 // If Length(contas) >= 1 Then
    StringGrid.RowCount := 1;
  //Else
  //Begin
    StringGrid.RowCount := 2;
    StringGrid.FixedRows := 1;
    StringGrid.Cells[0, 1] := '';
    StringGrid.Cells[1, 1] := '';
    StringGrid.Cells[2, 1] := '';
    StringGrid.Cells[3, 1] := '';
 // End;
   linha:=1;
  //ShowMessage(inttostr(Length(Clientes_Atuais)));
  //ShowMessage(inttostr(Length(Contas)));

  for i := 0 to Length(Clientes_Atuais) - 1 do
  begin
       msg:= msg + ' - ' + inttostr(clientes_atuais[i].Codigo) + ' ' + clientes_atuais[i].Nome + ' - ';
  end;

  //ShowMessage(msg);

  msg:='';

  for i := 0 to Length(Contas) - 1 do
  begin
       msg:= msg + ' - ' + inttostr(contas[i].cliCod) + ' - ';
  end;

  //ShowMessage(msg);

  for i:=0 to (Length(Contas)-1) do
  begin
    for j:=0 to (Length(clientes_atuais)-1) do
    begin
      Cli := Retorna_Dados_Cliente(contas[i].CliCod);
       //ShowMessage(inttostr(Clientes_Atuais[i].Codigo) + ' = '+ inttostr(Contas[j].cliCod));
       //ShowMessage(inttostr(Contas[j].cliCod));
      //ShowMessage((Clientes_Atuais[i].Nome) + ' = '+ (cli.Nome));
      codcts:= contas[i].clicod;
      codcli:=Clientes_Atuais[j].Codigo;
      //ShowMessage(inttostr(codcts)+'='+inttostr(codcli));
      if (codcts=codcli) then
      begin
      //ShowMessage('igual');
        StringGrid.RowCount := 1 + StringGrid.RowCount;
        //ShowMessage(inttostr(Contas[i].cliCod));
        StringGrid.Cells[0, linha] := IntToStr(contas[i].Cod);
        Cli := Retorna_Dados_Cliente(contas[i].CliCod);
        StringGrid.Cells[1, linha] := Cli.Nome;
        StringGrid.Cells[2, linha] := FloatToStrf(contas[i].Valor,ffnumber,12,2);
        StringGrid.Cells[3, linha] := contas[i].Data_Vencimento;
        linha:=linha+1;
      end;
    end;

  end;

  StringGrid.RowCount := StringGrid.RowCount-1;

end;

procedure Tfrm_contasReceber.StringGridSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  Linha := ARow;
end;

procedure Tfrm_contasReceber.FormShow(Sender: TObject);
begin

  StringGrid.Cells[0, 0] := 'Cod';
  StringGrid.Cells[1, 0] := 'Cliente';
  StringGrid.Cells[2, 0] := 'Valor R$';
  StringGrid.Cells[3, 0] := 'Data Vencimento';
  StringGrid.ColWidths[1] := 100;
  StringGrid.ColWidths[1] := 350;
  StringGrid.ColWidths[2] := 100;
  StringGrid.ColWidths[3] := 100;

  carregaContasReceber;
end;

procedure Tfrm_contasReceber.carregaContasReceber;
var
  contas: Contas_Receber;
  i: Integer;
  Cli: Dados_Cliente;
begin
  SetLength(contas, 0);
  contas := Retorna_Contas_Receber();
  If Length(contas) >= 1 Then
    StringGrid.RowCount := Length(contas) + 1
  Else
  Begin
    StringGrid.RowCount := 2;
    StringGrid.FixedRows := 1;
    StringGrid.Cells[0, 1] := '';
    StringGrid.Cells[1, 1] := '';
    StringGrid.Cells[2, 1] := '';
    StringGrid.Cells[3, 1] := '';
  End;
  for i := 0 to Length(contas) - 1 do
  Begin
    StringGrid.Cells[0, i + 1] := IntToStr(contas[i].Cod);
    Cli := Retorna_Dados_Cliente(contas[i].CliCod);
    StringGrid.Cells[1, i + 1] := Cli.nome;
    StringGrid.Cells[2, i + 1] := FloatToStrf(contas[i].Valor,ffnumber,12,2);
    StringGrid.Cells[3, i + 1] := contas[i].Data_Vencimento;
  end;

end;

end.
