object frmRelatorios: TfrmRelatorios
  Left = 0
  Top = 0
  Caption = 'Relatorio'
  ClientHeight = 378
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 251
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object Label3: TLabel
    Left = 357
    Top = 147
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object Label4: TLabel
    Left = 450
    Top = 147
    Width = 21
    Height = 13
    Caption = 'At'#233':'
  end
  object Label8: TLabel
    Left = 472
    Top = 25
    Width = 21
    Height = 13
    Caption = 'At'#233':'
  end
  object Label7: TLabel
    Left = 401
    Top = 26
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object Label9: TLabel
    Left = 401
    Top = 81
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object Label10: TLabel
    Left = 472
    Top = 81
    Width = 21
    Height = 13
    Caption = 'At'#233':'
  end
  object Label11: TLabel
    Left = 105
    Top = 251
    Width = 21
    Height = 13
    Caption = 'At'#233':'
  end
  object Label12: TLabel
    Left = 426
    Top = 128
    Width = 60
    Height = 13
    Caption = 'Vencimentos'
  end
  object Label2: TLabel
    Left = 269
    Top = 147
    Width = 21
    Height = 13
    Caption = 'At'#233':'
  end
  object Label13: TLabel
    Left = 199
    Top = 147
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object Label14: TLabel
    Left = 200
    Top = 128
    Width = 138
    Height = 13
    Caption = 'Codigos Clientes/Fornecedor'
  end
  object Label6: TLabel
    Left = 138
    Top = 194
    Width = 61
    Height = 13
    Caption = 'Total Venda:'
  end
  object Label5: TLabel
    Left = 272
    Top = 194
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object Label15: TLabel
    Left = 372
    Top = 194
    Width = 73
    Height = 13
    Caption = 'Codigo Cliente:'
  end
  object RGclientes: TRadioGroup
    Left = 0
    Top = 0
    Width = 553
    Height = 59
    Align = alCustom
    Caption = 'Clientes por Sexo'
    TabOrder = 21
  end
  object RadioGroup3: TRadioGroup
    Left = 0
    Top = 171
    Width = 553
    Height = 52
    Align = alCustom
    Caption = 'Vendas'
    TabOrder = 0
  end
  object RadioGroup4: TRadioGroup
    Left = 0
    Top = 223
    Width = 553
    Height = 59
    Align = alCustom
    Caption = 'Movimenta'#231#227'o de Caixa'
    TabOrder = 1
  end
  object RadioGroup5: TRadioGroup
    Left = 0
    Top = 115
    Width = 553
    Height = 56
    Align = alCustom
    Caption = 'Contas'
    TabOrder = 2
  end
  object rbtFeminino: TRadioButton
    Left = 8
    Top = 25
    Width = 81
    Height = 17
    Caption = 'Feminino'
    TabOrder = 3
  end
  object RadioGroup2: TRadioGroup
    Left = 0
    Top = 59
    Width = 553
    Height = 55
    Align = alCustom
    Caption = 'Produtos'
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 322
    Width = 554
    Height = 56
    Align = alBottom
    TabOrder = 5
    object btnGerar: TButton
      Left = 450
      Top = 24
      Width = 97
      Height = 25
      Caption = 'Gerar Relatorio'
      TabOrder = 0
      OnClick = btnGerarClick
    end
  end
  object rbtMasculino: TRadioButton
    Left = 120
    Top = 24
    Width = 81
    Height = 17
    Caption = 'Masculino'
    TabOrder = 6
  end
  object rbtTodosProd: TRadioButton
    Left = 8
    Top = 80
    Width = 105
    Height = 17
    Caption = 'Todos Produtos'
    TabOrder = 7
  end
  object rbtProdInd: TRadioButton
    Left = 110
    Top = 80
    Width = 146
    Height = 17
    Caption = 'Estq. Min. Industrializados'
    TabOrder = 8
  end
  object rbtAvista: TRadioButton
    Left = 8
    Top = 192
    Width = 73
    Height = 17
    Caption = #193' Vista'
    TabOrder = 9
    OnClick = rbtAvistaClick
  end
  object rbtAprazo: TRadioButton
    Left = 73
    Top = 192
    Width = 81
    Height = 17
    Caption = #193' Prazo'
    TabOrder = 10
    OnClick = rbtAprazoClick
  end
  object rbtReceber: TRadioButton
    Left = 8
    Top = 136
    Width = 113
    Height = 17
    Caption = #193' Receber'
    TabOrder = 11
  end
  object rbtPagar: TRadioButton
    Left = 89
    Top = 136
    Width = 113
    Height = 17
    Caption = #193' Pagar'
    TabOrder = 12
  end
  object edtDeMovCaixa: TMaskEdit
    Left = 33
    Top = 248
    Width = 66
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 13
    Text = '  /  /    '
  end
  object edtDeDataContas: TMaskEdit
    Left = 377
    Top = 144
    Width = 63
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 14
    Text = '  /  /    '
  end
  object edtAteDataContas: TMaskEdit
    Left = 474
    Top = 144
    Width = 65
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 15
    Text = '  /  /    '
  end
  object rbtIndeterminado: TRadioButton
    Left = 234
    Top = 24
    Width = 113
    Height = 17
    Caption = 'Indeterminado'
    TabOrder = 16
  end
  object edtCliDe: TEdit
    Left = 423
    Top = 22
    Width = 36
    Height = 21
    NumbersOnly = True
    TabOrder = 17
  end
  object edtCliAte: TEdit
    Left = 499
    Top = 22
    Width = 42
    Height = 21
    NumbersOnly = True
    TabOrder = 18
  end
  object edtProDe: TEdit
    Left = 423
    Top = 78
    Width = 36
    Height = 21
    NumbersOnly = True
    OEMConvert = True
    TabOrder = 19
  end
  object edtProAte: TEdit
    Left = 496
    Top = 78
    Width = 43
    Height = 21
    NumbersOnly = True
    TabOrder = 20
  end
  object rbtTodosProdMin: TRadioButton
    Left = 263
    Top = 80
    Width = 111
    Height = 17
    Caption = 'Todos em Estq. Min.'
    TabOrder = 22
  end
  object edtAteMovCaixa: TMaskEdit
    Left = 132
    Top = 248
    Width = 69
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 23
    Text = '  /  /    '
  end
  object edtDeCodContas: TEdit
    Left = 220
    Top = 144
    Width = 36
    Height = 21
    NumbersOnly = True
    TabOrder = 24
  end
  object edtAteCodContas: TEdit
    Left = 296
    Top = 144
    Width = 42
    Height = 21
    NumbersOnly = True
    TabOrder = 25
  end
  object edtVenData: TMaskEdit
    Left = 303
    Top = 190
    Width = 63
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 26
    Text = '  /  /    '
  end
  object edtCodCliVenda: TEdit
    Left = 450
    Top = 190
    Width = 26
    Height = 21
    Enabled = False
    NumbersOnly = True
    TabOrder = 27
  end
  object edtTotalVenda: TEdit
    Left = 205
    Top = 190
    Width = 50
    Height = 21
    TabOrder = 28
  end
  object frxUsuario: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43258.363010682900000000
    ReportOptions.LastChange = 43258.376730648200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 80
    Top = 16
    Datasets = <
      item
        DataSet = frxDBCliente
        DataSetName = 'Cliente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object listaCliente: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object date: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo1: TfrxMemoView
          Left = 623.622450000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTAGEM DE CLIENTES')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBCliente
        DataSetName = 'Cliente'
        RowCount = 5
        object ClienteCLI_CODIGO: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_CODIGO'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_CODIGO"]')
          ParentFont = False
        end
        object ClienteCLI_NOME: TfrxMemoView
          Left = 37.795300000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_NOME'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_NOME"]')
          ParentFont = False
        end
        object ClienteCLI_ENDERECO: TfrxMemoView
          Left = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_ENDERECO"]')
          ParentFont = False
        end
        object ClienteCLI_ENDERECO1: TfrxMemoView
          Left = 264.567100000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_ENDERECO"]')
          ParentFont = False
        end
        object ClienteCLI_TELEFONE: TfrxMemoView
          Left = 332.598640000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_TELEFONE'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_TELEFONE"]')
          ParentFont = False
        end
        object ClienteCLI_EMAIL: TfrxMemoView
          Left = 400.630180000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_EMAIL'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_EMAIL"]')
          ParentFont = False
        end
        object ClienteCLI_DATANASC1: TfrxMemoView
          Left = 646.299630000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_DATANASC'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_DATANASC"]')
          ParentFont = False
        end
        object ClienteCLI_ESTCIVIL: TfrxMemoView
          Left = 574.488560000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_ESTCIVIL'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_ESTCIVIL"]')
          ParentFont = False
        end
        object ClienteCLI_SEXO: TfrxMemoView
          Left = 540.472790000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLI_SEXO'
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Cliente."CLI_SEXO"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 264.567100000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 332.598640000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 400.630180000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'E-mail')
          ParentFont = False
        end
        object ClienteCLI_DATANASC: TfrxMemoView
          Left = 646.299630000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nasc.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 574.488560000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Estado Civil')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 540.472790000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Sexo')
          ParentFont = False
        end
      end
    end
  end
  object frxDBCliente: TfrxDBDataset
    UserName = 'Cliente'
    CloseDataSource = False
    DataSet = DM.IBTCliente
    BCDToCurrency = False
    Left = 288
    Top = 328
  end
  object frxProduto: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43258.363010682900000000
    ReportOptions.LastChange = 43258.376730648200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 56
    Datasets = <
      item
        DataSet = frxDBProduto
        DataSetName = 'Produto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object date: TfrxMemoView
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTAGEM DE PRODUTOS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxDBProduto
        DataSetName = 'Produto'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRO_CODIGO'
          DataSet = frxDBProduto
          DataSetName = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Produto."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 52.913420000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRO_DESCRICAO'
          DataSet = frxDBProduto
          DataSetName = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Produto."PRO_DESCRICAO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 385.512060000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRO_ESTOQUE'
          DataSet = frxDBProduto
          DataSetName = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Produto."PRO_ESTOQUE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 438.425480000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRO_ESTOQUEMIN'
          DataSet = frxDBProduto
          DataSetName = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Produto."PRO_ESTOQUEMIN"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 521.575140000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRO_PRECUSTO'
          DataSet = frxDBProduto
          DataSetName = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Produto."PRO_PRECUSTO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 619.842920000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRO_PREVENDA'
          DataSet = frxDBProduto
          DataSetName = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Produto."PRO_PREVENDA"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 52.913420000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 521.575140000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pre'#231'o de Custo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 619.842920000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pre'#231'o de Venda')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 385.512060000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 438.425480000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Estoque M'#237'nimo')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 665.197280000000000000
          Top = 3.779529999999994000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Page]')
        end
      end
    end
  end
  object frxDBProduto: TfrxDBDataset
    UserName = 'Produto'
    CloseDataSource = False
    DataSet = DM.IBTProduto
    BCDToCurrency = False
    Left = 216
    Top = 328
  end
  object frxDBVenda: TfrxDBDataset
    UserName = 'Venda'
    CloseDataSource = False
    DataSet = DM.IBTVenda
    BCDToCurrency = False
    Left = 144
    Top = 328
  end
  object frxDBContasReceber: TfrxDBDataset
    UserName = 'ContasReceber'
    CloseDataSource = False
    DataSet = DM.IBTContasReceber
    BCDToCurrency = False
    Left = 48
    Top = 328
  end
  object frxVenda: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43258.363010682900000000
    ReportOptions.LastChange = 43258.376730648200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 240
    Datasets = <
      item
        DataSet = frxDBVenda
        DataSetName = 'Venda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object listaCliente: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object date: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo1: TfrxMemoView
          Left = 623.622450000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MOVIMENTA'#199#195'O DE CAIXA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBVenda
        DataSetName = 'Venda'
        RowCount = 0
        object ClienteCLI_CODIGO: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VEN_CODIGO'
          DataSet = frxDBVenda
          DataSetName = 'Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Venda."VEN_CODIGO"]')
          ParentFont = False
        end
        object ClienteCLI_ENDERECO: TfrxMemoView
          Left = 102.047310000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VEN_DATA'
          DataSet = frxDBVenda
          DataSetName = 'Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Venda."VEN_DATA"]')
          ParentFont = False
        end
        object ClienteCLI_EMAIL: TfrxMemoView
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VEN_TOTAL'
          DataSet = frxDBVenda
          DataSetName = 'Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Venda."VEN_TOTAL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data da Venda')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
    end
  end
  object frxContasReceber: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43258.363010682900000000
    ReportOptions.LastChange = 43258.376730648200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 120
    Datasets = <
      item
        DataSet = frxDBContasReceber
        DataSetName = 'ContasReceber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object listaCliente: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object date: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo1: TfrxMemoView
          Left = 623.622450000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTAS '#193' RECEBER')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBContasReceber
        DataSetName = 'ContasReceber'
        RowCount = 0
        object ClienteCLI_CODIGO: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_COD'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_COD"]')
          ParentFont = False
        end
        object ClienteCLI_NOME: TfrxMemoView
          Left = 37.795300000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_NPARC'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_NPARC"]')
          ParentFont = False
        end
        object ClienteCLI_ENDERECO: TfrxMemoView
          Left = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTRECVEN_COD'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTRECVEN_COD"]')
          ParentFont = False
        end
        object ClienteCLI_ENDERECO1: TfrxMemoView
          Left = 264.567100000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_VALOR'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_VALOR"]')
          ParentFont = False
        end
        object ClienteCLI_TELEFONE: TfrxMemoView
          Left = 332.598640000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_STATUS'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_STATUS"]')
          ParentFont = False
        end
        object ClienteCLI_EMAIL: TfrxMemoView
          Left = 400.630180000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_DATAVENC'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_DATAVENC"]')
          ParentFont = False
        end
        object ClienteCLI_DATANASC1: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_CODCLIENTE'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_CODCLIENTE"]')
          ParentFont = False
        end
        object ClienteCLI_SEXO: TfrxMemoView
          Left = 491.338900000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_DATAPAG'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_DATAPAG"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#250'mero de Parcelas')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo da Venda')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 264.567100000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 332.598640000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 400.630180000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data Vencimento')
          ParentFont = False
        end
        object ClienteCLI_DATANASC: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          DataSet = frxDBCliente
          DataSetName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo Cliente')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 491.338900000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data Pagamento')
          ParentFont = False
        end
      end
    end
  end
  object frxAvista: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43258.363010682900000000
    ReportOptions.LastChange = 43258.376730648200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 176
    Datasets = <
      item
        DataSet = frxDBContasReceber
        DataSetName = 'ContasReceber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object listaCliente: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object date: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo1: TfrxMemoView
          Left = 623.622450000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDAS '#193' VISTA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBContasReceber
        DataSetName = 'ContasReceber'
        RowCount = 0
        object ClienteCLI_CODIGO: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTRECVEN_COD'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTRECVEN_COD"]')
          ParentFont = False
        end
        object ClienteCLI_ENDERECO: TfrxMemoView
          Left = 102.047310000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_DATAPAG'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_DATAPAG"]')
          ParentFont = False
        end
        object ClienteCLI_EMAIL: TfrxMemoView
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_VALOR'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_VALOR"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data da Venda')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
    end
  end
  object frxAprazo: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43258.363010682900000000
    ReportOptions.LastChange = 43258.376730648200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 176
    Datasets = <
      item
        DataSet = frxDBContasReceber
        DataSetName = 'ContasReceber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object listaCliente: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object date: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo1: TfrxMemoView
          Left = 623.622450000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDAS '#193' PRAZO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBContasReceber
        DataSetName = 'ContasReceber'
        RowCount = 0
        object ClienteCLI_CODIGO: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTRECVEN_COD'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTRECVEN_COD"]')
          ParentFont = False
        end
        object ClienteCLI_ENDERECO: TfrxMemoView
          Left = 102.047310000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_DATAVENC'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_DATAVENC"]')
          ParentFont = False
        end
        object ClienteCLI_EMAIL: TfrxMemoView
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTREC_VALOR'
          DataSet = frxDBContasReceber
          DataSetName = 'ContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ContasReceber."CONTREC_VALOR"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data da Venda')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
    end
  end
end