object frmCaixa: TfrmCaixa
  Left = 0
  Top = 0
  Caption = 'frmCaixa'
  ClientHeight = 456
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 169
    Height = 19
    Caption = 'Movimenta'#231#227'o Caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 55
    Width = 72
    Height = 19
    Caption = 'Entradas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 288
    Top = 55
    Width = 53
    Height = 19
    Caption = 'Sa'#237'das'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 65
    Top = 345
    Width = 49
    Height = 19
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 337
    Top = 343
    Width = 49
    Height = 19
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 144
    Top = 407
    Width = 122
    Height = 19
    Caption = 'Total no caixa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid_CaixaEntradas: TStringGrid
    Left = 24
    Top = 80
    Width = 193
    Height = 257
    ColCount = 2
    RowCount = 1
    FixedRows = 0
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object StringGrid_CaixaSaidas: TStringGrid
    Left = 288
    Top = 80
    Width = 201
    Height = 257
    ColCount = 2
    Enabled = False
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
  object Edit_TotalEntrada: TEdit
    Left = 120
    Top = 343
    Width = 97
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object Edit_TotalSaida: TEdit
    Left = 392
    Top = 343
    Width = 97
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object Edi_total: TEdit
    Left = 272
    Top = 405
    Width = 97
    Height = 21
    Enabled = False
    TabOrder = 4
  end
end
