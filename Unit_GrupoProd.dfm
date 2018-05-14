object frmGrupoProd: TfrmGrupoProd
  Left = 0
  Top = 0
  Caption = 'Cadastro/Edi'#231#227'o de dados dos grupos de produtos'
  ClientHeight = 275
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 819
    Height = 275
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Grupos cadastrados'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblQtde: TLabel
        Left = 0
        Top = 148
        Width = 811
        Height = 24
        Align = alBottom
        Color = clBtnFace
        ParentColor = False
        ExplicitWidth = 6
      end
      object sgdGrupoProd: TStringGrid
        Left = 41
        Top = 0
        Width = 770
        Height = 148
        Align = alClient
        ColCount = 2
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = sgdGrupoProdDblClick
        OnSelectCell = sgdGrupoProdSelectCell
      end
      object Panel1: TPanel
        Left = 0
        Top = 172
        Width = 811
        Height = 64
        Align = alBottom
        BevelInner = bvLowered
        Color = clYellow
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 4
          Width = 127
          Height = 24
          Caption = 'Pesquisar por:'
        end
        object Label2: TLabel
          Left = 167
          Top = 4
          Width = 170
          Height = 24
          Caption = 'Termo de pesquisa'
        end
        object cbxCampos: TComboBox
          Left = 16
          Top = 28
          Width = 145
          Height = 32
          Style = csDropDownList
          TabOrder = 0
          OnChange = cbxCamposChange
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o'
            'Cod. Barras')
        end
        object edt_Pesquisa: TMaskEdit
          Left = 167
          Top = 28
          Width = 410
          Height = 32
          TabOrder = 1
          OnChange = edt_PesquisaChange
        end
        object btn_Sair: TBitBtn
          Left = 699
          Top = 14
          Width = 105
          Height = 43
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
          TabOrder = 2
          OnClick = btn_Sair1Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 41
        Height = 148
        Align = alLeft
        TabOrder = 2
        object btnAZ: TBitBtn
          Left = 0
          Top = 6
          Width = 38
          Height = 30
          Caption = 'A..Z'
          Enabled = False
          TabOrder = 0
          OnClick = btnAZClick
        end
        object btnZA: TBitBtn
          Left = 0
          Top = 41
          Width = 38
          Height = 30
          Caption = 'Z..A'
          TabOrder = 1
          OnClick = btnZAClick
        end
        object btn09: TBitBtn
          Left = 0
          Top = 76
          Width = 38
          Height = 30
          Caption = '0..9'
          TabOrder = 2
          OnClick = btn09Click
        end
        object btn90: TBitBtn
          Left = 0
          Top = 111
          Width = 38
          Height = 30
          Caption = '9..0'
          TabOrder = 3
          OnClick = btn90Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastro/edi'#231#227'o de dados'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 164
        Width = 811
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
          Caption = '&Novo'
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
          Caption = '&Limpar'
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
          TabOrder = 2
          OnClick = btn_CancelarClick
        end
        object btn_Gravar: TBitBtn
          Left = 490
          Top = 12
          Width = 150
          Height = 49
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
          TabOrder = 3
          OnClick = btn_GravarClick
        end
        object btn_Sair1: TBitBtn
          Left = 648
          Top = 12
          Width = 150
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
          TabOrder = 4
          OnClick = btn_Sair1Click
        end
      end
      object edt_Codigo: TLabeledEdit
        Left = 201
        Top = 43
        Width = 156
        Height = 32
        EditLabel.Width = 68
        EditLabel.Height = 24
        EditLabel.Caption = 'C'#243'digo:'
        EditLabel.Layout = tlCenter
        Enabled = False
        LabelPosition = lpLeft
        ReadOnly = True
        TabOrder = 1
      end
      object edt_Descricao: TLabeledEdit
        Left = 201
        Top = 86
        Width = 497
        Height = 32
        EditLabel.Width = 93
        EditLabel.Height = 24
        EditLabel.Caption = 'Descri'#231#227'o:'
        EditLabel.Layout = tlCenter
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 2
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 48
    object Editarcadastro1: TMenuItem
      Caption = 'Editar cadastro'
      OnClick = sgdGrupoProdDblClick
    end
  end
end
