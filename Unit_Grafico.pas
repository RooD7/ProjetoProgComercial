unit Unit_Grafico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, Unit_DM;

type
  TfmGrafico = class(TForm)
    Chart1: TChart;
    LabelGrafico02: TLabel;
    LabelGrafico03: TLabel;
    LabelGrafico04: TLabel;
    LabelGrafico05: TLabel;
    LabelGrafico01: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Series2: TPieSeries;
    Series1: TPieSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTerminal: TfmGrafico;

implementation

{$R *.dfm}

procedure TfmGrafico.Button1Click(Sender: TObject);
Var x, y, min, max, k: real;
i, int, il: integer;
begin
x := 1;
Series1.Clear;
Series1.Add(2.5, 'a');
Series1.Add(2.5, 'b');
Series1.Add(2.5, 'c');

end;

end.
