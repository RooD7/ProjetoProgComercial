object frmEmpresa: TfrmEmpresa
  Left = 0
  Top = 0
  Caption = 'Cadastro/Edi'#231#227'o dos dados da Empresa'
  ClientHeight = 475
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 33
  object Panel1: TPanel
    Left = 0
    Top = 403
    Width = 916
    Height = 72
    Align = alBottom
    BevelInner = bvLowered
    ParentBackground = False
    TabOrder = 0
    object btn_Editar: TBitBtn
      Left = 19
      Top = 12
      Width = 150
      Height = 49
      Caption = 'Editar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btn_EditarClick
    end
    object btn_Limpar: TBitBtn
      Left = 176
      Top = 12
      Width = 150
      Height = 49
      Caption = 'Limpar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btn_LimparClick
    end
    object btn_Cancelar: TBitBtn
      Left = 333
      Top = 12
      Width = 150
      Height = 49
      Caption = 'Cancelar'
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
      TabOrder = 2
      OnClick = btn_CancelarClick
    end
    object btn_Gravar: TBitBtn
      Left = 490
      Top = 12
      Width = 150
      Height = 49
      Caption = 'Gravar'
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
      TabOrder = 3
      OnClick = btn_GravarClick
    end
    object btn_Sair: TBitBtn
      Left = 648
      Top = 12
      Width = 150
      Height = 49
      Caption = 'Sair'
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
      TabOrder = 4
      OnClick = btn_SairClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 916
    Height = 403
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados da Empresa'
      object Label_CNPJ: TLabel
        Left = 185
        Top = 160
        Width = 60
        Height = 33
        Caption = 'CNPJ'
        Enabled = False
      end
      object Label_Tel: TLabel
        Left = 142
        Top = 251
        Width = 103
        Height = 33
        Caption = 'Telefone'
        Enabled = False
      end
      object edt_RazaoSocial: TLabeledEdit
        Left = 251
        Top = 63
        Width = 427
        Height = 41
        EditLabel.Width = 148
        EditLabel.Height = 33
        EditLabel.Caption = 'Raz'#227'o Social'
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 0
        TextHint = 'digite aqui a raz'#227'o social'
      end
      object edt_NomeFantasia: TLabeledEdit
        Left = 251
        Top = 16
        Width = 427
        Height = 41
        EditLabel.Width = 176
        EditLabel.Height = 33
        EditLabel.Caption = 'Nome Fantasia'
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 1
        TextHint = 'digite aqui o nome fantasia'
      end
      object edt_Endereco: TLabeledEdit
        Left = 251
        Top = 201
        Width = 427
        Height = 41
        EditLabel.Width = 110
        EditLabel.Height = 33
        EditLabel.Caption = 'Endere'#231'o'
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 2
        TextHint = 'digite aqui o endere'#231'o da empresa'
      end
      object edt_CNPJ: TMaskEdit
        Left = 251
        Top = 157
        Width = 275
        Height = 41
        Enabled = False
        EditMask = '99.999.999/9999-99'
        MaxLength = 18
        TabOrder = 3
        Text = '  .   .   /    -  '
      end
      object edt_Telefone: TMaskEdit
        Left = 251
        Top = 248
        Width = 275
        Height = 41
        Enabled = False
        EditMask = '(99)9999-9999;1;_'
        MaxLength = 13
        TabOrder = 4
        Text = '(  )    -    '
      end
      object edt_InscEstadual: TLabeledEdit
        Left = 251
        Top = 110
        Width = 427
        Height = 41
        EditLabel.Width = 214
        EditLabel.Height = 33
        EditLabel.Caption = 'Inscri'#231#227'o Estadual'
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 5
        TextHint = 'digite aqui a inscri'#231#227'o estadual'
      end
      object edt_UFInscEstadual: TLabeledEdit
        Left = 760
        Top = 110
        Width = 80
        Height = 41
        EditLabel.Width = 32
        EditLabel.Height = 33
        EditLabel.Caption = 'UF'
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 6
        TextHint = 'digite aqui a inscri'#231#227'o estadual'
      end
      object edt_Email: TLabeledEdit
        Left = 251
        Top = 295
        Width = 427
        Height = 41
        EditLabel.Width = 74
        EditLabel.Height = 33
        EditLabel.Caption = 'E-mail'
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 7
        TextHint = 'digite aqui o email da empresa'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Par'#226'metros do Sistema'
      ImageIndex = 1
      object Label_PorcLucro: TLabel
        Left = 48
        Top = 67
        Width = 259
        Height = 33
        Caption = 'Porcentagem de lucro'
        Enabled = False
      end
      object spn_Lucro: TSpinEdit
        Left = 313
        Top = 64
        Width = 92
        Height = 43
        Enabled = False
        MaxValue = 10000
        MinValue = 10
        TabOrder = 0
        Value = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do respons'#225'vel'
      ImageIndex = 2
      object Label_TelResp: TLabel
        Left = 21
        Top = 190
        Width = 296
        Height = 33
        Caption = 'Telefone do Respons'#225'vel'
        Enabled = False
      end
      object edt_NomeResp: TLabeledEdit
        Left = 323
        Top = 20
        Width = 425
        Height = 41
        EditLabel.Width = 263
        EditLabel.Height = 33
        EditLabel.Caption = 'Nome do Respons'#225'vel'
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 0
        TextHint = 'digite aqui o nome fantasia'
      end
      object edt_TelResp: TMaskEdit
        Left = 323
        Top = 187
        Width = 275
        Height = 41
        Enabled = False
        EditMask = '(99)9999-9999;1;_'
        MaxLength = 13
        TabOrder = 1
        Text = '(  )    -    '
      end
      object Panel2: TPanel
        Left = 21
        Top = 88
        Width = 727
        Height = 73
        TabOrder = 2
        object RadioGroup_CargoResp: TRadioGroup
          Left = 16
          Top = 2
          Width = 699
          Height = 64
          Caption = 'Cargo do Respons'#225'vel'
          Enabled = False
          TabOrder = 0
        end
        object RadioButton_Gerente: TRadioButton
          Left = 326
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Gerente'
          Enabled = False
          TabOrder = 1
        end
        object RadioButton_Dono: TRadioButton
          Left = 611
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Dono'
          Enabled = False
          TabOrder = 2
        end
      end
    end
  end
end
