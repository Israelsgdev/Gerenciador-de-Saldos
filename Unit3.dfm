object UniForm3: TUniForm3
  Left = 0
  Top = 0
  ClientHeight = 409
  ClientWidth = 730
  Caption = 'UniForm3'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 8
    Top = 8
    Width = 345
    Height = 65
    Hint = ''
    TabOrder = 0
    Caption = ''
    object UniButton1: TUniButton
      Left = 255
      Top = 29
      Width = 82
      Height = 25
      Hint = ''
      Caption = 'Inserir Sede'
      TabOrder = 1
      OnClick = UniButton1Click
    end
    object UniFSComboBox1: TUniFSComboBox
      Left = 9
      Top = 29
      Width = 240
      Height = 25
      Hint = ''
      Text = 'UniFSComboBox1'
      TabOrder = 2
      AnyMatch = True
      IconItems = <>
      Value = '-1'
    end
    object UniLabel1: TUniLabel
      Left = 9
      Top = 10
      Width = 81
      Height = 13
      Hint = ''
      Caption = 'Selecione a Sede'
      TabOrder = 3
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 88
    Width = 345
    Height = 284
    Hint = ''
    DataSource = UniMainModule.DataSource4
    LoadMask.Message = 'Loading data...'
    TabOrder = 1
  end
  object UniDBGrid2: TUniDBGrid
    Left = 368
    Top = 88
    Width = 345
    Height = 284
    Hint = ''
    DataSource = UniMainModule.DataSource5
    LoadMask.Message = 'Loading data...'
    TabOrder = 2
    Columns = <
      item
        FieldName = 'ID_SEDE'
        Title.Caption = 'ID_SEDE'
        Width = 71
      end
      item
        FieldName = 'RAZAO_SOCIAL'
        Title.Caption = 'RAZAO_SOCIAL'
        Width = 220
      end>
  end
  object UniPanel2: TUniPanel
    Left = 368
    Top = 8
    Width = 345
    Height = 65
    Hint = ''
    TabOrder = 3
    Caption = ''
    object UniLabel2: TUniLabel
      Left = 9
      Top = 10
      Width = 77
      Height = 13
      Hint = ''
      Caption = 'Selecione a Filial'
      TabOrder = 1
    end
    object UniFSComboBox2: TUniFSComboBox
      Left = 8
      Top = 29
      Width = 166
      Height = 25
      Hint = ''
      Text = 'UniFSComboBox2'
      TabOrder = 2
      AnyMatch = True
      IconItems = <>
      Value = '-1'
    end
    object UniButton2: TUniButton
      Left = 183
      Top = 29
      Width = 66
      Height = 25
      Hint = ''
      Caption = 'Inserir Filial'
      TabOrder = 3
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 259
      Top = 29
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Excluir Filial'
      TabOrder = 4
      OnClick = UniButton3Click
    end
  end
  object UniButton4: TUniButton
    Left = 8
    Top = 378
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = UniButton4Click
  end
end
