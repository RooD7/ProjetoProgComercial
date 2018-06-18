unit Unit_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBCustomDataSet, IBQuery,
  IBDatabase, IBTable;

type
  TDM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qryCliente: TIBQuery;
    qryCommit: TIBQuery;
    qryAux: TIBQuery;
    qryEmpresa: TIBQuery;
    qryProduto: TIBQuery;
    qryGrupoProd: TIBQuery;
    qrySubGrupoProd: TIBQuery;
    qryProd_Venda: TIBQuery;
    IBTableVenda: TIBTable;
    IBTableProduto: TIBTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

end.
