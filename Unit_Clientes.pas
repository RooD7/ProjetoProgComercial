unit Unit_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.ComCtrls, Unit_Persistencia, StrUtils, Unit_Utils;

type
  TfrmClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    sgdClientes: TStringGrid;
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
    edt_Nome: TLabeledEdit;
    edt_Endereco: TLabeledEdit;
    Label3: TLabel;
    edt_CPF: TMaskEdit;
    Label4: TLabel;
    edt_Telefone: TMaskEdit;
    Label5: TLabel;
    edt_Celular: TMaskEdit;
    rdg_Sexo: TRadioGroup;
    edt_Time: TLabeledEdit;
    edt_Religiao: TLabeledEdit;
    procedure Popula_Grid;
    Procedure Pinta_Grid;
    procedure Preenche_Componentes;
    Function Validado : Boolean;
    function Coleta_Dados : Dados_Cliente;
    procedure Habilita_Tela(Habilita : Boolean);
    procedure Habilita_Botoes(Quais : String);
    procedure Limpa_Tela;
    procedure btn_EditarClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_LimparClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_Sair1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

Procedure TfrmClientes.Pinta_Grid;
  Begin
sgdClientes.Cells[0,0] := 'C�d.';
sgdClientes.Cells[1,0] := 'Nome';
sgdClientes.Cells[2,0] := 'Endere�o';
sgdClientes.Cells[3,0] := 'CPF';
sgdClientes.Cells[4,0] := 'Telefone';
sgdClientes.Cells[5,0] := 'Celular';
sgdClientes.Cells[6,0] := 'Time';
sgdClientes.Cells[7,0] := 'Religi�o';
sgdClientes.Cells[8,0] := 'Sexo';
sgdClientes.ColWidths[0] := 60;
sgdClientes.ColWidths[1] := 100;
sgdClientes.ColWidths[2] := 100;
sgdClientes.ColWidths[3] := 80;
sgdClientes.ColWidths[4] := 80;
sgdClientes.ColWidths[5] := 80;
sgdClientes.ColWidths[6] := 100;
sgdClientes.ColWidths[7] := 100;
sgdClientes.ColWidths[8] := 50;
  End;



procedure TfrmClientes.Popula_Grid;
  Var
    Clientes_Atuais : Clientes_Cadastrados;
    I : Integer;
  Begin
    SetLength(Clientes_Atuais,0);
    Clientes_Atuais := Retorna_Clientes_Cadastrados;
    for I := 0 to Length(Clientes_Atuais)-1 do
      Begin
sgdClientes.Cells[0,I+1] := IntToStr(Clientes_Atuais[I].Codigo);
sgdClientes.Cells[1,I+1] := Clientes_Atuais[I].Nome;
sgdClientes.Cells[2,I+1] := Clientes_Atuais[I].Endereco;
sgdClientes.Cells[3,I+1] := Clientes_Atuais[I].CPF;
sgdClientes.Cells[4,I+1] := Clientes_Atuais[I].Telefone;
sgdClientes.Cells[5,I+1] := Clientes_Atuais[I].Celular;
sgdClientes.Cells[6,I+1] := Clientes_Atuais[I].Time;
sgdClientes.Cells[7,I+1] := Clientes_Atuais[I].Religiao;
Case Clientes_Atuais[I].Sexo of
  0 : sgdClientes.Cells[8,I+1] := 'Masc';
  1 : sgdClientes.Cells[8,I+1] := 'Femi';
  2 : sgdClientes.Cells[8,I+1] := 'Indef';
End;//end do CASE
      End;//end do FOR
  End;//end da subrotina

procedure TfrmClientes.Preenche_Componentes;
  Var
    Temp : Dados_Cliente;
  Begin
    Temp := Retorna_Dados_Cliente(1);
    edt_Codigo.Text := IntToStr(Temp.Codigo);
    edt_Nome.Text := Temp.Nome;
    edt_Endereco.Text := Temp.Endereco;
    edt_CPF.Text := Temp.CPF;
    edt_Telefone.Text := Temp.Telefone;
    edt_Celular.Text := Temp.Celular;
    edt_Time.Text := Temp.Time;
    edt_Religiao.Text := Temp.Religiao;
    rdg_Sexo.ItemIndex := Temp.Sexo;
  End;

Function TfrmClientes.Validado : Boolean;
  Var
    Temp_CPF : String;
  Begin
    if Trim(edt_Nome.Text) = ''
      Then Begin
Application.MessageBox('O campo de Nome � obrigat�rio',
                       'Informe o nome',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_Nome.SetFocus;
             Exit;
           End;
    if Trim(edt_Endereco.Text) = ''
      Then Begin
Application.MessageBox('O campo de endere�o � obrigat�rio',
                       'Informe o endere�o',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_Endereco.SetFocus;
             Exit;
           End;
    Temp_CPF := edt_CPF.Text;
    Temp_CPF := AnsiReplaceStr(Temp_CPF,'.','');
    Temp_CPF := AnsiReplaceStr(Temp_CPF,'-','');
    if Not(isCPF(Temp_CPF))
      Then Begin
Application.MessageBox('O CPF � inv�lido. Digite o CPF correto e tente novamente!',
                       'CPF inv�lido',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_CPF.SetFocus;
             Exit;
           End;
    if AnsiPos(' ',edt_Telefone.Text) <> 0
      Then Begin
Application.MessageBox('O campo de telefone � obrigat�rio',
                       'Informe o telefone ',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_Telefone.SetFocus;
             Exit;
           End;
    if AnsiPos(' ',edt_Celular.Text) <> 0
      Then Begin
Application.MessageBox('O campo de Celular � obrigat�rio',
                       'Informe o Celular ',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             edt_Celular.SetFocus;
             Exit;
           End;
    if rdg_Sexo.ItemIndex = -1
      Then Begin
Application.MessageBox('Indique o sexo do cliente',
                       'Informe o sexo ',
                       MB_ICONERROR+MB_OK);
             Result := False;
             PageControl1.ActivePageIndex := 1;
             rdg_Sexo.SetFocus;
             Exit;
           End;
    Result := True;
  End;

function TfrmClientes.Coleta_Dados : Dados_Cliente;
  Begin
    Result.Codigo := StrToInt(edt_Codigo.Text);
    Result.Nome := edt_Nome.Text;
    Result.Endereco := edt_Endereco.Text;
    Result.CPF := edt_CPF.Text;
    Result.Telefone := edt_Telefone.Text;
    Result.Celular := edt_Celular.Text;
    Result.Time := edt_Time.Text;
    Result.Religiao := edt_Religiao.Text;
    Result.Sexo := rdg_Sexo.ItemIndex;
  End;

procedure TfrmClientes.FormShow(Sender: TObject);
  begin
    PageControl1.ActivePageIndex := 0;
    Pinta_Grid;
    Popula_Grid;
  end;

procedure TfrmClientes.Habilita_Botoes(Quais : String);
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

procedure TfrmClientes.Habilita_Tela(Habilita : Boolean);
  Begin
    edt_Codigo.Enabled := Habilita;
    edt_Nome.Enabled := Habilita;
    edt_Endereco.Enabled := Habilita;
    edt_CPF.Enabled := Habilita;
    edt_Telefone.Enabled := Habilita;
    edt_Celular.Enabled := Habilita;
    edt_Time.Enabled := Habilita;
    edt_Religiao.Enabled := Habilita;
    rdg_Sexo.Enabled := Habilita;
  End;

procedure TfrmClientes.Limpa_Tela;
  Begin
    edt_Codigo.Clear;
    edt_Nome.Clear;
    edt_Endereco.Clear;
    edt_CPF.Clear;
    edt_Telefone.Clear;
    edt_Celular.Clear;
    edt_Time.Clear;
    edt_Religiao.Clear;
    rdg_Sexo.ItemIndex := 0;
  End;

procedure TfrmClientes.btn_Sair1Click(Sender: TObject);
begin
    frmClientes.Close;
end;

procedure TfrmClientes.btn_CancelarClick(Sender: TObject);
begin
    Habilita_Botoes('10001');
    Habilita_Tela(False);
end;

procedure TfrmClientes.btn_EditarClick(Sender: TObject);
begin
    Habilita_Tela(True);
    Habilita_Botoes('01110');
end;

procedure TfrmClientes.btn_GravarClick(Sender: TObject);
begin
    if Validado
      then Begin
             Grava_Dados_Cliente(Coleta_Dados);
             Habilita_Tela(False);
             Habilita_Botoes('10001');
          End;
end;

procedure TfrmClientes.btn_LimparClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente limpar todos os campos? Tem Certeza?',
                            'Limpar todos os campos?',
                            MB_ICONQUESTION+MB_YESNO) = mrYes
   then Limpa_Tela;

end;

end.
