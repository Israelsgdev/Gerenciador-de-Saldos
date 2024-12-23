object UniForm2: TUniForm2
  Left = 0
  Top = 0
  ClientHeight = 442
  ClientWidth = 702
  Caption = 'UniForm2'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 8
    Top = 36
    Width = 345
    Height = 97
    Hint = ''
    TabOrder = 0
    Caption = ''
    object UniEdit1: TUniEdit
      Left = 184
      Top = 28
      Width = 151
      Hint = ''
      Text = ''
      TabOrder = 1
      InputType = 'text'
    end
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 16
      Top = 28
      Width = 152
      Hint = ''
      DateTime = 45580.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 16
      Top = 9
      Width = 67
      Height = 13
      Hint = ''
      Caption = 'Data do Saldo'
      TabOrder = 3
    end
    object UniLabel3: TUniLabel
      Left = 184
      Top = 9
      Width = 24
      Height = 13
      Hint = ''
      Caption = 'Valor'
      TabOrder = 4
    end
    object UniButton2: TUniButton
      Left = 122
      Top = 56
      Width = 103
      Height = 25
      Hint = ''
      Caption = 'Alterar'
      TabOrder = 5
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 232
      Top = 56
      Width = 103
      Height = 25
      Hint = ''
      Caption = 'Excluir'
      TabOrder = 6
      OnClick = UniButton3Click
    end
    object UniButton1: TUniButton
      Left = 16
      Top = 56
      Width = 97
      Height = 25
      Hint = ''
      Caption = 'Inserir'
      TabOrder = 7
      OnClick = UniButton1Click
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 165
    Width = 345
    Height = 236
    Hint = ''
    DataSource = UniMainModule.DataSource3s
    WebOptions.Paged = False
    WebOptions.KeyNavigation = knDisabled
    WebOptions.FetchAll = True
    LoadMask.Message = 'Loading data...'
    TabOrder = 1
    OnBodyClick = UniDBGrid1BodyClick
    Columns = <
      item
        FieldName = 'ID_CONTA'
        Title.Caption = 'C'#243'd Conta'
        Width = 67
      end
      item
        FieldName = 'NOME_BANCO'
        Title.Caption = 'Banco'
        Width = 99
      end
      item
        FieldName = 'NROCONTA'
        Title.Caption = 'N'#186' da Conta'
        Width = 94
      end
      item
        FieldName = 'DIGCONTA'
        Title.Caption = 'D'#237'gito'
        Width = 53
      end>
  end
  object UniLabel1: TUniLabel
    Left = 32
    Top = 146
    Width = 67
    Height = 13
    Hint = ''
    Caption = 'Contas Ativas'
    TabOrder = 2
  end
  object UniDBGrid2: TUniDBGrid
    Left = 368
    Top = 36
    Width = 324
    Height = 365
    Hint = ''
    DataSource = UniMainModule.DataSource3
    WebOptions.Paged = False
    WebOptions.FetchAll = True
    LoadMask.Message = 'Loading data...'
    TabOrder = 3
    Columns = <
      item
        FieldName = 'ID_CONTA'
        Title.Caption = 'C'#243'd Conta'
        Width = 70
      end
      item
        FieldName = 'DATA_LANCAMENTO'
        Title.Caption = 'Data do Saldo'
        Width = 99
      end
      item
        FieldName = 'SALDO'
        Title.Caption = 'Saldo'
        Width = 112
      end
      item
        FieldName = 'SALDONUM'
        Title.Caption = 'SALDONUM'
        Width = 64
        Visible = False
      end>
  end
  object UniLabel4: TUniLabel
    Left = 368
    Top = 17
    Width = 79
    Height = 13
    Hint = ''
    Caption = 'Saldos Lan'#231'ados'
    TabOrder = 4
  end
  object UniLabel5: TUniLabel
    Left = 32
    Top = 17
    Width = 102
    Height = 13
    Hint = ''
    Caption = 'Lan'#231'amento de Saldo'
    TabOrder = 5
  end
  object UniButton4: TUniButton
    Left = 8
    Top = 407
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = UniButton4Click
  end
  object UniButton5: TUniButton
    Left = 101
    Top = 407
    Width = 172
    Height = 25
    Hint = ''
    Caption = 'Inserir Previs'#227'o de Cr'#233'dito'
    TabOrder = 7
    OnClick = UniButton5Click
  end
end
