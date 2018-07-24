object DM1: TDM1
  OldCreateOrder = False
  Height = 525
  Width = 758
  object db1: TUniConnection
    ProviderName = 'PostgreSQL'
    Database = 'wwwunifloragroup_trade'
    SpecificOptions.Strings = (
      'PostgreSQL.Charset=WIN1251'
      'PostgreSQL.UseUnicode=True'
      'PostgreSQL.ConnectionTimeout=0')
    Options.DisconnectedMode = True
    Options.KeepDesignConnected = False
    PoolingOptions.MaxPoolSize = 100000
    PoolingOptions.ConnectionLifetime = 3
    Pooling = True
    Username = 'uniflora_trade'
    LoginPrompt = False
    Left = 8
    Top = 16
    EncryptedPassword = 'B4FF94FF9BFFCCFFC8FFBCFF94FF8EFF99FF92FF'
  end
  object Provider1: TPostgreSQLUniProvider
    Left = 72
    Top = 8
  end
  object QueryGlobalUser: TUniQuery
    Connection = db1
    SQL.Strings = (
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1088#1086#1083#1080
    Left = 56
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dbUpd: TUniConnection
    ProviderName = 'PostgreSQL'
    Database = 'wwwunifloragroup_trade'
    SpecificOptions.Strings = (
      'PostgreSQL.Charset=WIN1251'
      'PostgreSQL.UseUnicode=True'
      'PostgreSQL.ConnectionTimeout=0')
    Options.DisconnectedMode = True
    Server = 'pgsql.uniflora.mass.hc.ru'
    LoginPrompt = False
    Left = 168
    Top = 24
    EncryptedPassword = 'B4FF94FF9BFFCCFFC8FFBCFF94FF8EFF99FF92FF'
  end
  object QueryUpd: TUniQuery
    Connection = dbUpd
    SQL.Strings = (
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    Left = 176
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object db2: TUniConnection
    ProviderName = 'Access'
    SpecificOptions.Strings = (
      'Access.UseUnicode=True')
    Options.DisconnectedMode = True
    Left = 204
    Top = 152
  end
  object acsnprvdr1: TAccessUniProvider
    Left = 256
    Top = 148
  end
  object QueryAcc: TUniQuery
    Connection = db2
    SQL.Strings = (
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1088#1086#1083#1080
    Left = 280
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object QueryProductG: TUniQuery
    Connection = db1
    SQL.Strings = (
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1088#1086#1083#1080
    Left = 328
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dbLocal: TUniConnection
    ProviderName = 'SQLite'
    SpecificOptions.Strings = (
      'PostgreSQL.Charset=WIN1251'
      'PostgreSQL.UseUnicode=True'
      'PostgreSQL.ConnectionTimeout=0')
    Options.KeepDesignConnected = False
    PoolingOptions.ConnectionLifetime = 3
    LoginPrompt = False
    Left = 24
    Top = 232
  end
  object SQLiteUniProvider1: TSQLiteUniProvider
    Left = 112
    Top = 232
  end
  object Query1: TUniQuery
    Connection = db1
    SQL.Strings = (
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1088#1086#1083#1080
    Left = 32
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object QueryProductLocal: TUniQuery
    Connection = db1
    SQL.Strings = (
      'SELECT '
      '  st.uni_name country,'
      '  pl.uni_name plant,'
      '  tp.uni_name tpe,'
      '  s.uni_name sort,'
      '  p.*'
      'FROM'
      '  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" st ON (pl."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = st.id' +
        ')'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" p ON (p."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = p' +
        'l.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (p."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" tp ON (s."'#1082#1086#1076'_'#1090#1080#1087#1072'" = tp.id)'
      '  AND (p."'#1082#1086#1076'_'#1090#1080#1087#1072'" = tp.id)'
      ''
      'order by id')
    AutoCalcFields = False
    Left = 72
    Top = 320
  end
  object Monotor1: TUniSQLMonitor
    Active = False
    Left = 176
    Top = 296
  end
  object dxMemData1: TdxMemData
    Indexes = <
      item
        FieldName = 'id'
        SortOptions = []
      end>
    SortOptions = []
    Left = 394
    Top = 392
    object MFieldID: TIntegerField
      FieldName = 'id'
    end
    object MFieldName: TStringField
      FieldName = 'uni_name'
      Size = 255
    end
    object dxMemData1код_типа: TIntegerField
      FieldName = #1082#1086#1076'_'#1090#1080#1087#1072
    end
  end
end
