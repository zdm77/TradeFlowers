object fNewAuction: TfNewAuction
  Left = 0
  Top = 0
  Caption = #1040#1091#1082#1094#1080#1086#1085
  ClientHeight = 649
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1028
    ExplicitHeight = 32
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
      inherited btnAdd: TdxBarLargeButton
        Caption = #1048#1084#1087#1086#1088#1090
        Hint = #1048#1084#1087#1086#1088#1090
        LargeImageIndex = 23
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        Enabled = False
      end
      inherited btnSel: TdxBarLargeButton
        Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100' '#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1100
        Enabled = False
        Hint = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100' '#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1100
        Visible = ivAlways
        OnClick = FrameTopPanel1btnSelClick
      end
    end
  end
  object GridOrder: TStringGrid
    Left = 0
    Top = 32
    Width = 1028
    Height = 617
    Align = alClient
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    TabOrder = 1
    ColWidths = (
      57)
  end
  object Query1: TUniQuery
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
    Left = 352
    Top = 216
  end
  object QueryAuc: TUniQuery
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
      'SELECT '
      '  p."'#1076#1072#1090#1072'",'
      '  p.id id_p,'
      '  s.id id_s,'
      '  s.name,'
      '  s.uni_name,'
      '  s.reg_name,'
      '  s.quantity,'
      '  s.code,'
      '  s."'#1087#1088#1080#1086#1088#1080#1090#1077#1090'"'
      'FROM'
      '  "'#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103'"."'#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103'" p'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (p."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = s.id)'
      '  order by '#1076#1072#1090#1072' Desc')
    Left = 480
    Top = 208
  end
  object dsAuc: TDataSource
    Left = 96
    Top = 200
  end
  object dlgOpen1: TOpenDialog
    Filter = 'Excel|*.xlsx;*.xls'
    Left = 312
    Top = 344
  end
end
