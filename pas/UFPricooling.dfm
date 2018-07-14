object FPricooling: TFPricooling
  Left = 0
  Top = 0
  Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
  ClientHeight = 326
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameProcooling1: TFrameProcooling
    Left = 0
    Top = 0
    Width = 544
    Height = 326
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 544
    ExplicitHeight = 326
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 544
      ExplicitWidth = 544
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          69
          0)
      end
    end
    inherited GridStatWork: TcxGrid
      Width = 544
      Height = 294
      ExplicitWidth = 544
      ExplicitHeight = 294
    end
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
    SQL.Strings = (
      'SELECT '
      ' *'
      'FROM '
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'where  id<>1'
      'order by name')
    Left = 136
    Top = 120
  end
end
