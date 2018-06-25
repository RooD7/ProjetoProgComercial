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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 61
    Width = 29
    Height = 13
    Caption = 'In'#237'cio:'
  end
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 42
    Height = 13
    Caption = 'T'#233'rmino:'
  end
  object Label3: TLabel
    Left = 8
    Top = 167
    Width = 42
    Height = 13
    Caption = 'Produto:'
  end
  object Label4: TLabel
    Left = 8
    Top = 200
    Width = 23
    Height = 13
    Caption = 'M'#234's:'
  end
  object Label5: TLabel
    Left = 8
    Top = 139
    Width = 136
    Height = 13
    Caption = 'Vendas por produto por m'#234's'
    OnClick = Label5Click
  end
  object Chart1: TChart
    Left = 256
    Top = -6
    Width = 584
    Height = 327
    Legend.LegendStyle = lsValues
    Legend.TextStyle = ltsXAndValue
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
    Left = 167
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 56
    Top = 53
    Width = 186
    Height = 21
    Date = 43276.590481701390000000
    Time = 43276.590481701390000000
    TabOrder = 2
  end
  object DateTimePicker2: TDateTimePicker
    Left = 56
    Top = 80
    Width = 186
    Height = 21
    Date = 43276.590481701390000000
    Time = 43276.590481701390000000
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 26
    Width = 145
    Height = 21
    TabOrder = 4
    Text = '<Selecione o gr'#225'fico>'
  end
  object Button2: TButton
    Left = 167
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object DateTimePicker4: TDateTimePicker
    Left = 56
    Top = 192
    Width = 186
    Height = 21
    Date = 43276.590481701390000000
    Time = 43276.590481701390000000
    TabOrder = 6
  end
  object ComboBox2: TComboBox
    Left = 56
    Top = 165
    Width = 186
    Height = 21
    TabOrder = 7
    Text = '<Selecione o produto>'
  end
end
