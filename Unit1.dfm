object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 430
  ClientWidth = 809
  Caption = 'UniForm1'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 16
    Top = 8
    Width = 769
    Height = 57
    Hint = ''
    TabOrder = 0
    Caption = ''
    object UniEdit1: TUniEdit
      Left = 217
      Top = 27
      Width = 97
      Hint = ''
      Text = ''
      TabOrder = 2
    end
    object UniEdit4: TUniEdit
      Left = 494
      Top = 27
      Width = 84
      Hint = ''
      Text = ''
      TabOrder = 5
    end
    object UniFSComboBox1: TUniFSComboBox
      Left = 16
      Top = 27
      Width = 185
      Hint = ''
      Text = 'UniFSComboBox1'
      TabOrder = 1
      AnyMatch = True
      IconItems = <>
      Value = '-1'
    end
    object UniEdit3: TUniEdit
      Left = 429
      Top = 27
      Width = 56
      Hint = ''
      Text = ''
      TabOrder = 4
    end
    object UniLabel1: TUniLabel
      Left = 16
      Top = 8
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Empresa:'
      TabOrder = 3
    end
    object UniLabel2: TUniLabel
      Left = 217
      Top = 8
      Width = 74
      Height = 13
      Hint = ''
      Caption = 'Nome do Banco'
      TabOrder = 8
    end
    object UniLabel3: TUniLabel
      Left = 494
      Top = 8
      Width = 38
      Height = 13
      Hint = ''
      Caption = 'Ag'#234'ncia'
      TabOrder = 9
    end
    object UniLabel4: TUniLabel
      Left = 435
      Top = 8
      Width = 27
      Height = 13
      Hint = ''
      Caption = 'D'#237'gito'
      TabOrder = 10
    end
    object UniButton1: TUniButton
      Left = 681
      Top = 27
      Width = 75
      Height = 22
      Hint = ''
      Caption = 'Inserir'
      TabOrder = 7
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 589
      Top = 27
      Width = 80
      Height = 22
      Hint = ''
      Caption = 'Alterar'
      TabOrder = 6
      OnClick = UniButton2Click
    end
    object UniLabel5: TUniLabel
      Left = 592
      Top = 8
      Width = 77
      Height = 13
      Hint = ''
      Caption = 'Ativar / Inativar'
      TabOrder = 11
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 16
    Top = 73
    Width = 769
    Height = 312
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    DataSource = UniMainModule.DataSource1
    WebOptions.KeyNavigation = knDisabled
    WebOptions.FetchAll = True
    LoadMask.Message = 'Loading data...'
    TabOrder = 1
    Columns = <
      item
        FieldName = 'ID_SEDE'
        Title.Caption = 'ID_SEDE'
        Width = 46
      end
      item
        FieldName = 'ID_CONTA'
        Title.Caption = 'C'#243'd Conta'
        Width = 121
      end
      item
        FieldName = 'NOME_BANCO'
        Title.Caption = 'Banco'
        Width = 131
      end
      item
        FieldName = 'NROCONTA'
        Title.Caption = 'Conta'
        Width = 122
      end
      item
        FieldName = 'DIGCONTA'
        Title.Caption = 'D'#237'gito'
        Width = 88
      end
      item
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 78
      end
      item
        FieldName = 'AGENCIA'
        Title.Caption = 'Ag'#234'ncia'
        Width = 42
      end>
  end
  object UniLabel6: TUniLabel
    Left = 339
    Top = 16
    Width = 84
    Height = 13
    Hint = ''
    Caption = 'N'#250'mero da Conta'
    TabOrder = 2
  end
  object UniEdit2: TUniEdit
    Left = 339
    Top = 35
    Width = 98
    Hint = ''
    Text = ''
    TabOrder = 3
  end
  object UniButton3: TUniButton
    Left = 16
    Top = 398
    Width = 80
    Height = 22
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = UniButton3Click
  end
end
