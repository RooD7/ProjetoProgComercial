unit Unit_SubGrupoProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.ComCtrls, Unit_Persistencia, StrUtils, Unit_Utils,
  Vcl.Menus;

type
  TfrmSubGrupoProd = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    sgdSubGrupoProd: TStringGrid;
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
    cbxGrupo: TComboBox;
    Label3: TLabel;
    Procedure Carrega_Grupos_Cadastrados;
    procedure Popula_Grid;
    Procedure Pinta_Grid;
    procedure Atualiza_Combo_Grupo(Descricao:String);
    procedure Preenche_Componentes;
    Function Validado : Boolean;
    function Coleta_Dados : Dados_SubGrupoProd;
    procedure Habilita_Tela(Habilita : Boolean);
    procedure Habilita_Botoes(Quais : String);
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
    procedure sgdSubGrupoProdDblClick(Sender: TObject);
    procedure sgdSubGrupoProdSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbxCamposChange(Sender: TObject);
    procedure edt_PesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubGrupoProd: TfrmSubGrupoProd;
  Linha : Integer;
  Novo : Boolean;

implementation

{$R *.dfm}

Procedure TfrmSubGrupoProd.Carrega_Grupos_Cadastrados;
  Var
    GruposP_Atuais : GrupoProds_Cadastrados;
    I : Integer;
  Begin
    GruposP_Atuais := Retorna_GrupoProds_Cadastrados('','', 'AZ');
    cbxGrupo.Clear;
    for I := 0 to Length(GruposP_Atuais)-1 do
      cbxGrupo.Items.Add(GruposP_Atuais[i].Descricao);
    //
  End;

Procedure TfrmSubGrupoProd.Pinta_Grid;
  Begin
sgdSubGrupoProd.Cells[0,0] := 'Cód.';
sgdSubGrupoProd.Cells[1,0] := 'Descrição';
sgdSubGrupoProd.Cells[2,0] := 'Grupo';
sgdSubGrupoProd.ColWidths[0] := 60;
sgdSubGrupoProd.ColWidths[1] := 200;
sgdSubGrupoProd.ColWidths[2] := 200;
  End;

procedure TfrmSubGrupoProd.Popula_Grid;
  Var
    SubGruposP_Atuais : SubGrupoProds_Cadastrados;
    I : Integer;
    Campo, Termo : String;
  Begin
    If Trim(edt_Pesquisa.Text) = ''
      Then Begin
             Campo := '';
             Termo := '';
           End
      Else Begin
             Case cbxCampos.ItemIndex Of
               0 : Begin
                     Campo := 'Codigo';
                   End;
               1 : Begin
                     Campo := 'descricao';
                   End;
             End;//End do Case
             Termo := Trim(edt_Pesquisa.Text);
           End;
    SetLength(SubGruposP_Atuais,0);
    if Not(btnAZ.Enabled)
      then SubGruposP_Atuais := Retorna_SubGrupoProds_Cadastrados(Campo, Termo, 'AZ');
    if Not(btnZA.Enabled)
      then SubGruposP_Atuais := Retorna_SubGrupoProds_Cadastrados(Campo, Termo, 'ZA');
    if Not(btn09.Enabled)
      then SubGruposP_Atuais := Retorna_SubGrupoProds_Cadastrados(Campo, Termo, '09');
    if Not(btn90.Enabled)
      then SubGruposP_Atuais := Retorna_SubGrupoProds_Cadastrados(Campo, Termo, '90');
    If Length(SubGruposP_Atuais) >= 1
      Then sgdSubGrupoProd.RowCount := Length(SubGruposP_Atuais)+1
      Else Begin
             sgdSubGrupoProd.RowCount := 2;
             sgdSubGrupoProd.FixedRows := 1;
             sgdSubGrupoProd.Cells[0,1] := '';
             sgdSubGrupoProd.Cells[1,1] := '';
             sgdSubGrupoProd.Cells[2,1] := '';
           End;
    lblQtde.Caption := IntToStr(Length(SubGruposP_Atuais))+ ' subgrupos de produtos cadastrados';
    for I := 0 to Length(SubGruposP_Atuais)-1 do
      Begin
sgdSubGrupoProd.Cells[0,I+1] := IntToStr(SubGruposP_Atuais[I].Codigo);
sgdSubGrupoProd.Cells[1,I+1] := SubGruposP_Atuais[I].Descricao;
sgdSubGrupoProd.Cells[2,I+1] := Retorna_Dados_GrupoProd(SubGruposP_Atuais[I].Cod_Grupo).Descricao;
      End;//end do FOR
  End;//end da subrotina

function TfrmSubGrupoProd.Coleta_Dados : Dados_SubGrupoProd;
  Begin
Result.Codigo := StrToInt(edt_Codigo.Text);
Result.Descricao := edt_Descricao.Text;
Result.Cod_Grupo := Retorna_Codigo_Grupo(cbxGrupo.Text);
  End;

procedure TfrmSubGrupoProd.Atualiza_Combo_Grupo(Descricao:String);
  Var
    I : Integer;
  Begin
    for I := 0 to cbxGrupo.Items.Count do
      if cbxGrupo.Items[I] = Descricao
        then Begin
               cbxGrupo.ItemIndex := I;
               Break;
             End;
  End;

procedure TfrmSubGrupoProd.Preenche_Componentes;
  Var
    Temp : Dados_SubGrupoProd;
  Begin
    Temp := Retorna_Dados_SubGrupoProd(StrToInt(sgdSubGrupoProd.Cells[0,Linha]));
    edt_Codigo.Text := IntToStr(Temp.Codigo);
    edt_Descricao.Text := Temp.Descricao;
    PageControl1.ActivePageIndex := 1;
    Habilita_Tela(True);
    Atualiza_Combo_Grupo(Retorna_Dados_GrupoProd(Temp.Cod_Grupo).Descricao);
    Habilita_Botoes('01110');
    Novo := False;
  End;

Function TfrmSubGrupoProd.Validado : Boolean;
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
    Result := True;
  End;

procedure TfrmSubGrupoProd.sgdSubGrupoProdDblClick(Sender: TObject);
begin
  Preenche_Componentes;
end;

procedure TfrmSubGrupoProd.sgdSubGrupoProdSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  Linha := ARow;
end;


procedure TfrmSubGrupoProd.edt_PesquisaChange(Sender: TObject);
  Const
    Numeros = ['0'..'9'];
  Var
    I : Integer;
  Begin
    //se campo = codigo, verifico se só digitou numeros
    If cbxCampos.ItemIndex = 0
      Then Begin
             for I := 1 to Length(edt_Pesquisa.Text) do
               Begin
                 If Not(edt_Pesquisa.Text[I] In Numeros)
                   Then Begin
                          Application.MessageBox('Ao pesquisar por código só é permitido digitar números!','Informe apenas números',MB_ICONERROR + MB_OK);
                          edt_Pesquisa.Clear;
                        End;
               End;
           End;
    Popula_Grid;
  End;

procedure TfrmSubGrupoProd.FormShow(Sender: TObject);
  begin
    PageControl1.ActivePageIndex := 0;
    Pinta_Grid;
    Popula_Grid;
  end;

procedure TfrmSubGrupoProd.Habilita_Botoes(Quais : String);
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

procedure TfrmSubGrupoProd.Habilita_Tela(Habilita : Boolean);
  Begin
    edt_Codigo.Enabled := Habilita;
    edt_Descricao.Enabled := Habilita;
    cbxGrupo.Enabled := Habilita;
    Label3.Enabled := Habilita;
    Carrega_Grupos_Cadastrados;
  End;

procedure TfrmSubGrupoProd.Limpa_Tela;
  Begin
    edt_Codigo.Clear;
    edt_Descricao.Clear;
    cbxGrupo.ItemIndex := -1;
  End;

procedure TfrmSubGrupoProd.btn_Sair1Click(Sender: TObject);
begin
    frmSubGrupoProd.Close;
end;

procedure TfrmSubGrupoProd.cbxCamposChange(Sender: TObject);
begin
  edt_Pesquisa.Clear;
end;

procedure TfrmSubGrupoProd.btn09Click(Sender: TObject);
begin
    btnAZ.Enabled := True;
    btnZA.Enabled := True;
    btn09.Enabled := False;
    btn90.Enabled := True;
    Popula_Grid;
end;

procedure TfrmSubGrupoProd.btn90Click(Sender: TObject);
begin
    btnAZ.Enabled := True;
    btnZA.Enabled := True;
    btn09.Enabled := True;
    btn90.Enabled := False;
    Popula_Grid;
end;

procedure TfrmSubGrupoProd.btnAZClick(Sender: TObject);
begin
    btnAZ.Enabled := False;
    btnZA.Enabled := True;
    btn09.Enabled := True;
    btn90.Enabled := True;
    Popula_Grid;
end;

procedure TfrmSubGrupoProd.btnZAClick(Sender: TObject);
begin
    btnAZ.Enabled := True;
    btnZA.Enabled := False;
    btn09.Enabled := True;
    btn90.Enabled := True;
    Popula_Grid;
end;

procedure TfrmSubGrupoProd.btn_CancelarClick(Sender: TObject);
begin
    Habilita_Botoes('10001');
    Habilita_Tela(False);
    Limpa_Tela;
end;

procedure TfrmSubGrupoProd.btn_EditarClick(Sender: TObject);
begin
    Novo := True;
    Habilita_Tela(True);
    Habilita_Botoes('01110');
    edt_Codigo.Text := Retorna_Proximo_Codigo_SubGrupoProd;
end;

procedure TfrmSubGrupoProd.btn_GravarClick(Sender: TObject);
Begin
    If Validado
      Then Begin
             If Novo
               Then Grava_Dados_SubGrupoProd(Coleta_Dados)
               Else Atualiza_Dados_SubGrupoProd(Coleta_Dados);
             Habilita_Tela(False);
             Habilita_Botoes('10001');
             Popula_Grid;
          End;
End;

procedure TfrmSubGrupoProd.btn_LimparClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente limpar todos os campos? Tem Certeza?',
                            'Limpar todos os campos?',
                            MB_ICONQUESTION+MB_YESNO) = mrYes
   then Limpa_Tela;

end;

end.
