﻿object frmFornecedor: TfrmFornecedor
  Left = 0
  Top = 0
  Caption = 'frmFornecedor'
  ClientHeight = 341
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt_InscrEstadual: TLabeledEdit
    Left = 125
    Top = 56
    Width = 427
    Height = 41
    EditLabel.Width = 60
    EditLabel.Height = 13
    EditLabel.Caption = 'Raz'#227'o Social'
    LabelPosition = lpLeft
    TabOrder = 0
    TextHint = 'Digite aqui a Incri'#231#227'o Estadual'
  end
  object edt_ResultInscrEstadual: TLabeledEdit
    Left = 125
    Top = 103
    Width = 427
    Height = 41
    EditLabel.Width = 71
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome Fantasia'
    LabelPosition = lpLeft
    TabOrder = 1
    TextHint = 'digite aqui o nome fantasia'
  end
  object Inscrição: TBitBtn
    Left = 125
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Inscri'#231#227'o'
    TabOrder = 2
    OnClick = InscriçãoClick
  end
end
