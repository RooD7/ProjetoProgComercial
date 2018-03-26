unit Unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Unit_Empresa, Vcl.ImgList;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Empresa1: TMenuItem;
    N1: TMenuItem;
    ImageList1: TImageList;
    Clientes1: TMenuItem;
    N2: TMenuItem;
    Produtos1: TMenuItem;
    N3: TMenuItem;
    procedure Empresa1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Unit_Clientes, Unit_Produtos;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmClientes,frmClientes);
  frmClientes.ShowModal;
  frmClientes.Destroy;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmEmpresa,frmEmpresa);
  frmEmpresa.ShowModal;
  frmEmpresa.Destroy;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmProdutos,frmProdutos);
  frmProdutos.ShowModal;
  frmProdutos.Destroy;
end;

end.



