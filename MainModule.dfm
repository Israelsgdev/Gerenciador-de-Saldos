object UniMainModule: TUniMainModule
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Height = 608
  Width = 1289
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from isr_fin_contacorrente order by id_conta')
    Left = 24
    Top = 8
    object FDQuery1ID_CONTA: TFMTBCDField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 38
    end
    object FDQuery1ID_SEDE: TBCDField
      FieldName = 'ID_SEDE'
      Origin = 'ID_SEDE'
      Required = True
      Precision = 2
      Size = 0
    end
    object FDQuery1NOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Origin = 'NOME_BANCO'
      Required = True
      Size = 30
    end
    object FDQuery1NROCONTA: TBCDField
      FieldName = 'NROCONTA'
      Origin = 'NROCONTA'
      Required = True
      Precision = 11
      Size = 0
    end
    object FDQuery1DIGCONTA: TBCDField
      FieldName = 'DIGCONTA'
      Origin = 'DIGCONTA'
      Required = True
      Precision = 2
      Size = 0
    end
    object FDQuery1STATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQuery1AGENCIA: TBCDField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Precision = 5
      Size = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 24
    Top = 56
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=TITAN'
      'User_Name=consinco'
      'Password=c5_4425'
      'DriverID=Ora')
    Connected = True
    Left = 1216
    Top = 16
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select distinct razaosocial from ge_empresa where status = '#39'A'#39' a' +
        'nd razaosocial not in (select nome_sede from isr_fin_sede)')
    Left = 96
    Top = 8
    object FDQuery2RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 96
    Top = 56
  end
  object FDQuery1a: TFDQuery
    Connection = FDConnection1
    Left = 24
    Top = 112
    object FMTBCDField1: TFMTBCDField
      DisplayWidth = 11
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 38
    end
    object BCDField1: TBCDField
      DisplayWidth = 19
      FieldName = 'NROEMPRESA'
      Origin = 'NROEMPRESA'
      Precision = 2
      Size = 0
    end
    object StringField1: TStringField
      DisplayWidth = 32
      FieldName = 'NOME_BANCO'
      Origin = 'NOME_BANCO'
      Size = 30
    end
    object BCDField2: TBCDField
      DisplayWidth = 15
      FieldName = 'NROCONTA'
      Origin = 'NROCONTA'
      Precision = 11
      Size = 0
    end
    object BCDField3: TBCDField
      DisplayWidth = 12
      FieldName = 'DIGCONTA'
      Origin = 'DIGCONTA'
      Precision = 2
      Size = 0
    end
    object StringField2: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_conta, data_lancamento,saldo SALDONUM, '#39'R$ '#39' || round(' +
        'saldo,2) as SALDO from isr_fin_contasaldo order by data_lancamen' +
        'to desc'
      ' ')
    Left = 168
    Top = 8
    object FDQuery3ID_CONTA: TFMTBCDField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      Precision = 38
      Size = 38
    end
    object FDQuery3DATA_LANCAMENTO: TDateTimeField
      FieldName = 'DATA_LANCAMENTO'
      Origin = 'DATA_LANCAMENTO'
    end
    object FDQuery3SALDONUM: TBCDField
      FieldName = 'SALDONUM'
      Origin = 'SALDONUM'
      Precision = 10
      Size = 2
    end
    object FDQuery3SALDO: TStringField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Size = 43
    end
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 168
    Top = 56
  end
  object FDQuery3s: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from isr_fin_contacorrente where status = '#39'A'#39' order by ' +
        'id_conta')
    Left = 169
    Top = 112
    object FDQuery3sID_CONTA: TFMTBCDField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 38
    end
    object FDQuery3sID_SEDE: TBCDField
      FieldName = 'ID_SEDE'
      Origin = 'ID_SEDE'
      Required = True
      Precision = 2
      Size = 0
    end
    object FDQuery3sNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Origin = 'NOME_BANCO'
      Required = True
      Size = 30
    end
    object FDQuery3sNROCONTA: TBCDField
      FieldName = 'NROCONTA'
      Origin = 'NROCONTA'
      Required = True
      Precision = 11
      Size = 0
    end
    object FDQuery3sDIGCONTA: TBCDField
      FieldName = 'DIGCONTA'
      Origin = 'DIGCONTA'
      Required = True
      Precision = 2
      Size = 0
    end
    object FDQuery3sSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQuery3sAGENCIA: TBCDField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Precision = 5
      Size = 0
    end
  end
  object DataSource3s: TDataSource
    DataSet = FDQuery3s
    Left = 169
    Top = 168
  end
  object FDQuery4: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from isr_fin_sede order by id_sede')
    Left = 248
    Top = 8
    object FDQuery4ID_SEDE: TFMTBCDField
      DisplayWidth = 12
      FieldName = 'ID_SEDE'
      Precision = 38
      Size = 38
    end
    object FDQuery4NOME_SEDE: TStringField
      DisplayWidth = 40
      FieldName = 'NOME_SEDE'
      Size = 55
    end
  end
  object DataSource4: TDataSource
    DataSet = FDQuery4
    Left = 248
    Top = 56
  end
  object FDQuery5: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from isr_fin_filial order by id_sede,nrofilial')
    Left = 320
    Top = 8
    object FDQuery5NROFILIAL: TFMTBCDField
      FieldName = 'NROFILIAL'
      Origin = 'NROFILIAL'
      Precision = 38
      Size = 38
    end
    object FDQuery5RAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 55
    end
    object FDQuery5ID_SEDE: TFMTBCDField
      FieldName = 'ID_SEDE'
      Origin = 'ID_SEDE'
      Precision = 38
      Size = 38
    end
  end
  object DataSource5: TDataSource
    DataSet = FDQuery5
    Left = 320
    Top = 56
  end
  object FDQuery2s: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select nroempresa,fantasia,razaosocial,nomereduzido from ge_empr' +
        'esa where status = '#39'A'#39' order by nroempresa')
    Left = 96
    Top = 112
    object FDQuery2sNROEMPRESA: TBCDField
      FieldName = 'NROEMPRESA'
      Origin = 'NROEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 6
      Size = 0
    end
    object FDQuery2sFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 30
    end
    object FDQuery2sRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object FDQuery2sNOMEREDUZIDO: TStringField
      FieldName = 'NOMEREDUZIDO'
      Origin = 'NOMEREDUZIDO'
      Required = True
      Size = 15
    end
  end
  object DataSource6: TDataSource
    DataSet = FDQuery2s
    Left = 96
    Top = 168
  end
  object FDQuery1d: TFDQuery
    Connection = FDConnection1
    Left = 24
    Top = 168
  end
  object FDQuery3d: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_conta, data_lancamento,saldo from isr_fin_contasaldo o' +
        'rder by data_lancamento desc'
      ' ')
    Left = 169
    Top = 232
    object FDQuery3dID_CONTA: TFMTBCDField
      FieldName = 'ID_CONTA'
      Precision = 38
      Size = 38
    end
    object FDQuery3dDATA_LANCAMENTO: TDateTimeField
      FieldName = 'DATA_LANCAMENTO'
    end
    object FDQuery3dSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 10
      Size = 2
    end
  end
  object DataSource3d: TDataSource
    DataSet = FDQuery3d
    Left = 169
    Top = 288
  end
end
