program Comercial;

uses
  Vcl.Forms,
  Unit_Empresa in 'Unit_Empresa.pas' {frmEmpresa},
  Unit_Persistencia in 'Unit_Persistencia.pas',
  Unit_Utils in 'Unit_Utils.pas',
  Unit_Principal in 'Unit_Principal.pas' {frmPrincipal},
  Unit_Clientes in 'Unit_Clientes.pas' {frmClientes},
  Unit_DM in 'Unit_DM.pas' {DM: TDataModule},
  Unit_Produtos in 'Unit_Produtos.pas' {frmProdutos},
  Unit_GrupoProd in 'Unit_GrupoProd.pas' {frmGrupoProd},
  Unit_SubGrupoProd in 'Unit_SubGrupoProd.pas' {frmSubGrupoProd};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
