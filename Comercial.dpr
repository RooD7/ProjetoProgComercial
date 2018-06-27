program Comercial;



{$R *.dres}

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
  Unit_SubGrupoProd in 'Unit_SubGrupoProd.pas' {frmSubGrupoProd},
  Unit_Altera_Preco in 'Unit_Altera_Preco.pas' {frmAlteraPreco},
  Unit_Vendas in 'Unit_Vendas.pas' {frmVendas},
  Unit_Fornecedor in 'Unit_Fornecedor.pas' {frmFornecedor},
  Unit_Caixa in 'Unit_Caixa.pas' {frmCaixa},
  Unit1_ContasReceber in 'Unit1_ContasReceber.pas' {frm_contasReceber},
  Unit_Relatorios in 'Unit_Relatorios.pas' {frmRelatorios},
  Unit_Grafico in 'Unit_Grafico.pas' {frmGrafico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmGrafico, frmGrafico);
  Application.Run;

end.
