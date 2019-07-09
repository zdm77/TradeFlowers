object FDict: TFDict
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  ClientHeight = 570
  ClientWidth = 1499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageDict: TcxPageControl
    Left = 245
    Top = 0
    Width = 1254
    Height = 570
    Align = alClient
    TabOrder = 1
    Visible = False
    Properties.ActivePage = tabНоменкл2
    Properties.CustomButtons.Buttons = <
      item
        Position = pcbpTabs
        TabImageIndex = 0
        OnClick = PageDictTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click
      end>
    Properties.CustomButtons.Mode = cbmActiveTab
    Properties.CustomButtons.TabImages = FOsn.imgVerySmall
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    ClientRectBottom = 568
    ClientRectLeft = 2
    ClientRectRight = 1252
    ClientRectTop = 27
    object TabCountry: TcxTabSheet
      Caption = #1057#1090#1088#1072#1085#1099
      ImageIndex = 0
      inline FrameCountry1: TFrameCountry
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited GridUsers: TcxGrid
          Width = 1250
          Height = 506
          ExplicitWidth = 1250
          ExplicitHeight = 506
        end
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
      end
    end
    object TabType: TcxTabSheet
      Caption = #1058#1080#1087#1099
      ImageIndex = 1
      inline FrameType1: TFrameType
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited GridUsers: TcxGrid
          Width = 1250
          Height = 506
          ExplicitWidth = 1250
          ExplicitHeight = 506
        end
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
      end
    end
    object TabPlant: TcxTabSheet
      Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
      ImageIndex = 2
      inline FramePlant1: TFramePlant
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GroupCountry: TcxGroupBox
          ExplicitHeight = 506
          Height = 506
          inherited cxGrid1: TcxGrid
            Height = 486
            ExplicitHeight = 486
          end
        end
        inherited cxspltr1: TcxSplitter
          Height = 506
          ExplicitHeight = 506
        end
        inherited GroupPlant: TcxGroupBox
          ExplicitWidth = 1037
          ExplicitHeight = 506
          Height = 506
          Width = 1037
          inherited GridUsers: TcxGrid
            Width = 1033
            Height = 459
            ExplicitWidth = 1033
            ExplicitHeight = 459
          end
          inherited FrameSearch1: TFrameSearch
            Width = 1033
            ExplicitWidth = 1033
            inherited Group1: TcxGroupBox
              ExplicitWidth = 1033
              Width = 1033
              inherited LabelName: TcxLabel
                Style.IsFontAssigned = True
              end
            end
          end
        end
      end
    end
    object TabSort: TcxTabSheet
      Caption = #1057#1086#1088#1090#1072
      ImageIndex = 3
      inline FrameSort1: TFrameSort
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GroupType: TcxGroupBox
          ExplicitHeight = 476
          Height = 476
          inherited cxGrid1: TcxGrid
            Height = 456
            ExplicitLeft = 2
            ExplicitTop = 18
            ExplicitWidth = 201
            ExplicitHeight = 456
          end
        end
        inherited Split1: TcxSplitter
          Height = 476
          ExplicitHeight = 476
        end
        inherited GroupSort: TcxGroupBox
          ExplicitWidth = 1037
          ExplicitHeight = 476
          Height = 476
          Width = 1037
          inherited GridUsers: TcxGrid
            Width = 1033
            Height = 456
            ExplicitLeft = 2
            ExplicitTop = 18
            ExplicitWidth = 1033
            ExplicitHeight = 456
          end
        end
        inherited GroupSelCountry: TcxGroupBox
          ExplicitWidth = 1250
          Width = 1250
        end
      end
    end
    object TabStract: TcxTabSheet
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072
      ImageIndex = 4
    end
    object TabProduct: TcxTabSheet
      Caption = #1058#1086#1074#1072#1088#1099
      ImageIndex = 5
      inline FrameProduct1: TFrameProduct
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            inherited btnDel: TdxBarLargeButton
              OnClick = FrameTopPanel1btnDelClick
            end
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited lstTreeProducts: TcxDBTreeList
          Width = 1250
          Height = 481
          LookAndFeel.SkinName = ''
          ExplicitTop = 60
          ExplicitWidth = 1250
          ExplicitHeight = 481
        end
        inherited FrameSearch1: TFrameSearch
          Width = 1250
          ExplicitWidth = 1250
          inherited Group1: TcxGroupBox
            ExplicitWidth = 1250
            Width = 1250
            inherited LabelName: TcxLabel
              Style.IsFontAssigned = True
            end
          end
        end
        inherited chkDel: TcxCheckBox
          ExplicitWidth = 120
        end
        inherited Style1: TcxStyleRepository
          PixelsPerInch = 96
        end
      end
    end
    object TabLength: TcxTabSheet
      Caption = #1044#1083#1080#1085#1099
      ImageIndex = 6
      inline FrameLength1: TFrameLength
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridUsers: TcxGrid
          Width = 1250
          Height = 506
          ExplicitWidth = 1250
          ExplicitHeight = 506
        end
      end
    end
    object TabProperties: TcxTabSheet
      Caption = #1057#1074#1086#1081#1089#1090#1074#1072
      ImageIndex = 7
      inline FrameProperties1: TFrameProperties
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GroupType: TcxGroupBox
          ExplicitHeight = 506
          Height = 506
          inherited cxGrid1: TcxGrid
            Height = 486
            ExplicitHeight = 486
          end
        end
        inherited cxspltr1: TcxSplitter
          Height = 506
          ExplicitHeight = 506
        end
        inherited GroupProp: TcxGroupBox
          ExplicitWidth = 1037
          ExplicitHeight = 506
          Height = 506
          Width = 1037
          inherited GridProperties: TcxGrid
            Width = 1033
            Height = 486
            ExplicitWidth = 1033
            ExplicitHeight = 486
          end
        end
      end
    end
    object TabOrg: TcxTabSheet
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      ImageIndex = 8
      inline FrameOrg1: TFrameOrg
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 1250
          Height = 509
          ExplicitWidth = 1250
          ExplicitHeight = 509
          inherited ViewStatWork: TcxGridDBTableView
            OnDblClick = FrameOrg1ViewStatWorkDblClick
          end
        end
      end
    end
    object TabUsers: TcxTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      ImageIndex = 9
      inline FrameUsers1: TFrameUsers
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GroupOrg: TcxGroupBox
          ExplicitHeight = 509
          Height = 509
          inherited cxGrid1: TcxGrid
            Height = 489
            ExplicitLeft = 2
            ExplicitHeight = 489
          end
        end
        inherited GroupUsers: TcxGroupBox
          ExplicitWidth = 1005
          ExplicitHeight = 509
          Height = 509
          Width = 1005
          inherited GridUsers: TcxGrid
            Width = 1001
            Height = 489
            ExplicitWidth = 1001
            ExplicitHeight = 489
            inherited ViewStatWork: TcxGridDBTableView
              OnDblClick = FrameUsers1ViewStatWorkDblClick
            end
          end
        end
      end
    end
    object TabClient: TcxTabSheet
      Caption = #1050#1083#1080#1077#1085#1090#1099
      ImageIndex = 10
      inline FrameClient1: TFrameClient
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 1250
          Height = 480
          ExplicitWidth = 1250
          ExplicitHeight = 480
          inherited ViewStatWork: TcxGridDBTableView
            OnDblClick = FrameClient1ViewStatWorkDblClick
          end
        end
        inherited Group1: TcxGroupBox
          ExplicitWidth = 1250
          Width = 1250
          inherited edtOrg: TcxLookupComboBox
            Properties.OnEditValueChanged = FrameClient1edtOrgPropertiesEditValueChanged
            Style.LookAndFeel.SkinName = ''
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
          end
          inherited chkDel: TcxCheckBox
            ExplicitWidth = 120
          end
        end
        inherited Style1: TcxStyleRepository
          PixelsPerInch = 96
        end
        inherited Report1: TfrxReport
          Datasets = <>
          Variables = <>
          Style = <>
        end
      end
    end
    object TabРоли: TcxTabSheet
      Caption = #1056#1086#1083#1080
      ImageIndex = 11
      inline FrameRole1: TFrameRole
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridUsers: TcxGrid
          Width = 1250
          Height = 509
          ExplicitWidth = 1250
          ExplicitHeight = 509
          inherited ViewUsers: TcxGridDBTableView
            OnDblClick = FrameRole1ViewUsersDblClick
          end
        end
      end
    end
    object TabКарго: TcxTabSheet
      Caption = #1050#1072#1088#1075#1086
      ImageIndex = 12
      inline FrameKargo1: TFrameKargo
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 1250
          Height = 509
          ExplicitWidth = 1250
          ExplicitHeight = 509
        end
      end
    end
    object TabАвиалинии: TcxTabSheet
      Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1080
      ImageIndex = 13
      inline FrameAirLine1: TFrameAirLine
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridAirLine: TcxGrid
          Width = 1250
          Height = 509
          ExplicitWidth = 1250
          ExplicitHeight = 509
        end
      end
    end
    object TabТраки: TcxTabSheet
      Caption = #1058#1088#1072#1082#1080
      ImageIndex = 14
      inline FrameTrack1: TFrameTrack
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 1250
          Height = 509
          ExplicitWidth = 1250
          ExplicitHeight = 509
        end
      end
    end
    object TabPricooling: TcxTabSheet
      Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
      ImageIndex = 15
      inline FrameProcooling1: TFrameProcooling
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 1250
          Height = 509
          ExplicitWidth = 1250
          ExplicitHeight = 509
        end
      end
    end
    object TabМаркировки: TcxTabSheet
      Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1080
      ImageIndex = 16
      inline FrameMarking1: TFrameMarking
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited lstTreeProducts: TcxDBTreeList
          Width = 1250
          Height = 509
          LookAndFeel.SkinName = ''
          ExplicitWidth = 1250
          ExplicitHeight = 509
        end
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited Style1: TcxStyleRepository
          PixelsPerInch = 96
        end
      end
    end
    object TabСтендинг: TcxTabSheet
      Caption = #1057#1090#1077#1085#1076#1080#1085#1075
      ImageIndex = 17
      inline FrameStanding1: TFrameStanding
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridUsers: TcxGrid
          Width = 1250
          Height = 509
          ExplicitWidth = 1250
          ExplicitHeight = 509
          inherited ViewUsers: TcxGridDBTableView
            OnDblClick = FrameStanding1ViewUsersDblClick
          end
        end
      end
    end
    object TabПоставщики: TcxTabSheet
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      ImageIndex = 18
      inline FrameSupplier: TFrameClient
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 1250
          Height = 480
          ExplicitWidth = 1250
          ExplicitHeight = 480
        end
        inherited Group1: TcxGroupBox
          ExplicitWidth = 1250
          Width = 1250
          inherited edtOrg: TcxLookupComboBox
            Style.LookAndFeel.SkinName = ''
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
          end
          inherited chkDel: TcxCheckBox
            ExplicitWidth = 120
          end
        end
        inherited Style1: TcxStyleRepository
          PixelsPerInch = 96
        end
        inherited Report1: TfrxReport
          Datasets = <>
          Variables = <>
          Style = <>
        end
      end
    end
    object TabPrice: TcxTabSheet
      Caption = 'Price'
      ImageIndex = 19
      inline FramePriceLength1: TFramePriceLength
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited GridPriceL: TcxDBPivotGrid
          Width = 1250
          Height = 507
          LookAndFeel.SkinName = ''
          ExplicitWidth = 1250
          ExplicitHeight = 507
          inherited GridPriceLg_name: TcxDBPivotGridField
            UniqueName = #1062#1077#1085#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
          end
          inherited GridPriceLl_name: TcxDBPivotGridField
            UniqueName = #1044#1083#1080#1085#1099
          end
          inherited GridPriceLcxDBPivotGridField: TcxDBPivotGridField
            UniqueName = #1094#1077#1085#1072
          end
          inherited Rec_ID: TcxDBPivotGridField
            UniqueName = 'Rec_ID'
          end
        end
        inherited barProduct: TdxBarManager
          PixelsPerInch = 96
        end
        inherited pmAdd: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmEdt: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmDel: TdxBarPopupMenu
          PixelsPerInch = 96
        end
      end
    end
    object TabЦеха: TcxTabSheet
      Caption = #1062#1077#1093#1072
      ImageIndex = 20
      inline FrameWarehouse1: TFrameWarehouse
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridWarehouse: TcxGrid
          Width = 1250
          Height = 506
          ExplicitTop = 35
          ExplicitWidth = 1250
          ExplicitHeight = 506
        end
      end
    end
    object TabFITO: TcxTabSheet
      Caption = #1060#1080#1090#1086
      ImageIndex = 21
      inline FrameFITO1: TFrameFITO
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridUsers: TcxGrid
          Width = 1250
          Height = 503
          ExplicitWidth = 1250
          ExplicitHeight = 503
        end
      end
    end
    object PageДлинаВес: TcxTabSheet
      Caption = #1044#1083#1080#1085#1072'-'#1042#1077#1089
      ImageIndex = 22
      inline FrameTypeLengthWeight1: TFrameTypeLengthWeight
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GroupCountry: TcxGroupBox
          ExplicitHeight = 503
          Height = 503
          inherited cxGrid1: TcxGrid
            Height = 483
            ExplicitHeight = 483
          end
        end
        inherited cxspltr1: TcxSplitter
          Height = 503
          ExplicitHeight = 503
        end
        inherited Group1: TcxGroupBox
          ExplicitWidth = 1037
          ExplicitHeight = 503
          Height = 503
          Width = 1037
          inherited GridUsers: TcxGrid
            Width = 1033
            Height = 483
            ExplicitWidth = 1033
            ExplicitHeight = 483
          end
        end
      end
    end
    object tabКоробки: TcxTabSheet
      Caption = #1050#1086#1088#1086#1073#1082#1080
      ImageIndex = 23
      inline FrameBox1: TFrameBox
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            DockControlHeights = (
              0
              0
              34
              0)
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GridUsers: TcxGrid
          Width = 1250
          Height = 503
          ExplicitWidth = 1250
          ExplicitHeight = 503
        end
      end
    end
    object tabДоступ: TcxTabSheet
      Caption = #1044#1086#1089#1090#1091#1087
      ImageIndex = 24
      inline FrameAccess1: TFrameAccess
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        VertScrollBar.Smooth = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited cxGroupBox2: TcxGroupBox
          ExplicitWidth = 1042
          ExplicitHeight = 504
          Height = 504
          Width = 1042
          inherited PageAccess: TcxPageControl
            Width = 1038
            Height = 500
            ExplicitWidth = 1038
            ExplicitHeight = 500
            ClientRectBottom = 500
            ClientRectRight = 1038
            inherited TabDict: TcxTabSheet
              ExplicitTop = 24
              ExplicitWidth = 685
              ExplicitHeight = 425
              inherited GroupAccesDict: TcxGroupBox
                inherited chkDictAll: TcxDBCheckBox
                  ExplicitWidth = 113
                end
              end
              inherited PageDictAccess: TcxPageControl
                inherited tabOsn: TcxTabSheet
                  inherited cxGroupBox6: TcxGroupBox
                    inherited cxDBCheckBox1: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox2: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox3: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox4: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxDBCheckBox5: TcxDBCheckBox
                    ExplicitWidth = 108
                  end
                  inherited cxGroupBox7: TcxGroupBox
                    inherited cxDBCheckBox6: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox7: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox8: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox9: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox8: TcxGroupBox
                    inherited cxDBCheckBox10: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox11: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox12: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox16: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                end
                inherited tabСтуктура: TcxTabSheet
                  inherited cxDBCheckBox14: TcxDBCheckBox
                    ExplicitWidth = 108
                  end
                  inherited cxGroupBox5: TcxGroupBox
                    inherited cxDBCheckBox24: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox25: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox26: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox27: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox9: TcxGroupBox
                    inherited cxDBCheckBox28: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox29: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox30: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox31: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox10: TcxGroupBox
                    inherited cxDBCheckBox32: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox33: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox34: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox35: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox11: TcxGroupBox
                    inherited cxDBCheckBox36: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox37: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox38: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox39: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox12: TcxGroupBox
                    inherited cxDBCheckBox40: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox41: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox42: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox43: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox13: TcxGroupBox
                    inherited cxDBCheckBox44: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox45: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox46: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox47: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox14: TcxGroupBox
                    inherited cxDBCheckBox48: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox49: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox50: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox51: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                end
                inherited tabЗакупка: TcxTabSheet
                  inherited cxDBCheckBox21: TcxDBCheckBox
                    ExplicitWidth = 108
                  end
                  inherited cxGroupBox15: TcxGroupBox
                    inherited cxDBCheckBox52: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox53: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox54: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox55: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox16: TcxGroupBox
                    inherited cxDBCheckBox56: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox57: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox58: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox59: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox17: TcxGroupBox
                    inherited cxDBCheckBox60: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox61: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox62: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox63: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox18: TcxGroupBox
                    inherited cxDBCheckBox64: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox65: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox66: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox67: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox19: TcxGroupBox
                    inherited cxDBCheckBox68: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox69: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox70: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox71: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox20: TcxGroupBox
                    inherited cxDBCheckBox72: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox73: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox74: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox75: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox21: TcxGroupBox
                    inherited cxDBCheckBox76: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox77: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox78: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox79: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                end
                inherited tabОрганизация: TcxTabSheet
                  inherited cxDBCheckBox22: TcxDBCheckBox
                    ExplicitWidth = 108
                  end
                  inherited cxGroupBox22: TcxGroupBox
                    inherited cxDBCheckBox80: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox81: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox82: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox83: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox23: TcxGroupBox
                    inherited cxDBCheckBox84: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox85: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox86: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox87: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox24: TcxGroupBox
                    inherited cxDBCheckBox88: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox89: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox90: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox91: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                end
                inherited tabАдминистрирование: TcxTabSheet
                  inherited cxDBCheckBox23: TcxDBCheckBox
                    ExplicitWidth = 108
                  end
                  inherited cxGroupBox25: TcxGroupBox
                    inherited cxDBCheckBox92: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox93: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox94: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox95: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox26: TcxGroupBox
                    inherited cxDBCheckBox96: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox97: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox98: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox99: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                end
              end
            end
            inherited tabБухгалтерия: TcxTabSheet
              ExplicitTop = 24
              ExplicitWidth = 1038
              ExplicitHeight = 476
              inherited cxGroupBox27: TcxGroupBox
                ExplicitWidth = 1038
                Width = 1038
                inherited cxDBCheckBox100: TcxDBCheckBox
                  ExplicitWidth = 113
                end
              end
              inherited cxPageControl1: TcxPageControl
                Width = 1038
                Height = 451
                ExplicitWidth = 1038
                ExplicitHeight = 451
                ClientRectBottom = 451
                ClientRectRight = 1038
                inherited cxTabSheet1: TcxTabSheet
                  ExplicitWidth = 1038
                  ExplicitHeight = 427
                  inherited cxGroupBox28: TcxGroupBox
                    inherited cxDBCheckBox101: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox102: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox103: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox104: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox29: TcxGroupBox
                    inherited cxDBCheckBox106: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox108: TcxDBCheckBox
                      ExplicitWidth = 120
                    end
                    inherited cxDBCheckBox119: TcxDBCheckBox
                      ExplicitWidth = 158
                    end
                    inherited cxDBCheckBox120: TcxDBCheckBox
                      ExplicitWidth = 114
                    end
                    inherited cxDBCheckBox121: TcxDBCheckBox
                      ExplicitWidth = 152
                    end
                    inherited cxDBCheckBox122: TcxDBCheckBox
                      ExplicitWidth = 116
                    end
                    inherited cxDBCheckBox123: TcxDBCheckBox
                      ExplicitWidth = 128
                    end
                  end
                  inherited cxGroupBox30: TcxGroupBox
                    inherited cxDBCheckBox110: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox112: TcxDBCheckBox
                      ExplicitWidth = 84
                    end
                  end
                  inherited cxGroupBox31: TcxGroupBox
                    ExplicitWidth = 1038
                    Width = 1038
                    inherited cxDBCheckBox105: TcxDBCheckBox
                      ExplicitWidth = 108
                    end
                  end
                  inherited cxGroupBox37: TcxGroupBox
                    inherited cxDBCheckBox116: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox117: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox118: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                end
              end
            end
            inherited TabWork: TcxTabSheet
              ExplicitTop = 24
              ExplicitWidth = 685
              ExplicitHeight = 425
              inherited cxGroupBox3: TcxGroupBox
                inherited chkWorkOsn: TcxDBCheckBox
                  ExplicitWidth = 113
                end
              end
              inherited cxPageControl2: TcxPageControl
                inherited cxTabSheet2: TcxTabSheet
                  inherited cxGroupBox32: TcxGroupBox
                    inherited cxDBCheckBox13: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox15: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox17: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox18: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                  inherited cxGroupBox35: TcxGroupBox
                    inherited cxDBCheckBox111: TcxDBCheckBox
                      ExplicitWidth = 108
                    end
                  end
                  inherited cxGroupBox34: TcxGroupBox
                    inherited cxDBCheckBox107: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox109: TcxDBCheckBox
                      ExplicitWidth = 103
                    end
                  end
                end
                inherited tabТаможня: TcxTabSheet
                  inherited cxGroupBox33: TcxGroupBox
                    inherited cxDBCheckBox19: TcxDBCheckBox
                      ExplicitWidth = 108
                    end
                  end
                  inherited cxGroupBox36: TcxGroupBox
                    inherited cxDBCheckBox20: TcxDBCheckBox
                      ExplicitWidth = 72
                    end
                    inherited cxDBCheckBox113: TcxDBCheckBox
                      ExplicitWidth = 86
                    end
                    inherited cxDBCheckBox114: TcxDBCheckBox
                      ExplicitWidth = 109
                    end
                    inherited cxDBCheckBox115: TcxDBCheckBox
                      ExplicitWidth = 74
                    end
                  end
                end
              end
            end
            inherited TabReports: TcxTabSheet
              inherited cxGroupBox4: TcxGroupBox
                inherited chkModuleReport: TcxDBCheckBox
                  ExplicitWidth = 113
                end
              end
            end
          end
        end
        inherited cxGroupBox1: TcxGroupBox
          ExplicitHeight = 504
          Height = 504
          inherited GridRoles: TcxGrid
            Height = 484
            ExplicitHeight = 484
          end
        end
        inherited Spliter1: TcxSplitter
          Height = 504
          ExplicitHeight = 504
        end
        inherited Group4: TcxGroupBox
          ExplicitWidth = 1250
          Width = 1250
          inherited cxDBNavigator1: TcxDBNavigator
            Height = 34
            ExplicitHeight = 34
          end
        end
        inherited cxmglst1: TcxImageList
          FormatVersion = 1
        end
      end
    end
    object tabНоменкл2: TcxTabSheet
      Caption = #1053#1086#1084#1077#1085#1082#1083'2'
      ImageIndex = 25
      inline FrameProductNew1: TFrameProductNew
        Left = 0
        Top = 0
        Width = 1250
        Height = 541
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1250
        ExplicitHeight = 541
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 1250
          ExplicitWidth = 1250
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited FrameSearch1: TFrameSearch
          Width = 1250
          ExplicitWidth = 1250
          inherited Group1: TcxGroupBox
            ExplicitWidth = 1250
            Width = 1250
            inherited LabelName: TcxLabel
              Style.IsFontAssigned = True
            end
          end
        end
        inherited GridProduct: TcxGrid
          Width = 1250
          Height = 481
          ExplicitWidth = 1250
          ExplicitHeight = 481
        end
        inherited Style1: TcxStyleRepository
          PixelsPerInch = 96
        end
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 237
    Top = 0
    Width = 8
    Height = 570
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = dxnvbr1
  end
  object dxnvbr1: TdxNavBar
    Left = 0
    Top = 0
    Width = 237
    Height = 570
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 2
    View = 12
    OptionsBehavior.Common.AllowSelectLinks = True
    object GroupОснова: TdxNavBarGroup
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.Expandable = False
      OptionsExpansion.ShowExpandButton = False
      Links = <
        item
          Item = ItemТовары
        end
        item
          Item = ItemКлиент
        end
        item
          Item = ItemПоставщики
        end
        item
          Item = ItemНоменкл2
        end>
    end
    object GroupСтруктура: TdxNavBarGroup
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = ItemСтраны
        end
        item
          Item = ItemТипы
        end
        item
          Item = ItemСвойства
        end
        item
          Item = ItemПлантации
        end
        item
          Item = ItemСорта
        end
        item
          Item = ItemДлинаВес
        end
        item
          Item = ItemУпаковка
        end>
    end
    object GroupТорг: TdxNavBarGroup
      Caption = #1051#1086#1075#1080#1089#1090#1080#1082#1072
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = ItemМаркировки
        end
        item
          Item = ItemАвиалинии
        end
        item
          Item = ItemКарго
        end
        item
          Item = ItemТраки
        end
        item
          Item = ItemPricooling
        end
        item
          Item = ItemFITO
        end
        item
          Item = ItemСтендинг
        end>
    end
    object GroupОрг: TdxNavBarGroup
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = ItemОрганизация
        end
        item
          Item = ItemPrice
        end
        item
          Item = ItemЦеха
        end>
    end
    object GroupАдмин: TdxNavBarGroup
      Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = ItemПользователи
        end
        item
          Item = ItemРоль
        end
        item
          Item = ItemДоступ
        end>
    end
    object ItemТовары: TdxNavBarItem
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      OnClick = ItemТоварыClick
    end
    object ItemСтраны: TdxNavBarItem
      Caption = #1057#1090#1088#1072#1085#1099
      OnClick = ItemСтраныClick
    end
    object ItemТипы: TdxNavBarItem
      Caption = #1058#1080#1087#1099
      OnClick = ItemТипыClick
    end
    object ItemСвойства: TdxNavBarItem
      Caption = #1057#1074#1086#1081#1089#1090#1074#1072
      OnClick = ItemСвойстваClick
    end
    object ItemПлантации: TdxNavBarItem
      Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
      OnClick = ItemПлантацииClick
    end
    object ItemСорта: TdxNavBarItem
      Caption = #1057#1086#1088#1090#1072
      OnClick = ItemСортаClick
    end
    object ItemОрганизация: TdxNavBarItem
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      OnClick = ItemОрганизацияClick
    end
    object ItemПользователи: TdxNavBarItem
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      OnClick = ItemПользователиClick
    end
    object ItemКлиент: TdxNavBarItem
      Caption = #1050#1083#1080#1077#1085#1090#1099
      OnClick = ItemКлиентClick
    end
    object ItemРоль: TdxNavBarItem
      Caption = #1056#1086#1083#1080
      OnClick = ItemРольClick
    end
    object ItemКарго: TdxNavBarItem
      Caption = #1050#1072#1088#1075#1086
      OnClick = ItemКаргоClick
    end
    object ItemАвиалинии: TdxNavBarItem
      Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1080
      OnClick = ItemАвиалинииClick
    end
    object ItemТраки: TdxNavBarItem
      Caption = #1058#1088#1072#1082#1080
      OnClick = ItemТракиClick
    end
    object ItemPricooling: TdxNavBarItem
      Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
      OnClick = ItemPricoolingClick
    end
    object ItemМаркировки: TdxNavBarItem
      Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1080
      OnClick = ItemМаркировкиClick
    end
    object ItemСтендинг: TdxNavBarItem
      Caption = #1057#1090#1077#1085#1076#1080#1085#1075
      OnClick = ItemСтендингClick
    end
    object ItemПоставщики: TdxNavBarItem
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      OnClick = ItemПоставщикиClick
    end
    object ItemPrice: TdxNavBarItem
      Caption = #1055#1088#1072#1081#1089
      Visible = False
      OnClick = ItemPriceClick
    end
    object ItemЦеха: TdxNavBarItem
      Caption = #1052#1077#1089#1090#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080
      OnClick = ItemЦехаClick
    end
    object ItemFITO: TdxNavBarItem
      Caption = #1060#1080#1090#1086
      OnClick = ItemFITOClick
    end
    object ItemДлинаВес: TdxNavBarItem
      Caption = #1044#1083#1080#1085#1072'-'#1042#1077#1089
      OnClick = ItemДлинаВесClick
    end
    object ItemУпаковка: TdxNavBarItem
      Caption = #1059#1087#1072#1082#1086#1074#1082#1072
      OnClick = ItemУпаковкаClick
    end
    object ItemДоступ: TdxNavBarItem
      Caption = #1044#1086#1089#1090#1091#1087
      OnClick = ItemДоступClick
    end
    object ItemНоменкл2: TdxNavBarItem
      Caption = #1053#1086#1084#1077#1085#1082#1083'2'
      OnClick = ItemНоменкл2Click
    end
  end
  object Button1: TButton
    Left = 24
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
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
    Left = 104
    Top = 168
  end
  object dsPr2: TDataSource
    DataSet = dset1
    Left = 96
    Top = 281
  end
  object dset1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 280
  end
  object UniQuery1: TUniQuery
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
    Left = 152
    Top = 280
  end
end
