unit UFEditPitenz;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  Vcl.StdCtrls,
  AdvEdit,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxGroupBox,
  UFrameSave,
  UFrameTopPanel,
  cxSplitter,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxCalc,
  UFramePretenzEdit,
  frxClass,
  frxDBSet,
  frxExportXLS;

type
  TFEditPritenz = class(TForm)
    FrameSave1: TFrameSave;
    FramePretenzEdit1: TFramePretenzEdit;
    Report1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxlsxprt1: TfrxXLSExport;
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    { Public declarations }
  end;

var
  FEditPritenz: TFEditPritenz;

implementation

{$R *.dfm}

uses
  UReport,
  USelLang,
  UPasswd;

procedure TFEditPritenz.btnPriorClick(Sender: TObject);
var
  t: TfrxMemoView;
  h, tp: Double;
begin
  Application.CreateForm(TFSelLang, FSelLang);
  FSelLang.ShowModal;
  if FSelLang.FrameSave1.id_save = true then
  begin
    with FramePretenzEdit1 do
    begin
      // ShowMessage(s_plant);
      // UReport.CreateReport('RUS\претензия');
      case FSelLang.Group1.ItemIndex of
        0:
          Report1.LoadFromFile('\..\reports\RUS\претензия.fr3');
        1:
          Report1.LoadFromFile('\..\reports\ENG\претензия.fr3');
        2:
          Report1.LoadFromFile('\..\reports\ESP\претензия.fr3');
      end;
      t := TfrxMemoView(Report1.FindObject('MemoNum'));
      t.Memo.Text := edtNum.Text;
      t := TfrxMemoView(Report1.FindObject('MemoDateFly'));
      t.Memo.Text := s_date_fly;
      t := TfrxMemoView(Report1.FindObject('MemoMarking'));
      t.Memo.Text := s_marking;
      t := TfrxMemoView(Report1.FindObject('MemoNUMAwb'));
      t.Memo.Text := s_num_awb;
      t := TfrxMemoView(Report1.FindObject('MemoNUMFact'));
      t.Memo.Text := s_numFact;
      t := TfrxMemoView(Report1.FindObject('MemoPlant'));
      t.Memo.Text := s_plant;
      t := TfrxMemoView(Report1.FindObject('MemoRus'));
      t.Memo.Text := mmoПритензияРус.Text;
      t.Height := t.Memo.Count * 15 + 10;
      h := t.Height;
      tp := h + t.Top;
      t.Top := tp;
      t := TfrxMemoView(Report1.FindObject('MemoLblRus'));
      t.Top := tp;
      t.Height := h;
      t := TfrxMemoView(Report1.FindObject('MemoEsp'));
      t.Memo.Text := mmoПритензияИсп.Text;
      tp := tp + h;
      t.Top := tp;
      t.Height := t.Memo.Count * 15 + 10;
      h := t.Height;
      t := TfrxMemoView(Report1.FindObject('MemoLblEsp'));
      t.Top := tp;
      t.Height := h;
      t := TfrxMemoView(Report1.FindObject('MemoDate'));
      t.Memo.Text := s_date;
      // tp := tp + h;
      // t.Top := tp;
      t := TfrxMemoView(Report1.FindObject('MemoLblDate'));
      // t.Top := tp;
      t := TfrxMemoView(Report1.FindObject('MemoManager'));
      t.Memo.Text := s_manager;
      // t.Top := tp;
      t := TfrxMemoView(Report1.FindObject('MemoLblManager'));
      // t.Top := tp;
      t := TfrxMemoView(Report1.FindObject('MemoPhoto1'));
      t.Memo.Text := edtphoto1.Text;
      t := TfrxMemoView(Report1.FindObject('MemoPhoto2'));
      t.Memo.Text := edtphoto2.Text;
      t := TfrxMemoView(Report1.FindObject('MemoPhoto3'));
      t.Memo.Text := edtphoto3.Text;
      Report1.ShowReport();
    end;
  end;
  // Report1.LoadFromFile()
  // Report1.ShowReport();
end;

procedure TFEditPritenz.FormShow(Sender: TObject);
begin
  FramePretenzEdit1.Page1.ActivePageIndex := 0;
  FramePretenzEdit1.edtNum.SetFocus;
  FramePretenzEdit1.SetLang;
  SetLang;
end;

procedure TFEditPritenz.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFEditPritenz.SetLang;
begin
  case FPasswd.Lang of
    2:
      begin
        FrameSave1.btnPrior.Caption := 'Informe ';
        FrameSave1.btnSave.Caption := 'Conservar';
      end;
  end;
end;

end.
