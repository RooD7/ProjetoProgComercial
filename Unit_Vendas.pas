unit Unit_Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.ExtCtrls, Unit_Persistencia;

type
  TfrmVendas = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edt_CodVenda: TLabeledEdit;
    edt_DataVenda: TLabeledEdit;
    Panel3: TPanel;
    Panel1: TPanel;
    sgd_Produtos: TStringGrid;
    edt_CodProduto: TLabeledEdit;
    edt_DescProduto: TLabeledEdit;
    edt_PrecoProduto: TLabeledEdit;
    edt_Qtde: TLabeledEdit;
    btn_InserirProduto: TBitBtn;
    btn_RemoverProduto: TBitBtn;
    edt_Total: TLabeledEdit;
    Panel2: TPanel;
    btn_Editar: TBitBtn;
    btn_Limpar: TBitBtn;
    btn_Cancelar: TBitBtn;
    btn_Gravar: TBitBtn;
    btn_Sair1: TBitBtn;
    Label1: TLabel;
    RadioButton_Vista: TRadioButton;
    RadioButton_prazo: TRadioButton;
    Label2_Cliente: TLabel;
    Combox_Clientes: TComboBox;

    Procedure Totaliza_Compra;
    Procedure Pinta_Grid;
    Function Coleta_Produtos: Produtos_Venda;
    procedure Habilita_Tela(Habilita: Boolean);
    procedure Habilita_Botoes(Quais: String);
    procedure Limpa_Tela;

    procedure btn_EditarClick(Sender: TObject);
    procedure btn_LimparClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_Sair1Click(Sender: TObject);
    procedure edt_CodProdutoChange(Sender: TObject);
    procedure btn_InserirProdutoClick(Sender: TObject);
    procedure edt_CodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_QtdeKeyPress(Sender: TObject; var Key: Char);
    procedure btn_RemoverProdutoClick(Sender: TObject);
    procedure sgd_ProdutosSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RadioButton_prazoClick(Sender: TObject);
    procedure RadioButton_VistaClick(Sender: TObject);
    //procedure edt_QtdeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;
  Linha: Integer;

implementation



// Fun��es de Inicializa��o
function Bematech_FI_AlteraSimboloMoeda( SimboloMoeda: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaAliquota( Aliquota: AnsiString; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaDepartamento( Indice: Integer; Departamento: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaArredondamento: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaTruncamento: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento';
function Bematech_FI_LinhasEntreCupons( Linhas: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EspacoEntreLinhas( Dots: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ForcaImpactoAgulhas( ForcaImpacto: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es do Cupom Fiscal
function Bematech_FI_AbreCupom( CGC_CPF: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItem( Codigo: AnsiString; Descricao: AnsiString; Aliquota: AnsiString; TipoQuantidade: AnsiString; Quantidade: AnsiString; CasasDecimais: Integer; ValorUnitario: AnsiString; TipoDesconto: AnsiString; Desconto: AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItemDepartamento( Codigo: AnsiString; Descricao: AnsiString; Aliquota: AnsiString; ValorUnitario: AnsiString; Quantidade: AnsiString; Acrescimo: AnsiString; Desconto: AnsiString; IndiceDepartamento: AnsiString; UnidadeMedida: AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico( NumeroItem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido( FormaPagamento: AnsiString; Mensagem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupom( FormaPagamento: AnsiString; AcrescimoDesconto: AnsiString; TipoAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString; ValorPago: AnsiString; Mensagem: AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ResetaImpressora: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: AnsiString; TipoAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: AnsiString; ValorFormaPagamento: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoDescricaoForma( FormaPagamento: AnsiString; ValorFormaPagamento: AnsiString; DescricaoFormaPagto: AnsiString ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom( Mensagem: AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoFormasPagamento( FormaOrigem: AnsiString; FormaDestino: AnsiString; Valor: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaUnidadeMedida( UnidadeMedida: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AumentaDescricaoItem( Descricao: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es dos Relat�rios Fiscais
function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: AnsiString; Hora: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial( Texto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencialTEF( Texto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: AnsiString; DataFinal: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: AnsiString; ReducaoFinal: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: AnsiString; DataFinal: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: AnsiString; ReducaoFinal: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es das Opera��es N�o Fiscais
function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: AnsiString; Valor: AnsiString; FormaPagamento: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: AnsiString; Valor: AnsiString; NumeroCupom: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento( Valor: AnsiString; FormaPagamento: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es de Informa��es da Impressora
function Bematech_FI_NumeroSerie( NumeroSerie: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotal( SubTotal: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom( NumeroCupom: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraXSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmware( VersaoFirmware: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CGC_IE( CGC: AnsiString; IE: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotal( GrandeTotal: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Cancelamentos( ValorCancelamentos: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Descontos( ValorDescontos: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCuponsCancelados( NumeroCancelamentos: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroIntervencoes( NumeroIntervencoes: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroReducoes( NumeroReducoes: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSubstituicoesProprietario( NumeroSubstituicoes: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UltimoItemVendido( NumeroItem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ClicheProprietario( Cliche: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa( NumeroCaixa: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroLoja( NumeroLoja: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SimboloMoeda( SimboloMoeda: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosLigada( Minutos: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosImprimindo( Minutos: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaModoOperacao( Modo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEpromConectada( Flag: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorPagoUltimoCupom( ValorCupom: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora( Data: AnsiString; Hora: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscais( Contadores: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraReducao( Data: AnsiString; Hora: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimento( Data: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTruncamento( Flag: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Acrescimos( ValorAcrescimos: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorBilhetePassagem( ContadorPassagem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaAliquotasIss( Flag: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamento( Formas: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscal( Recebimentos: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaDepartamentos( Departamentos: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciais( Totalizadores: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas( Aliquotas: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducao( DadosReducao: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MonitoramentoPapel( Var Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaIndiceAliquotasIss( Flag: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorFormaPagamento( FormaPagamento: AnsiString; Valor: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorTotalizadorNaoFiscal( Totalizador: AnsiString; Valor: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es de Autentica��o e Gaveta de Dinheiro
function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao';
function Bematech_FI_ProgramaCaracterAutenticacao( Parametros: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta';
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es para a Impressora Restaurante
function Bematech_FIR_AbreCupomRestaurante( Mesa: AnsiString; CGC_CPF: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RegistraVenda( Mesa: AnsiString; Codigo: AnsiString; Descricao: AnsiString; Aliquota: AnsiString; Quantidade: AnsiString; ValorUnitario: AnsiString; FlagAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_CancelaVenda( Mesa: AnsiString; Codigo: AnsiString; Descricao: AnsiString; Aliquota: AnsiString; Quantidade: AnsiString; ValorUnitario: AnsiString; FlagAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_ConferenciaMesa( Mesa: AnsiString; FlagAcrescimoDesconto: AnsiString; TipoAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_AbreConferenciaMesa( Mesa: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_FechaConferenciaMesa( FlagAcrescimoDesconto: AnsiString; TipoAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_TransferenciaMesa( MesaOrigem: AnsiString; MesaDestino: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_ContaDividida( NumeroCupons: AnsiString; ValorPago: AnsiString; CGC_CPF: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomContaDividida( NumeroCupons: AnsiString; FlagAcrescimoDesconto: AnsiString; TipoAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString; FormasPagamento: AnsiString; ValorFormasPagamento: AnsiString; ValorPagoCliente: AnsiString; CGC_CPF: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_TransferenciaItem( MesaOrigem: AnsiString; Codigo: AnsiString; Descricao: AnsiString; Aliquota: AnsiString; Quantidade: AnsiString; ValorUnitario: AnsiString; FlagAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString; MesaDestino: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RelatorioMesasAbertas( TipoRelatorio: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_ImprimeCardapio: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RelatorioMesasAbertasSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_CardapioPelaSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RegistroVendaSerial( Mesa: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_VerificaMemoriaLivre( Bytes: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomRestaurante( FormaPagamento: AnsiString; FlagAcrescimoDesconto: AnsiString; TipoAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString; ValorFormaPagto: AnsiString; Mensagem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomResumidoRestaurante( FormaPagamento: AnsiString; Mensagem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��o para a Impressora Bilhete de Passagem
function Bematech_FI_AbreBilhetePassagem( ImprimeValorFinal: AnsiString; ImprimeEnfatizado: AnsiString; Embarque: AnsiString; Destino: AnsiString; Linha: AnsiString; Prefixo: AnsiString; Agente: AnsiString; Agencia: AnsiString; Data: AnsiString; Hora: AnsiString; Poltrona: AnsiString; Plataforma: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es de Impress�o de Cheques
function Bematech_FI_ProgramaMoedaSingular( MoedaSingular: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaMoedaPlural( MoedaPlural: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaImpressaoCheque: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeCheque( Banco: AnsiString; Valor: AnsiString; Favorecido: AnsiString; Cidade: AnsiString; Data: AnsiString; Mensagem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IncluiCidadeFavorecido( Cidade: AnsiString; Favorecido: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeCopiaCheque: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque';

// Outras Fun��es
function Bematech_FI_AbrePortaSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaPortaSerial: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial';
function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo';
function Bematech_FI_AberturaDoDia( ValorCompra: AnsiString; FormaPagamento: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_ImprimeDepartamentos: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
function Bematech_FI_ImpressaoCarne( Titulo, Percelas: AnsiString; Datas, Quantidade: integer; Texto, Cliente, RG_CPF, Cupom: AnsiString; Vias, Assina: integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InfoBalanca( Porta: AnsiString; Modelo: integer; Peso, PrecoKilo, Total: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosSintegra( DataInicio: AnsiString; DataFinal: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaModoTEF: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_IniciaModoTEF';
function Bematech_FI_FinalizaModoTEF: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FinalizaModoTEF';
function Bematech_FI_VersaoDll( Versao: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RegistrosTipo60: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RegistrosTipo60';

// Fun��es da Impressora Fiscal MFD
function Bematech_FI_AbreCupomMFD(CGC: AnsiString; Nome: AnsiString; Endereco : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupomMFD(CGC, Nome, Endereco: AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: AnsiString) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoMFD(FormaPagamento, ValorFormaPagamento, Parcelas, DescricaoFormaPagto: AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CupomAdicionalMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoItemMFD (Item, AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimoDesconto: AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioGerencialMFD (Indice, Descricao : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AutenticacaoMFD(Linhas, Texto : AnsiString) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculadoMFD(FormaPagamento, Valor, NumeroCupom, CGC, nome, Endereco : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReimpressaoNaoFiscalVinculadoMFD() : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaRecebimentoNaoFiscalMFD(IndiceTotalizador, ValorRecebimento : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoRecebimentoNaoFiscalMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRecebimentoNaoFiscalMFD(Mensagem : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRelatorioGerencialMFD(Indice : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioGerencialMFD(Texto : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioGerencialMFDTEF(Texto : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoNaoFiscalVinculadoMFD(CGC, Nome, Endereco : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMFD(NumeroSerie : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CNPJMFD(CNPJ : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoEstadualMFD(InscricaoEstadual : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoMunicipalMFD(InscricaoMunicipal : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoOperacionalMFD(TempoOperacional : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosEmitindoDocumentosFiscaisMFD(Minutos : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscaisMFD(Contadores : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscaisMFD(Totalizadores : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscalMFD(Recebimentos : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD (Relatorios : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorFitaDetalheMFD(ContadorFita : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMemoriaMFD(NumeroSerieMFD : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReducoesRestantesMFD(Reducoes : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciaisMFD(Totalizadores : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraChequeMFD(CodigoCMC7 : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeChequeMFD(NumeroBanco, Valor, Favorecido, Cidade, Data, Mensagem, ImpressaoVerso, Linhas : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : AnsiString): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreBilhetePassagemMFD(Embarque, Destino, Linha, Agencia, Data, Hora, Poltrona, Plataforma, TipoPassagem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoItemMFD( cFlag, cItem: AnsiString ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalLivreMFD( cMemoriaLivre: AnsiString ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TamanhoTotalMFD( cTamanhoMFD: AnsiString ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalRecebimentoMFD( cFlag, cTipo, cValor: AnsiString ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalMFD( cFlag, cTipo, cValor: AnsiString): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalMFD( cFlag: AnsiString): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalRecebimentoMFD( cFlag: AnsiString ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_PercentualLivreMFD( cMemoriaLivre: AnsiString ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraUltimoDocumentoMFD( cDataHora: AnsiString ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_RelatorioTipo60AnaliticoMFD: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60AnaliticoMFD';
function Bematech_FI_ValorFormaPagamentoMFD( FormaPagamento: AnsiString; Valor: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorTotalizadorNaoFiscalMFD( Totalizador: AnsiString; Valor: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupomMFD( AcrescimoDesconto: AnsiString; TipoAcrescimoDesconto: AnsiString; ValorAcrescimo: AnsiString; ValorDesconto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioSintegraMFD( iRelatorios : Integer;
                                           cArquivo    : AnsiString;
                                           cMes        : AnsiString;
                                           cAno        : AnsiString;
                                           cRazaoSocial: AnsiString;
                                           cEndereco   : AnsiString;
                                           cNumero     : AnsiString;
                                           cComplemento: AnsiString;
                                           cBairro     : AnsiString;
                                           cCidade     : AnsiString;
                                           cCEP        : AnsiString;
                                           cTelefone   : AnsiString;
                                           cFax        : AnsiString;
                                           cContato    : AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemNaoFiscalMFD( NumeroItem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoItemNaoFiscalMFD( NumeroItem: AnsiString; AcrescimoDesconto: AnsiString; TipoAcrescimoDesconto: AnsiString; ValorAcrescimoDesconto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoNaoFiscalMFD( NumeroItem: AnsiString; AcrescimoDesconto: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeClicheMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeClicheMFD';
function Bematech_FI_ImprimeInformacaoChequeMFD( Posicao: Integer; Linhas: Integer; Mensagem: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��o para Configura��o dos C�digos de Barras
function Bematech_FI_ConfiguraCodigoBarrasMFD( Altura: Integer; Largura: Integer; PosicaoCaracteres: Integer; Fonte: Integer; Margem: Integer): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es para Impress�o dos C�digos de Barras
function Bematech_FI_CodigoBarrasUPCAMFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasUPCEMFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasEAN13MFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasEAN8MFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasCODE39MFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasCODE93MFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasCODE128MFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasITFMFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasCODABARMFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasISBNMFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasMSIMFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasPLESSEYMFD( Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CodigoBarrasPDF417MFD( NivelCorrecaoErros: Integer; Altura: Integer; Largura: Integer; Colunas: Integer; Codigo: AnsiString ): Integer; StdCall; External 'BEMAFI32.DLL';



{$R *.dfm}

Procedure TfrmVendas.Totaliza_Compra;
Var
  I: Integer;
  Total: Real;
Begin
  Total := 0;
  Try
    for I := 1 to sgd_Produtos.RowCount - 1 do
      Total := Total + StrToFloat(sgd_Produtos.Cells[4, I]);
    edt_Total.Text := FloatToStrf(Total,ffnumber,12,2);
  Except
    edt_Total.Text := '0,00';
  End;
End;

Procedure TfrmVendas.Pinta_Grid;
Begin
  sgd_Produtos.Cells[0, 0] := 'C�d.';
  sgd_Produtos.Cells[1, 0] := 'Descri��o';
  sgd_Produtos.Cells[2, 0] := 'Pre�o';
  sgd_Produtos.Cells[3, 0] := 'Qtde';
  sgd_Produtos.Cells[4, 0] := 'Total';
  sgd_Produtos.ColWidths[0] := 60;
  sgd_Produtos.ColWidths[1] := 350;
  sgd_Produtos.ColWidths[2] := 120;
  sgd_Produtos.ColWidths[3] := 100;
  sgd_Produtos.ColWidths[4] := 100;
End;

procedure TfrmVendas.RadioButton_VistaClick(Sender: TObject);
begin
  Label2_Cliente.Visible := False;
  Combox_Clientes.Visible := False;
end;

procedure TfrmVendas.RadioButton_prazoClick(Sender: TObject);
var
  I: Integer;
  Clientes_Atuais: Clientes_Cadastrados;
  Campo, Termo: String;
begin
  Campo := '';
  Termo := '';
  Label2_Cliente.Visible := True;
  Combox_Clientes.Visible := True;
  SetLength(Clientes_Atuais, 0);
  Clientes_Atuais := Retorna_Clientes_Cadastrados(Campo, Termo, 'AZ');
  // Combox_Clientes.Item:=1;
  for I := 0 to Length(Clientes_Atuais) - 1 do
  Begin

    Combox_Clientes.Items.Add(Clientes_Atuais[I].Nome);

  End;

end;

procedure TfrmVendas.sgd_ProdutosSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  Linha := ARow;
end;

Function TfrmVendas.Coleta_Produtos: Produtos_Venda;
Var
  I: Integer;
Begin
  SetLength(Result, sgd_Produtos.RowCount - 1);
  for I := 1 to sgd_Produtos.RowCount - 1 do
  Begin
    Result[I - 1].Codigo := StrToInt(sgd_Produtos.Cells[0, I]);
    Result[I - 1].Preco_Venda := StrToFloat(sgd_Produtos.Cells[2, I]);
    Result[I - 1].Qtde := StrToFloat(sgd_Produtos.Cells[3, I]);
  End;
End;

procedure TfrmVendas.edt_CodProdutoChange(Sender: TObject);
Var
  Produto_Temp: Dados_Produto;
begin
  If edt_CodProduto.Text = '' Then
  Begin
    edt_DescProduto.Clear;
    edt_PrecoProduto.Clear;
    edt_Qtde.Clear;
    Exit;
  End;

  Produto_Temp := Retorna_Dados_Produto(StrToInt(edt_CodProduto.Text));
  if Produto_Temp.Codigo <> -1 then
  Begin
    edt_DescProduto.Text := Produto_Temp.Descricao;
    edt_PrecoProduto.Text := FloatToStrf(Produto_Temp.Preco_Venda,ffnumber,12,2);
  End
  Else
  Begin
    edt_DescProduto.Clear;
    edt_PrecoProduto.Clear;
  End;
end;

procedure TfrmVendas.edt_CodProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(13) then
    edt_Qtde.SetFocus;
end;

{procedure TfrmVendas.edt_QtdeChange(Sender: TObject);
var prod:Dados_Produto;
begin
    prod:=Retorna_Dados_Produto(strtoint(edt_CodProduto.Text));

    if strtofloat(edt_Qtde.Text)>prod.Estoque_Atual then
    begin
      edt_Qtde.Text:=floattostrf(prod.Estoque_Atual,ffnumber,12,2);
    end;

end; }

procedure TfrmVendas.edt_QtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(13) then
    btn_InserirProduto.Click;
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
  Linha := 1;
  Pinta_Grid;
  Label2_Cliente.Visible := False;
  Combox_Clientes.Visible := False;
end;

procedure TfrmVendas.Habilita_Tela(Habilita: Boolean);
Begin
  edt_CodVenda.Enabled := Habilita;
  edt_DataVenda.Enabled := Habilita;
  edt_CodProduto.Enabled := Habilita;
  edt_DescProduto.Enabled := Habilita;
  edt_PrecoProduto.Enabled := Habilita;
  edt_Qtde.Enabled := Habilita;
  sgd_Produtos.Enabled := Habilita;
  edt_Total.Enabled := Habilita;
  btn_InserirProduto.Enabled := Habilita;
  btn_RemoverProduto.Enabled := Habilita;
End;

procedure TfrmVendas.Limpa_Tela;
Begin
  edt_CodVenda.Clear;
  edt_DataVenda.Clear;
  edt_CodProduto.Clear;
  edt_DescProduto.Clear;
  edt_PrecoProduto.Clear;
  edt_Qtde.Clear;
  edt_Total.Clear;
End;

procedure TfrmVendas.Habilita_Botoes(Quais: String);
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
    btn_Sair1.Enabled := False
  Else
    btn_Sair1.Enabled := True;
End;

procedure TfrmVendas.btn_CancelarClick(Sender: TObject);
   var i,tam:integer;
begin

   tam:=sgd_Produtos.RowCount;
   //ShowMessage(inttostr(i));


   for I := 1 to tam do
   begin
           sgd_Produtos.Cells[0, I] := '';
           sgd_Produtos.Cells[1, I] := '';
           sgd_Produtos.Cells[2, I] := '';
           sgd_Produtos.Cells[3, I] := '';
           sgd_Produtos.Cells[4, I] := '';
   end;

  sgd_Produtos.RowCount := 2;
  Totaliza_Compra;

  Habilita_Tela(True);
  //Habilita_Botoes('01110');
  //edt_CodVenda.Text := Retorna_Proximo_Codigo_Venda;
  //edt_DataVenda.Text := DateToStr(Date);

  Habilita_Botoes('10001');
  Habilita_Tela(False);
  Limpa_Tela;
end;

procedure TfrmVendas.btn_EditarClick(Sender: TObject);
var i,tam:integer;
begin

   tam:=sgd_Produtos.RowCount;
   //ShowMessage(inttostr(i));


   for I := 1 to tam do
   begin
           sgd_Produtos.Cells[0, I] := '';
           sgd_Produtos.Cells[1, I] := '';
           sgd_Produtos.Cells[2, I] := '';
           sgd_Produtos.Cells[3, I] := '';
           sgd_Produtos.Cells[4, I] := '';
   end;

  sgd_Produtos.RowCount := 2;
  //Totaliza_Compra;

  Habilita_Tela(True);
  Habilita_Botoes('01110');
  edt_CodVenda.Text := Retorna_Proximo_Codigo_Venda;
  edt_DataVenda.Text := DateToStr(Date);
end;

procedure TfrmVendas.btn_GravarClick(Sender: TObject);
Var
  Prods: Produtos_Venda;
  CR_Cod: String;
  i:integer;
  p : Dados_Produto;
  aux: AnsiString;
  //vlrparcela : AnsiString;
  //teste : real;
  //Buffer: array[0..63] of Char;
  s : string;
  valor_pago:real;
  fp : integer;
  formapag : AnsiString;
  msg :  AnsiString;
  aux_s:string;
  aux_p:real;
  np: integer;
  cont : integer;
  j : integer;
  valorp : real;
  aux_cli:Dados_Cliente;

  teste:string;


  iRetorno: integer;
  iACK, iST1, iST2, iST3: integer;
  cCPF, cNome: string;
  iCasas: integer;
  cCodigo, cDescricao, cAliquota, cTipoQuantidade, cQTDE : string;
  cValorUnitario, cTipoDesconto, cDesconto: string;
  cNumeroItem, cDescAcresc, cTipo, cValor: string;
  cValorDesc, cValorAcre: string;
  cForma, cTEF: string;
  cParcelas, cDescForma: string;
  cMensagem: string;


Begin

     aux_p:=0;

     Prods := Coleta_Produtos;
     Grava_Dados_Venda(edt_CodVenda.Text,StrToDate(edt_DataVenda.Text),StrToFloat(edt_Total.Text),Prods);


  //vlrparcela := floattostr(formatfloat('#0.00',Prods[1].Preco_Venda));
  //teste:=FormatFloat('#,,0.00',Prods[0].Preco_Venda);
  //ShowMessage(floattostr(teste));

  //SetString(s, Buffer, FloatToText(Buffer, Prods[0].Preco_Venda, fvCurrency,  Format, 0, 2));
  //s:= FloatToStrf(Prods[0].Preco_Venda,ffnumber,12,2);
  //ShowMessage(s);




      if RadioButton_Vista.Checked then
        begin

        s:= InputBox('Gaveta Caixa', 'Valor Pago : ', '');
        //ShowMessage(s);
        valor_pago:=strtofloat(s);

        formapag:='A VISTA';
        msg:='Compra a vista';

          // ShowMessage('Venda a vista');
          Prods := Coleta_Produtos;
          Grava_Dados_Venda(edt_CodVenda.Text, StrToDate(edt_DataVenda.Text),
            StrToFloat(edt_Total.Text), Prods);
          CR_Cod := Retorna_Proximo_Codigo_ContReceber;
          //ShowMessage('Venda a vista' + CR_Cod);

          Grava_Dados_ContasReceber(CR_Cod, edt_CodVenda.Text, -1,
            StrToFloat(edt_Total.Text), 1, StrToDate(edt_DataVenda.Text),
            StrToDate(edt_DataVenda.Text), -1);

          //cupomfiscal

             // Abre o Cupom Fiscal
             cCPF := '1234567890';
             cNome := 'LOLA';
             iRetorno := Bematech_FI_AbreCupomMFD( pchar( cCPF ), pchar( cNome ), pchar( '' ) );
             iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

             for i := 0 to length(Prods)-1 do
             begin

             p := Retorna_Dados_Produto(Prods[i].Codigo);
             aux := p.Descricao;
             //aux_p := aux_p + p.Preco_Venda;


             p.Estoque_Atual:=p.Estoque_Atual - Prods[i].Qtde;
             Atualiza_Dados_Produto(p);
             //ShowMessage(aux);

             // Efetua a Venda do Item
             cCodigo := floattostr(Prods[i].Codigo);
             cDescricao := aux;
             cAliquota := 'II';
             cTipoQuantidade := 'I';
             cQTDE := FloatToStrf(Prods[i].Qtde,ffnumber,12,2);
             iCasas := 2;
             cValorUnitario := FloatToStrf(Prods[i].Preco_Venda,ffnumber,12,2);
             cTipoDesconto := '%';
             cDesconto := '00,00';
             iRetorno := Bematech_FI_VendeItem( pchar( cCodigo ), pchar( cDescricao ), pchar( cAliquota ),
                                                pchar( cTipoQuantidade ), pchar( cQTDE ), iCasas,
                                                pchar( cValorUnitario ), pchar( cTipoDesconto ), pchar( cDesconto ) );
             iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

             // D� Acr�scimo ou Desconto em Item posterior
             cNumeroItem := '001';
             cDescAcresc := 'A';
             cTipo := '$';
             cValor := '10,00';
             iRetorno := Bematech_FI_AcrescimoDescontoItemMFD( pchar( cNumeroItem ), pchar( cDescAcresc ), pchar( cTipo ), pchar( cValor ) );
             iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

             // Cancela Acr�scimo ou Desconto em Item Vendido Posterior
             cDescAcresc := 'A';
             cNumeroItem := '001';
             iRetorno := Bematech_FI_CancelaAcrescimoDescontoItemMFD( pchar( cDescAcresc ), pchar( cNumeroItem ) );
             iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

             end;

             // Inicia o Fechamento do Cupom Fiscal com Acr�scimo e/ou Desconto
             cDescAcresc := 'X';
             cTipo := '$';
             cValorDesc := '05,00';
             cValorAcre := '10,00';
             iRetorno := Bematech_FI_IniciaFechamentoCupomMFD( pchar( cDescAcresc ), pchar( cTipo ),
                                                               pchar( cValorAcre ), pchar( cValorDesc ) );
             iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

             // Programa a Forma de Pagamento
             cForma := formapag;
             cTEF := '0';
             iRetorno := Bematech_FI_ProgramaFormaPagamentoMFD( pchar( cForma ), pchar( cTEF ) );
             iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

             // Efetua Forma de Pagamento
             cValor := floattostrf(valor_pago,ffnumber,12,2);
             cParcelas := '3';
             cDescForma := msg;
             iRetorno := Bematech_FI_EfetuaFormaPagamentoMFD( pchar( cForma ), pchar( cValor ),
                                                              pchar( cParcelas ), pchar( cDescForma ) );
             //ShowMessage('ok');
             iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );
             //ShowMessage('okok');

             // Termina o Fechamento do Cupom Fiscal
             cMensagem := 'Obrigado, volte sempre !!!';
             //iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMensagem ) );
             //ShowMessage('okokkk');


             iRetorno := Bematech_FI_FechaCupomResumido( cForma, cMensagem);

             iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

        end;

        if RadioButton_prazo.Checked then
        begin

        s:= InputBox('Gaveta Caixa', 'Valor da entrada : ', '');
        np:= strtoint(InputBox('Gaveta Caixa', 'Numero de parcelas : ', ''));

        if np>6 then
        begin
           ShowMessage('� possivel parcelar em apenas at� 6 vezes');
           np:= strtoint(InputBox('Gaveta Caixa', 'Numero de parcelas : ', ''));
        end;

        //cont:=Retorna_Codigo_Cliente(Combox_Clientes.Text);
        //ShowMessage(inttostr(cont));

        //teste:=Retorna_Proximo_Codigo_ContReceber();

        //ShowMessage('oi');


        if ((strtofloat(s))= 0.00) then    //sem entrada
            begin
                  //cont := 1;
            end

        else                           // com entrada
            begin
                 //cont:=0;

                 Grava_Dados_ContasReceber(Retorna_Proximo_Codigo_ContReceber(), edt_CodVenda.Text, 0,
                  StrToFloat(s), 1, StrToDate(edt_DataVenda.Text),
                  StrToDate(edt_DataVenda.Text), Retorna_Codigo_Cliente(Combox_Clientes.Text));
            end;

        valorp := ((StrToFloat(edt_Total.Text)) - (strtofloat(s))) / np;


        for j := 1 to np do
        begin
             teste:=Retorna_Proximo_Codigo_ContReceber();

            Grava_Dados_ContasReceber(teste, edt_CodVenda.Text, j,
            valorp, 0, StrToDate(edt_DataVenda.Text),
            StrToDate(edt_DataVenda.Text), Retorna_Codigo_Cliente(Combox_Clientes.Text));

            arrumardata_parcelas(teste, j);

        end;




        //ShowMessage(s);
        //valor_pago:=strtofloat(s);

        formapag:='A PRAZO';
        msg:='Compra parcelada em '+ inttostr(np) + ' vezes de R$' + floattostrf(valorp,ffnumber,12,2)+' com entrada no valor de '+ s;


        //cupomfiscal

           // Abre o Cupom Fiscal
           cCPF := '1234567890';
           cNome := 'LOLA';
           iRetorno := Bematech_FI_AbreCupomMFD( pchar( cCPF ), pchar( cNome ), pchar( '' ) );
           iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

           for i := 0 to length(Prods)-1 do
           begin

           p := Retorna_Dados_Produto(Prods[i].Codigo);
           aux := p.Descricao;
           aux_p := aux_p + ((p.Preco_Venda)*(Prods[i].Qtde));


           p.Estoque_Atual:=p.Estoque_Atual - Prods[i].Qtde;
           Atualiza_Dados_Produto(p);
           //ShowMessage(aux);

           // Efetua a Venda do Item
           cCodigo := floattostr(Prods[i].Codigo);
           cDescricao := aux;
           cAliquota := 'II';
           cTipoQuantidade := 'I';
           cQTDE := FloatToStrf(Prods[i].Qtde,ffnumber,12,2);
           iCasas := 2;
           cValorUnitario := FloatToStrf(Prods[i].Preco_Venda,ffnumber,12,2);
           cTipoDesconto := '%';
           cDesconto := '00,00';
           iRetorno := Bematech_FI_VendeItem( pchar( cCodigo ), pchar( cDescricao ), pchar( cAliquota ),
                                              pchar( cTipoQuantidade ), pchar( cQTDE ), iCasas,
                                              pchar( cValorUnitario ), pchar( cTipoDesconto ), pchar( cDesconto ) );
           iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

           // D� Acr�scimo ou Desconto em Item posterior
           cNumeroItem := '001';
           cDescAcresc := 'A';
           cTipo := '$';
           cValor := '10,00';
           iRetorno := Bematech_FI_AcrescimoDescontoItemMFD( pchar( cNumeroItem ), pchar( cDescAcresc ), pchar( cTipo ), pchar( cValor ) );
           iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

           // Cancela Acr�scimo ou Desconto em Item Vendido Posterior
           cDescAcresc := 'A';
           cNumeroItem := '001';
           iRetorno := Bematech_FI_CancelaAcrescimoDescontoItemMFD( pchar( cDescAcresc ), pchar( cNumeroItem ) );
           iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

           end;

           valor_pago := aux_p;

           // Inicia o Fechamento do Cupom Fiscal com Acr�scimo e/ou Desconto
           cDescAcresc := 'X';
           cTipo := '$';
           cValorDesc := '05,00';
           cValorAcre := '10,00';
           iRetorno := Bematech_FI_IniciaFechamentoCupomMFD( pchar( cDescAcresc ), pchar( cTipo ),
                                                             pchar( cValorAcre ), pchar( cValorDesc ) );
           iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

           // Programa a Forma de Pagamento
           cForma := formapag;
           cTEF := '0';
           iRetorno := Bematech_FI_ProgramaFormaPagamentoMFD( pchar( cForma ), pchar( cTEF ) );
           iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

           //ShowMessage(floattostrf(valor_pago,ffnumber,12,2));

           // Efetua Forma de Pagamento
           cValor := floattostrf(valor_pago,ffnumber,12,2);
           cParcelas := inttostr(np);
           cDescForma := msg;
           iRetorno := Bematech_FI_EfetuaFormaPagamentoMFD( pchar( cForma ), pchar( cValor ),
                                                            pchar( cParcelas ), pchar( cDescForma ) );
           //ShowMessage('ok');
           iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );
           //ShowMessage('okok');

           // Termina o Fechamento do Cupom Fiscal
           cMensagem := 'Obrigado, volte sempre !!!';
           //iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMensagem ) );
           //ShowMessage('okokkk');


           iRetorno := Bematech_FI_FechaCupomResumido( cForma, cMensagem);

           iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 );

        end;




  Habilita_Tela(False);
  Habilita_Botoes('10001');
  Label2_Cliente.Visible := False;
  Combox_Clientes.Visible := False;
  Limpa_Tela;
End;

procedure TfrmVendas.btn_InserirProdutoClick(Sender: TObject);
Var
  Produto_Temp: Dados_Produto;
begin

  if edt_CodProduto.Text = '' then
  Begin
    Application.MessageBox('Informe o c�digo do produto antes de inserir',
      'Informe o c�digo', MB_ICONERROR + MB_OK);
    edt_CodProduto.SetFocus;
    Exit;
  End;
  if edt_Qtde.Text = '' then
  Begin
    Application.MessageBox('Informe a quantidade do produto antes de inserir',
      'Informe a quantidade', MB_ICONERROR + MB_OK);
    edt_Qtde.SetFocus;
    Exit;
  End;
  Produto_Temp := Retorna_Dados_Produto(StrToInt(edt_CodProduto.Text));
  if Produto_Temp.Codigo = -1 then
  Begin
    Application.MessageBox
      (PChar('N�o existe um produto cadastrado com o c�digo = ' +
      edt_CodProduto.Text), 'Produto n�o cadastrado', MB_ICONERROR + MB_OK);
    Exit;
  End;

    if strtofloat(edt_Qtde.Text)>Produto_Temp.Estoque_Atual then
    begin
      edt_Qtde.Text:=floattostrf(Produto_Temp.Estoque_Atual,ffnumber,12,2);
    end;

  if Not((sgd_Produtos.RowCount = 2) And (sgd_Produtos.Cells[0, 1] = '')) then
    sgd_Produtos.RowCount := sgd_Produtos.RowCount + 1;
  sgd_Produtos.Cells[0, sgd_Produtos.RowCount - 1] :=
    IntToStr(Produto_Temp.Codigo);
  sgd_Produtos.Cells[1, sgd_Produtos.RowCount - 1] := Produto_Temp.Descricao;
  sgd_Produtos.Cells[2, sgd_Produtos.RowCount - 1] := edt_PrecoProduto.Text;
  sgd_Produtos.Cells[3, sgd_Produtos.RowCount - 1] := edt_Qtde.Text;
  sgd_Produtos.Cells[4, sgd_Produtos.RowCount - 1] :=
  FloatToStrf((StrToFloat(edt_PrecoProduto.Text) * StrToFloat(edt_Qtde.Text)),ffnumber,12,2);

  Totaliza_Compra;

  edt_CodProduto.Clear;
  edt_DescProduto.Clear;
  edt_PrecoProduto.Clear;
  edt_Qtde.Clear;
  edt_CodProduto.SetFocus;
end;

procedure TfrmVendas.btn_LimparClick(Sender: TObject);
var i,tam:integer;
Begin

  {if Application.MessageBox
    ('Deseja realmente limpar todos os campos? Tem Certeza?',
    'Limpar todos os campos?', MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin   }



   tam:=sgd_Produtos.RowCount;
   //ShowMessage(inttostr(i));


   for I := 1 to tam do
   begin
           sgd_Produtos.Cells[0, I] := '';
           sgd_Produtos.Cells[1, I] := '';
           sgd_Produtos.Cells[2, I] := '';
           sgd_Produtos.Cells[3, I] := '';
           sgd_Produtos.Cells[4, I] := '';
   end;

  sgd_Produtos.RowCount := 2;
  Totaliza_Compra;

  Habilita_Tela(True);
  Habilita_Botoes('01110');
  //edt_CodVenda.Text := Retorna_Proximo_Codigo_Venda;
  //edt_DataVenda.Text := DateToStr(Date);
  //Limpa_Tela;


End;

procedure TfrmVendas.btn_RemoverProdutoClick(Sender: TObject);
Var
  I: Integer;
begin
  if sgd_Produtos.RowCount = 2 then
  Begin
    sgd_Produtos.Cells[0, 1] := '';
    sgd_Produtos.Cells[1, 1] := '';
    sgd_Produtos.Cells[2, 1] := '';
    sgd_Produtos.Cells[3, 1] := '';
    sgd_Produtos.Cells[4, 1] := '';
    Totaliza_Compra;
    Exit;
  End;
  for I := Linha to sgd_Produtos.RowCount Do
  Begin
    sgd_Produtos.Cells[0, I] := sgd_Produtos.Cells[0, I + 1];
    sgd_Produtos.Cells[1, I] := sgd_Produtos.Cells[1, I + 1];
    sgd_Produtos.Cells[2, I] := sgd_Produtos.Cells[2, I + 1];
    sgd_Produtos.Cells[3, I] := sgd_Produtos.Cells[3, I + 1];
    sgd_Produtos.Cells[4, I] := sgd_Produtos.Cells[4, I + 1];
  End;
  sgd_Produtos.RowCount := sgd_Produtos.RowCount - 1;
  Totaliza_Compra;

end;

procedure TfrmVendas.btn_Sair1Click(Sender: TObject);
begin
  frmVendas.Close;
end;

end.
