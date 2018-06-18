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
  object DBChartGrafico: TDBChart
    Left = 0
    Top = 0
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'TDBChart')
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    TabOrder = 0
    PrintMargins = (
      15
      18
      15
      18)
    ColorPaletteIndex = 13
    object Series1: TPieSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Emboss.Color = 8487297
      Marks.Shadow.Color = 8487297
      Marks.Visible = True
      DataSource = ChDataVendaTotalMes
      XLabelsSource = 'Series1.Label'
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      YValues.ValueSource = 'Series1.Pie'
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
      Data = {0000000000}
    end
    object Series2: TPieSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      DataSource = ChDataVendaTotalProd
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
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
      Data = {0000000000}
    end
    object Series3: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      Data = {
        00060000000000000000B484400000000000E8874000000000001C8B40000000
        000038884000000000003C894000000000008C8940}
    end
    object Series4: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      Emboss.Color = 8487297
      Shadow.Color = 8487297
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      Data = {
        00060000000000000080F180400000000080A7834033333333336F8240666666
        66E6C47E409A999999D902814034333333B33E7B40}
    end
    object Series5: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      Data = {
        000600000099999999591C874066666666E6A2864066666666A69E8540333333
        333325854066666666A6438440CCCCCCCC4CE88640}
    end
  end
  object ChDataVendaTotalMes: TChartDataSet
    Active = True
    Chart = DBChartGrafico
    Left = 592
    Top = 32
    object ChDataVendaTotalMesSeries1Color: TIntegerField
      FieldName = 'Series1.Color'
    end
    object ChDataVendaTotalMesSeries1X: TFloatField
      FieldName = 'Series1.X'
      OnChange = ChDataVendaTotalMesSeries1XChange
    end
    object ChDataVendaTotalMesSeries1Pie: TFloatField
      FieldName = 'Series1.Pie'
    end
    object ChDataVendaTotalMesSeries1Label: TStringField
      FieldName = 'Series1.Label'
      Size = 128
    end
  end
  object ChDataVendaTotalProd: TChartDataSet
    Chart = DBChartGrafico
    Left = 512
    Top = 112
  end
  object ChDataVendaDia: TChartDataSet
    Chart = DBChartGrafico
    Left = 600
    Top = 168
  end
  object ChDataVendaMes: TChartDataSet
    Chart = DBChartGrafico
    Left = 504
    Top = 232
  end
  object ChDataVendaProdMes: TChartDataSet
    Left = 656
    Top = 280
  end
end
