unit Unit_Grafico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, Unit_DM,
  Vcl.ComCtrls, IBCustomDataSet, IBTable, Vcl.Mask, StrUtils,
  VCLTee.TeeDBCrossTab;

type
  TfrmGrafico = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Series2: TPieSeries;
    Series1: TPieSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button2: TButton;
    Label3: TLabel;
    DateTimePicker4: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    MaskEdit_Ini: TMaskEdit;
    MaskEdit_Fim: TMaskEdit;
    ComboBox3: TComboBox;
    DBCrossTabSource1: TDBCrossTabSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafico: TfrmGrafico;

implementation

{$R *.dfm}
uses Unit_Persistencia, Unit_Utils;

procedure TfrmGrafico.Button1Click(Sender: TObject);
Var x, y, min, max, k: real;
i, int, il: integer;
dataIni, dataFim: String;
begin
  x := 1;
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;
  Series5.Clear;

  Unit_DM.DM.IBTableVenda.Close;
  Unit_DM.DM.IBTableVenda.Filtered := False;
  Unit_DM.DM.IBTableVenda.Filter := 'Ven_data LIKE '+QuotedStr('%_05%');
  Unit_DM.DM.IBTableVenda.Filtered := True;
  Unit_DM.DM.IBTableVenda.Open;

  //Series1.Add(2.5, 'a');
  //Series1.Add(2.5, 'b');
  //Series1.Add(2.5, 'c');

  //dataIni := Unit_Utils.Transforma_Data(DateTimePicker1.Date);
  //dataFim := Unit_Utils.Transforma_Data(DateTimePicker2.Date);

  dataIni := MaskEdit_Ini.Text;
  dataFim := MaskEdit_Fim.Text;
  dataIni := AnsiReplaceStr(dataIni,'/','.');
  dataFim := AnsiReplaceStr(dataFim,'/','.');

  //Series1.AddY(Unit_DM.DM.IBTableVenda);
  //Series1.DataSource.InsertComponent(Unit_DM.DM.IBTableVenda.MasterSource.DataSet);

end;

procedure TfrmGrafico.Button2Click(Sender: TObject);
Var x, y, min, max, k: real;
int, il: integer;
data, produto : String;
begin
x := 1;

Series1.Clear;
Series2.Clear;
Series3.Clear;
Series4.Clear;
Series5.Clear;

Series2.Add(12.5, 'h');
Series2.Add(1.5, 'x');
Series2.Add(32.5, 'z');

//produto := ComboBox2.Items.Objects[ComboBox2.ItemIndex].ToString;
//data := Unit_Utils.Transforma_Data(DateTimePicker4.Date);

end;

procedure TfrmGrafico.FormCreate(Sender: TObject);
Var
  str: String;
begin

  ComboBox1.Parent := Self;
  //Visual options
  ComboBox1.DoubleBuffered := true;
  ComboBox1.AutoComplete := true;

  //Adding items to the combo box
  ComboBox1.AddItem('Vendas totais por m�s', nil);
  ComboBox1.AddItem('Vendas totais por produtos por m�s', nil);
  ComboBox1.AddItem('Vendas por dia', nil);
  ComboBox1.AddItem('Vendas por m�s', nil);
  //Setting the default value
  ComboBox1.ItemIndex := 0;


  ComboBox2.Parent := Self;
  //Visual options
  ComboBox2.DoubleBuffered := true;
  ComboBox2.AutoComplete := true;

  //Adding items to the combo box
  ComboBox2.AddItem('Vendas totais por m�s', nil);
  ComboBox2.AddItem('Vendas totais por produtos por m�s', nil);
  ComboBox2.AddItem('Vendas por dia', nil);
  ComboBox2.AddItem('Vendas por m�s', nil);

  ComboBox3.Parent := Self;
  //Visual options
  ComboBox3.DoubleBuffered := true;
  ComboBox3.AutoComplete := true;

  //Adding items to the combo box
  ComboBox3.AddItem('Janeiro', nil);
  ComboBox3.AddItem('Fevereiro', nil);
  ComboBox3.AddItem('Mar�o', nil);
  ComboBox3.AddItem('Abril', nil);
  ComboBox3.AddItem('Maio', nil);
  ComboBox3.AddItem('Junho', nil);
  ComboBox3.AddItem('Julho', nil);
  ComboBox3.AddItem('Agosto', nil);
  ComboBox3.AddItem('Setembro', nil);
  ComboBox3.AddItem('Outubro', nil);
  ComboBox3.AddItem('Novembro', nil);
  ComboBox3.AddItem('Dezembro', nil);
  //Setting the default value
  ComboBox3.ItemIndex := 0;

  Unit_DM.DM.IBTableProduto.Filtered := False;
  //Unit_DM.DM.IBTableProduto.Filter('');
  //Setting the default value
  ComboBox2.ItemIndex := 0;
end;

end.

