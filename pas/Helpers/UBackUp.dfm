object BackUp: TBackUp
  Left = 0
  Top = 0
  Caption = 'BackUp'
  ClientHeight = 301
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 801
    Height = 301
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 24
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBalance
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1q
        end
        item
          Format = '!9;0;_'
          Kind = skSum
          Column = cxGrid1DBTableView1q
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '!9;0;_'
          Kind = skSum
          Column = cxGrid1DBTableView1q
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      object cxGrid1DBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
      end
      object cxGrid1DBTableView1q: TcxGridDBColumn
        DataBinding.FieldName = 'q'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssInactive
        Properties.ValueChecked = 'True'
        Properties.ValueUnchecked = 'False'
        Visible = False
        GroupIndex = 0
        Width = 85
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object MaskEdit1: TMaskEdit
    Left = 408
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'MaskEdit1'
  end
  object dump1: TUniDump
    OnBackupProgress = dump1BackupProgress
    Connection = DM1.db1
    Options.QuoteNames = True
    Options.CompleteInsert = True
    Left = 408
    Top = 232
  end
  object QueryBalance: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      '  (id, name, uni_name, reg_name)'
      'VALUES'
      '  (:id, :name, :uni_name, :reg_name)')
    SQLDelete.Strings = (
      'DELETE FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'SET'
      
        '  id = :id, name = :name, uni_name = :uni_name, reg_name = :reg_' +
        'name'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT id, name, uni_name, reg_name FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'select * from t1')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 214
  end
  object dsBalance: TDataSource
    DataSet = QueryBalance
    Left = 480
    Top = 272
  end
end
