 unit Unit_Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Unit_Persistencia;

type
  TfrmCaixa = class(TForm)
    Label1: TLabel;
    StringGrid_CaixaEntradas: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid_CaixaSaidas: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit_TotalEntrada: TEdit;
    Edit_TotalSaida: TEdit;
    Edi_total: TEdit;
    procedure FormShow(Sender: TObject);
    procedure carregaEntradas;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixa: TfrmCaixa;

implementation

{$R *.dfm}

procedure TfrmCaixa.FormShow(Sender: TObject);

begin
  StringGrid_CaixaEntradas.Cells[0, 0] := 'Data';
  StringGrid_CaixaEntradas.Cells[1, 0] := 'Valor';
  StringGrid_CaixaEntradas.ColWidths[0] := 100;
  StringGrid_CaixaEntradas.ColWidths[1] := 100;

  StringGrid_CaixaSaidas.Cells[0, 0] := 'Data';
  StringGrid_CaixaSaidas.Cells[1, 0] := 'Valor';
  StringGrid_CaixaSaidas.ColWidths[0] := 100;
  StringGrid_CaixaSaidas.ColWidths[1] := 100;

  carregaEntradas;
end;

procedure TfrmCaixa.carregaEntradas;
var
  entradas: Entradas_Caixa;
  I: Integer;
  totalEntrada: Real;
  data: Tdate;
begin
  data := date;
  totalEntrada := 0;
  SetLength(entradas, 0);
  entradas := Retorna_Entradas_Caixa(data);
  If Length(entradas) >= 1 Then
    StringGrid_CaixaEntradas.RowCount := Length(entradas) + 1
  Else
  Begin
    StringGrid_CaixaEntradas.RowCount := 2;
    StringGrid_CaixaEntradas.FixedRows := 1;
    StringGrid_CaixaEntradas.Cells[0, 1] := '';
    StringGrid_CaixaEntradas.Cells[1, 1] := '';
  End;
  for I := 0 to Length(entradas) - 1 do
  Begin
    StringGrid_CaixaEntradas.Cells[0, I + 1] := entradas[I].data;
    StringGrid_CaixaEntradas.Cells[1, I + 1] := FloatToStrf(entradas[I].Total,ffnumber,12,2);
    totalEntrada := totalEntrada + entradas[I].Total;
  end;
  Edit_TotalEntrada.Text := FloatToStrf(totalEntrada,ffnumber,12,2);
end;

end.
