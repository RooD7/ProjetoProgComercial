unit Unit_GrupoProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.ComCtrls, Unit_Persistencia, StrUtils,
  Unit_Utils,
  Vcl.Menus;

type
  TfrmGrupoProd = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    sgdGrupoProd: TStringGrid;
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
    Panel3: TPanel;
    btnAZ: TBitBtn;
    btnZA: TBitBtn;
    btn09: TBitBtn;
    btn90: TBitBtn;
    PopupMenu1: TPopupMenu;
    Editarcadastro1: TMenuItem;
    edt_Codigo: TLabeledEdit;
    edt_Descricao: TLabeledEdit;
    procedure Popula_Grid;
    Procedure Pinta_Grid;
    procedure Preenche_Componentes;
    Function Validado: Boolean;
    function Coleta_Dados: Dados_GrupoProd;
    procedure Habilita_Tela(Habilita: Boolean);
    procedure Habilita_Botoes(Quais: String);
    procedure Limpa_Tela;
    procedure btn_EditarClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_LimparClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_Sair1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAZClick(Sender: TObject);
    procedure btnZAClick(Sender: TObject);
    procedure btn09Click(Sender: TObject);
    procedure btn90Click(Sender: TObject);
    procedure sgdGrupoProdDblClick(Sender: TObject);
    procedure sgdGrupoProdSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbxCamposChange(Sender: TObject);
    procedure edt_PesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupoProd: TfrmGrupoProd;
  Linha: Integer;
  Novo: Boolean;

implementation

{$R *.dfm}

Procedure TfrmGrupoProd.Pinta_Grid;
Begin
  sgdGrupoProd.Cells[0, 0] := 'C�d.';
  sgdGrupoProd.Cells[1, 0] := 'Descri��o';
  sgdGrupoProd.ColWidths[0] := 60;
  sgdGrupoProd.ColWidths[1] := 100;
End;

procedure TfrmGrupoProd.Popula_Grid;
Var
  GruposP_Atuais: GrupoProds_Cadastrados;
  I: Integer;
  Campo, Termo: String;
Begin
  If Trim(edt_Pesquisa.Text) = '' Then
  Begin
    Campo := '';
    Termo := '';
  End
  Else
  Begin
    Case cbxCampos.ItemIndex Of
      0:
        Begin
          Campo := 'Codigo';
        End;
      1:
        Begin
          Campo := 'descricao';
        End;
    End; // End do Case
    Termo := Trim(edt_Pesquisa.Text);
  End;
  SetLength(GruposP_Atuais, 0);
  if Not(btnAZ.Enabled) then
    GruposP_Atuais := Retorna_GrupoProds_Cadastrados(Campo, Termo, 'AZ');
  if Not(btnZA.Enabled) then
    GruposP_Atuais := Retorna_GrupoProds_Cadastrados(Campo, Termo, 'ZA');
  if Not(btn09.Enabled) then
    GruposP_Atuais := Retorna_GrupoProds_Cadastrados(Campo, Termo, '09');
  if Not(btn90.Enabled) then
    GruposP_Atuais := Retorna_GrupoProds_Cadastrados(Campo, Termo, '90');
  If Length(GruposP_Atuais) >= 1 Then
    sgdGrupoProd.RowCount := Length(GruposP_Atuais) + 1
  Else
  Begin
    sgdGrupoProd.RowCount := 2;
    sgdGrupoProd.FixedRows := 1;
    sgdGrupoProd.Cells[0, 1] := '';
    sgdGrupoProd.Cells[1, 1] := '';
  End;
  lblQtde.Caption := IntToStr(Length(GruposP_Atuais)) +
    ' grupos de produtos cadastrados';
  for I := 0 to Length(GruposP_Atuais) - 1 do
  Begin
    sgdGrupoProd.Cells[0, I + 1] := IntToStr(GruposP_Atuais[I].Codigo);
    sgdGrupoProd.Cells[1, I + 1] := GruposP_Atuais[I].Descricao;
  End; // end do FOR
End; // end da subrotina

function TfrmGrupoProd.Coleta_Dados: Dados_GrupoProd;
Begin
  Result.Codigo := StrToInt(edt_Codigo.Text);
  Result.Descricao := edt_Descricao.Text;
End;

procedure TfrmGrupoProd.Preenche_Componentes;
Var
  Temp: Dados_GrupoProd;
Begin
  Temp := Retorna_Dados_GrupoProd(StrToInt(sgdGrupoProd.Cells[0, Linha]));
  edt_Codigo.Text := IntToStr(Temp.Codigo);
  edt_Descricao.Text := Temp.Descricao;
  PageControl1.ActivePageIndex := 1;
  Habilita_Tela(True);
  Habilita_Botoes('01110');
  Novo := False;
End;

Function TfrmGrupoProd.Validado: Boolean;
Begin
  if Trim(edt_Descricao.Text) = '' Then
  Begin
    Application.MessageBox('O campo de descri��o � obrigat�rio',
      'Informe a descri��o', MB_ICONERROR + MB_OK);
    Result := False;
    PageControl1.ActivePageIndex := 1;
    edt_Descricao.SetFocus;
    Exit;
  End;
  Result := True;
End;

procedure TfrmGrupoProd.sgdGrupoProdDblClick(Sender: TObject);
begin
  Preenche_Componentes;
end;

procedure TfrmGrupoProd.sgdGrupoProdSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  Linha := ARow;
end;

procedure TfrmGrupoProd.edt_PesquisaChange(Sender: TObject);
Const
  Numeros = ['0' .. '9'];
Var
  I: Integer;
Begin
  // se campo = codigo, verifico se s� digitou numeros
  If cbxCampos.ItemIndex = 0 Then
  Begin
    for I := 1 to Length(edt_Pesquisa.Text) do
    Begin
      If Not(edt_Pesquisa.Text[I] In Numeros) Then
      Begin
        Application.MessageBox
          ('Ao pesquisar por c�digo s� � permitido digitar n�meros!',
          'Informe apenas n�meros', MB_ICONERROR + MB_OK);
        edt_Pesquisa.Clear;
      End;
    End;
  End;
  Popula_Grid;
End;

procedure TfrmGrupoProd.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Pinta_Grid;
  Popula_Grid;
end;

procedure TfrmGrupoProd.Habilita_Botoes(Quais: String);
Begin
  if Quais[1] = '0' then
    btn_Editar.Enabled := False
  Else
    btn_Editar.Enabled := True;
  if Quais[2] = '0' then
    btn_Limpar.Enabled := False
  Else
    btn_Limpar.Enabled := True;
  if Quais[3] = '0' then
    btn_Cancelar.Enabled := False
  Else
    btn_Cancelar.Enabled := True;
  if Quais[4] = '0' then
    btn_Gravar.Enabled := False
  Else
    btn_Gravar.Enabled := True;
  if Quais[5] = '0' then
    btn_Sair.Enabled := False
  Else
    btn_Sair.Enabled := True;
End;

procedure TfrmGrupoProd.Habilita_Tela(Habilita: Boolean);
Begin
  edt_Codigo.Enabled := Habilita;
  edt_Descricao.Enabled := Habilita;
End;

procedure TfrmGrupoProd.Limpa_Tela;
Begin
  edt_Codigo.Clear;
  edt_Descricao.Clear;
End;

procedure TfrmGrupoProd.btn_Sair1Click(Sender: TObject);
begin
  frmGrupoProd.Close;
end;

procedure TfrmGrupoProd.cbxCamposChange(Sender: TObject);
begin
  edt_Pesquisa.Clear;
end;

procedure TfrmGrupoProd.btn09Click(Sender: TObject);
begin
  btnAZ.Enabled := True;
  btnZA.Enabled := True;
  btn09.Enabled := False;
  btn90.Enabled := True;
  Popula_Grid;
end;

procedure TfrmGrupoProd.btn90Click(Sender: TObject);
begin
  btnAZ.Enabled := True;
  btnZA.Enabled := True;
  btn09.Enabled := True;
  btn90.Enabled := False;
  Popula_Grid;
end;

procedure TfrmGrupoProd.btnAZClick(Sender: TObject);
begin
  btnAZ.Enabled := False;
  btnZA.Enabled := True;
  btn09.Enabled := True;
  btn90.Enabled := True;
  Popula_Grid;
end;

procedure TfrmGrupoProd.btnZAClick(Sender: TObject);
begin
  btnAZ.Enabled := True;
  btnZA.Enabled := False;
  btn09.Enabled := True;
  btn90.Enabled := True;
  Popula_Grid;
end;

procedure TfrmGrupoProd.btn_CancelarClick(Sender: TObject);
begin
  Habilita_Botoes('10001');
  Habilita_Tela(False);
  Limpa_Tela;
end;

procedure TfrmGrupoProd.btn_EditarClick(Sender: TObject);
begin
  Novo := True;
  Habilita_Tela(True);
  Habilita_Botoes('01110');
  edt_Codigo.Text := Retorna_Proximo_Codigo_GrupoProd;
end;

procedure TfrmGrupoProd.btn_GravarClick(Sender: TObject);
Begin
  If Validado Then
  Begin
    If Novo Then
      Grava_Dados_GrupoProd(Coleta_Dados)
    Else
      Atualiza_Dados_GrupoProd(Coleta_Dados);
    Habilita_Tela(False);
    Habilita_Botoes('10001');
    Popula_Grid;
  End;
End;

procedure TfrmGrupoProd.btn_LimparClick(Sender: TObject);
begin
  if Application.MessageBox
    ('Deseja realmente limpar todos os campos? Tem Certeza?',
    'Limpar todos os campos?', MB_ICONQUESTION + MB_YESNO) = mrYes then
    Limpa_Tela;

end;

end.