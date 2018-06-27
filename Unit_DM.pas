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
    qryFornecedor: TIBQuery;
    qryContasReceber: TIBQuery;
    IBTCliente: TIBTable;
    IBTProduto: TIBTable;
    IBTClienteCLI_CODIGO: TIntegerField;
    IBTClienteCLI_NOME: TIBStringField;
    IBTClienteCLI_ENDERECO: TIBStringField;
    IBTClienteCLI_CPF: TIBStringField;
    IBTClienteCLI_TELEFONE: TIBStringField;
    IBTClienteCLI_CELULAR: TIBStringField;
    IBTClienteCLI_TIME: TIBStringField;
    IBTClienteCLI_RELIGIAO: TIBStringField;
    IBTClienteCLI_SEXO: TIntegerField;
    IBTClienteCLI_EMAIL: TIBStringField;
    IBTClienteCLI_ESTCIVIL: TIntegerField;
    IBTClienteCLI_DATANASC: TDateField;
    IBTVenda: TIBTable;
    IBTVendaVEN_CODIGO: TIntegerField;
    IBTVendaVEN_DATA: TDateField;
    IBTVendaVEN_TOTAL: TFloatField;
    IBTContasReceber: TIBTable;
    IBTContasReceberCONTREC_COD: TIntegerField;
    IBTContasReceberCONTREC_NPARC: TIntegerField;
    IBTContasReceberCONTRECVEN_COD: TIntegerField;
    IBTContasReceberCONTREC_VALOR: TFloatField;
    IBTContasReceberCONTREC_STATUS: TIntegerField;
    IBTContasReceberCONTREC_DATAVENC: TDateField;
    IBTContasReceberCONTREC_DATAPAG: TDateField;
    IBTContasReceberCONTREC_CODCLIENTE: TIntegerField;
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
