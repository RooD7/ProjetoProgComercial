object frmAlteraPreco: TfrmAlteraPreco
  Left = 0
  Top = 0
  Caption = 'frmAlteraPreco'
  ClientHeight = 264
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 397
    Height = 200
    Align = alClient
    Caption = ' Altera'#231#227'o de pre'#231'os '
    TabOrder = 0
    object Label1: TLabel
      Left = 82
      Top = 40
      Width = 60
      Height = 24
      Caption = 'Grupo:'
    end
    object Label2: TLabel
      Left = 51
      Top = 88
      Width = 91
      Height = 24
      Caption = 'Subgrupo:'
    end
    object Label3: TLabel
      Left = 18
      Top = 136
      Width = 124
      Height = 24
      Caption = 'Porcentagem:'
    end
    object cbxGrupo: TComboBox
      Left = 146
      Top = 36
      Width = 232
      Height = 32
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbxGrupoChange
    end
    object cbxSubGrupo: TComboBox
      Left = 146
      Top = 83
      Width = 232
      Height = 32
      Style = csDropDownList
      TabOrder = 1
    end
    object SpinEdit1: TSpinEdit
      Left = 146
      Top = 131
      Width = 145
      Height = 34
      MaxValue = 1000
      MinValue = -1000
      TabOrder = 2
      Value = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 200
    Width = 397
    Height = 64
    Align = alBottom
    TabOrder = 1
    object btn_Gravar: TBitBtn
      Left = 136
      Top = 6
      Width = 120
      Height = 49
      Cancel = True
      Caption = '&Gravar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btn_GravarClick
    end
    object btn_Cancelar: TBitBtn
      Left = 10
      Top = 6
      Width = 120
      Height = 49
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btn_CancelarClick
    end
    object btn_Sair1: TBitBtn
      Left = 262
      Top = 6
      Width = 120
      Height = 49
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      TabOrder = 2
    end
  end
end
