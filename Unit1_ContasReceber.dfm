object frm_contasReceber: Tfrm_contasReceber
  Left = 0
  Top = 0
  Caption = 'frm_contasReceber'
  ClientHeight = 348
  ClientWidth = 682
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
    Left = 16
    Top = 8
    Width = 143
    Height = 19
    Caption = 'Contas a Receber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 315
    Width = 120
    Height = 19
    Caption = 'Filtrar por cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object StringGrid: TStringGrid
    Left = 9
    Top = 48
    Width = 665
    Height = 261
    ColCount = 4
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnSelectCell = StringGridSelectCell
  end
  object edt_Pesquisa: TMaskEdit
    Left = 134
    Top = 317
    Width = 275
    Height = 21
    TabOrder = 1
    OnChange = edt_PesquisaChange
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 72
    object Editarcadastro1: TMenuItem
      Caption = 'Pagar nota'
      OnClick = Editarcadastro1Click
    end
  end
end