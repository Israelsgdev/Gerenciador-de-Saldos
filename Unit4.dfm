object UniForm4: TUniForm4
  Left = 0
  Top = 0
  ClientHeight = 80
  ClientWidth = 635
  Caption = 'UniForm4'
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDateTimePicker1: TUniDateTimePicker
    Left = 19
    Top = 32
    Width = 120
    Hint = ''
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 0
  end
  object UniDateTimePicker2: TUniDateTimePicker
    Left = 155
    Top = 32
    Width = 120
    Hint = ''
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 1
  end
  object UniEdit1: TUniEdit
    Left = 291
    Top = 32
    Width = 121
    Hint = ''
    Text = ''
    TabOrder = 2
  end
  object UniButton1: TUniButton
    Left = 427
    Top = 32
    Width = 111
    Height = 22
    Hint = ''
    Caption = 'Inserir Previs'#227'o'
    TabOrder = 3
    OnClick = UniButton1Click
  end
  object UniLabel1: TUniLabel
    Left = 19
    Top = 16
    Width = 13
    Height = 13
    Hint = ''
    Caption = 'De'
    TabOrder = 4
  end
  object UniLabel2: TUniLabel
    Left = 155
    Top = 17
    Width = 17
    Height = 13
    Hint = ''
    Caption = 'At'#233
    TabOrder = 5
  end
  object UniLabel3: TUniLabel
    Left = 291
    Top = 16
    Width = 94
    Height = 13
    Hint = ''
    Caption = 'Previs'#227'o de Cr'#233'dito'
    TabOrder = 6
  end
  object UniButton2: TUniButton
    Left = 552
    Top = 32
    Width = 75
    Height = 22
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 7
    OnClick = UniButton2Click
  end
end
