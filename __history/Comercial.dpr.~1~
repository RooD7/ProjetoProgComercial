program Comercial;

uses
  Vcl.Forms,
  Unit_Empresa in 'Unit_Empresa.pas' {frmEmpresa},
  Unit_Persistencia in 'Unit_Persistencia.pas',
  Unit_Utils in 'Unit_Utils.pas',
  Unit_Principal in 'Unit_Principal.pas' {frmPrincipal},
  Unit_Clientes in 'Unit_Clientes.pas' {frmClientes},
  Unit_Produtos in 'Unit_Produtos.pas' {frmProdutos},
  Unit_DM in 'Unit_DM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
