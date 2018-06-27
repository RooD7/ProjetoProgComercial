unit Unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Unit_Empresa, Unit_Caixa,
  Vcl.ImgList, Unit1_ContasReceber, unit_relatorios, unit_grafico;

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
    GruposdeProdutos1: TMenuItem;
    N4: TMenuItem;
    SubGrupodeProdutos1: TMenuItem;
    Manuteno1: TMenuItem;
    Alteraodepreos1: TMenuItem;
    Movimentos1: TMenuItem;
    Venda1: TMenuItem;
    N5: TMenuItem;
    Fornecedor1: TMenuItem;
    Caixa1: TMenuItem;
    Contasareceber1: TMenuItem;
    N6: TMenuItem;
    Contasareceber2: TMenuItem;
    N7: TMenuItem;
    Grficos1: TMenuItem;
    procedure Empresa1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure GruposdeProdutos1Click(Sender: TObject);
    procedure SubGrupodeProdutos1Click(Sender: TObject);
    procedure Alteraodepreos1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Contasareceber1Click(Sender: TObject);
    procedure Contasareceber2Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure Grficos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Unit_Clientes, Unit_Produtos, Unit_GrupoProd, Unit_SubGrupoProd,
  Unit_Altera_Preco, Unit_Vendas, Unit_Fornecedor;

procedure TfrmPrincipal.Alteraodepreos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAlteraPreco, frmAlteraPreco);
  frmAlteraPreco.ShowModal;
  frmAlteraPreco.Destroy;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmClientes, frmClientes);
  frmClientes.ShowModal;
  frmClientes.Destroy;
end;

procedure TfrmPrincipal.Contasareceber1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCaixa, frmCaixa);
  frmCaixa.ShowModal;
  frmCaixa.Destroy;
end;

procedure TfrmPrincipal.Contasareceber2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_contasReceber, frm_contasReceber);
  frm_contasReceber.ShowModal;
  frm_contasReceber.Destroy;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmEmpresa, frmEmpresa);
  frmEmpresa.ShowModal;
  frmEmpresa.Destroy;
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmFornecedor, frmFornecedor);
  frmFornecedor.ShowModal;
  frmFornecedor.Destroy;
end;

procedure TfrmPrincipal.Grficos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmGrafico, frmGrafico);
  frmGrafico.ShowModal;
  frmGrafico.Destroy;
end;

procedure TfrmPrincipal.GruposdeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmGrupoProd, frmGrupoProd);
  frmGrupoProd.ShowModal;
  frmGrupoProd.Destroy;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmProdutos, frmProdutos);
  frmProdutos.ShowModal;
  frmProdutos.Destroy;
end;

procedure TfrmPrincipal.Relatrios1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  frmRelatorios.ShowModal;
  frmRelatorios.Destroy;
end;

procedure TfrmPrincipal.SubGrupodeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmSubGrupoProd, frmSubGrupoProd);
  frmSubGrupoProd.ShowModal;
  frmSubGrupoProd.Destroy;
end;

procedure TfrmPrincipal.Venda1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmVendas, frmVendas);
  frmVendas.ShowModal;
  frmVendas.Destroy;
end;

end.
