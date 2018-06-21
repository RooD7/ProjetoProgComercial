object fmGrafico: TfmGrafico
  Left = 0
  Top = 0
  Caption = 'Terminal de Consulta'
  ClientHeight = 412
  ClientWidth = 836
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelGrafico01: TLabel
    Left = 16
    Top = 56
    Width = 49
    Height = 13
    Caption = 'Gr'#225'fico 01'
  end
  object LabelGrafico02: TLabel
    Left = 16
    Top = 87
    Width = 49
    Height = 13
    Caption = 'Gr'#225'fico 02'
  end
  object LabelGrafico03: TLabel
    Left = 16
    Top = 118
    Width = 49
    Height = 13
    Caption = 'Gr'#225'fico 03'
  end
  object LabelGrafico04: TLabel
    Left = 16
    Top = 149
    Width = 49
    Height = 13
    Caption = 'Gr'#225'fico 04'
  end
  object LabelGrafico05: TLabel
    Left = 16
    Top = 180
    Width = 49
    Height = 13
    Caption = 'Gr'#225'fico 05'
  end
  object Chart1: TChart
    Left = 184
    Top = -6
    Width = 656
    Height = 385
    Legend.FirstValue = 19
    Legend.LegendStyle = lsValues
    Legend.TextStyle = ltsXAndValue
    Title.Text.Strings = (
      'Gr'#225'fico')
    Pages.AutoScale = True
    Pages.Current = 20
    Pages.MaxPointsPerPage = 1
    View3D = False
    TabOrder = 0
    ColorPaletteIndex = 13
    object Series1: TPieSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      Title = 'Vendas totais por m'#234's'
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      ExplodeBiggest = 30
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Visible = False
      Frame.Width = 4
      OtherSlice.Legend.Visible = False
      OtherSlice.Style = poBelowPercent
    end
    object Series2: TPieSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      Title = 'Vendas totais por produto por m'#234's'
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      ExplodeBiggest = 30
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Visible = False
      Frame.Width = 4
      OtherSlice.Legend.Visible = False
      OtherSlice.Style = poBelowPercent
    end
    object Series3: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      Title = 'Vendas por dia'
      Emboss.Color = 8947848
      Shadow.Color = 8947848
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series4: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      Title = 'Vendas por m'#234's'
      Emboss.Color = 8882055
      Shadow.Color = 8882055
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series5: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      Title = 'Vendas por produto por m'#234's'
      Emboss.Color = 8750469
      Shadow.Color = 8750469
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 96
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 82
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 96
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 3
  end
  object Button4: TButton
    Left = 96
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 96
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 5
  end
end
