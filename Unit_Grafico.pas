unit Unit_Grafico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, Unit_DM,
  Vcl.ComCtrls;

type
  TfrmGrafico = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Series2: TPieSeries;
    Series1: TPieSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button2: TButton;
    Label3: TLabel;
    DateTimePicker4: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Preenche_ComboBox();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafico: TfrmGrafico;

implementation

{$R *.dfm}
uses Unit_Persistencia;

procedure TfrmGrafico.Button1Click(Sender: TObject);
Var x, y, min, max, k: real;
i, int, il: integer;
begin
Preenche_ComboBox();
x := 1;
Series1.Clear;
Series1.Add(2.5, 'a');
Series1.Add(2.5, 'b');
Series1.Add(2.5, 'c');

end;

procedure TfrmGrafico.Button2Click(Sender: TObject);
Var x, y, min, max, k: real;
i, int, il: integer;
begin
x := 1;
Series1.Clear;
Series1.Add(12.5, 'h');
Series1.Add(1.5, 'x');
Series1.Add(32.5, 'z');

end;

procedure Preenche_ComboBox();
Var
  Produtos_Atuais: Produtos_Cadastrados;
  i: integer;
begin
  Produtos_Atuais:= Retorna_Produtos_Cadastrados2('descricao', 'AZ');
  for i := 1 to Length(Produtos_Atuais) do
  begin
    frmGrafico.ComboBox2.AddItem(Retorna_Dados_Produto(i).Descricao, String);
  end;
end;
end.

