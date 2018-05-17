unit Unit_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit_Utils,
  Vcl.Buttons;

type
  TfrmFornecedor = class(TForm)
    Inscri��o: TBitBtn;
    edt_InscrEstadual: TLabeledEdit;
    edt_ResultInscrEstadual: TLabeledEdit;
    procedure Inscri��oClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedor: TfrmFornecedor;

implementation
{Inscricao( Inscricao, Tipo : String )
  Mascara_Inscricao( Inscricao, Estado : String )
}
{$R *.dfm}

procedure TfrmFornecedor.Inscri��oClick(Sender: TObject);
begin
  if Inscricao('645268870110','SP') then
  begin
       edt_ResultInscrEstadual.Text := 'SIM';
  end
  else
  begin
      edt_ResultInscrEstadual.Text := 'NAO';
  end;
end;

end.