object frmGrafico: TfrmGrafico
  Left = 0
  Top = 0
  Caption = 'Gr'#225'ficos'
  ClientHeight = 345
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
  object Chart1: TChart
    Left = 256
    Top = -6
    Width = 584
    Height = 327
    Legend.LegendStyle = lsValues
    Legend.TextStyle = ltsXAndValue
    Legend.Visible = False
    Title.Text.Strings = (
      'Gr'#225'fico')
    Pages.AutoScale = True
    Pages.MaxPointsPerPage = 1
    View3D = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    TabOrder = 0
    ColorPaletteIndex = 13
    object Series1: TPieSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Style = smsLabelPercent
      Marks.Visible = True
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
      MultiPie = mpDisabled
      OtherSlice.Legend.Visible = False
      OtherSlice.Style = poBelowPercent
    end
    object Series2: TPieSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Emboss.Color = 8487297
      Marks.Shadow.Color = 8553090
      Marks.Style = smsLabelValue
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
      MultiPie = mpDisabled
      OtherSlice.Legend.Visible = False
      OtherSlice.Style = poBelowPercent
    end
    object Series3: TBarSeries
      Active = False
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Style = smsLabelValue
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
      Marks.Style = smsLabelValue
      Marks.Visible = True
      Title = 'Vendas por m'#234's'
      Emboss.Color = 8947848
      Shadow.Color = 8947848
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series5: TBarSeries
      Active = False
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Style = smsLabelValue
      Marks.Visible = True
      Title = 'Vendas por produto por m'#234's'
      Emboss.Color = 8947848
      Shadow.Color = 8947848
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 175
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 26
    Width = 161
    Height = 21
    TabOrder = 2
    Text = '<Selecione o gr'#225'fico>'
    OnChange = ComboBox1Change
  end
  object ComboBox3: TComboBox
    Left = 8
    Top = 53
    Width = 161
    Height = 21
    TabOrder = 3
    Text = '<Selecione o m'#234's>'
  end
end
