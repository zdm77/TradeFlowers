object FrameTypeAuc: TFrameTypeAuc
  Left = 0
  Top = 0
  Width = 1056
  Height = 624
  TabOrder = 0
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 624
    Width = 1056
    inline FrameTopPanel1: TFrameTopPanel
      Left = 2
      Top = 2
      Width = 1052
      Height = 35
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 1052
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          34
          0)
        inherited btnAdd: TdxBarLargeButton
          Caption = #1048#1084#1087#1086#1088#1090
          Hint = #1048#1084#1087#1086#1088#1090
          OnClick = btnAddClick
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = btnDelClick
        end
      end
    end
    object GridStatWork: TcxGrid
      Left = 2
      Top = 83
      Width = 1052
      Height = 539
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitTop = 57
      ExplicitHeight = 565
      object ViewReceipt: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        OnCellClick = ViewReceiptCellClick
        DataController.DataSource = dsTypeAuc
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object ViewReceiptCODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 97
        end
        object ViewReceiptname: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'name'
          Width = 217
        end
      end
      object LevelStatWork: TcxGridLevel
        GridView = ViewReceipt
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 2
      Top = 37
      Align = alTop
      TabOrder = 2
      Visible = False
      Height = 46
      Width = 1052
      object lbl1: TLabel
        Left = 16
        Top = 20
        Width = 22
        Height = 13
        Caption = #1058#1080#1087':'
      end
      object edtTypeSrez: TcxComboBox
        Left = 44
        Top = 16
        TabOrder = 0
        Text = 'edtTypeSrez'
        Width = 173
      end
    end
  end
  object QueryTypeAuc: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'select * from "'#1072#1091#1082#1094#1080#1086#1085'"."'#1058#1080#1087#1099'" order by name')
    Left = 480
    Top = 200
  end
  object dsTypeAuc: TDataSource
    DataSet = QueryTypeAuc
    Left = 480
    Top = 272
  end
end
