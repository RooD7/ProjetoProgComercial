unit Unit_Grafico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  VCLTee.TeeData, Unit_DM;

type
  TfmGrafico = class(TForm)
    ChDataVendaTotalMes: TChartDataSet;
    DBChartGrafico: TDBChart;
    Series1: TPieSeries;
    ChDataVendaTotalProd: TChartDataSet;
    ChDataVendaDia: TChartDataSet;
    ChDataVendaMes: TChartDataSet;
    ChDataVendaProdMes: TChartDataSet;
    Series2: TPieSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    ChDataVendaTotalMesSeries1Color: TIntegerField;
    ChDataVendaTotalMesSeries1X: TFloatField;
    ChDataVendaTotalMesSeries1Pie: TFloatField;
    ChDataVendaTotalMesSeries1Label: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ChDataVendaTotalMesSeries1XChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTerminal: TfmGrafico;

implementation

{$R *.dfm}

procedure TfmGrafico.ChDataVendaTotalMesSeries1XChange(Sender: TField);
begin
//Series1.AddPie()
end;

end.
