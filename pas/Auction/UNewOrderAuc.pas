unit UNewOrderAuc;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.ExtCtrls, JPEG;
type
  TFNewOrderAuc = class(TForm)
    Image1 : TImage;
    IdHTTP1 : TIdHTTP;
  private
    { Private declarations }
  public
    s_url : string;
    procedure DownloadJPG(url : string; im : TImage);
    procedure LoadPicture(url : string);
    { Public declarations }
  end;

var
  FNewOrderAuc : TFNewOrderAuc;
implementation
{$R *.dfm}

procedure TFNewOrderAuc.DownloadJPG(url : string; im : TImage);
var
  strStream : String;
  memStream : TMemoryStream;
  jpegimg : TJPEGImage;
begin
  try
    strStream := IdHTTP1.Get(url);
  except
  
    Exit;
  end;
  memStream := TMemoryStream.Create;
  jpegimg := TJPEGImage.Create;
  try
    memStream.Write(strStream[1], Length(strStream));
    memStream.Position := 0;
    jpegimg.LoadFromStream(memStream);
    im.Picture.Assign(jpegimg);
  finally
    memStream.Free;
    jpegimg.Free;
  end;
end;
procedure TFNewOrderAuc.LoadPicture(url : string);
var
  memo : TMemoryStream;
  s : string;
begin
  // WebBrowser1.Navigate(url);
  try
    memo := TMemoryStream.Create;
    s := ExtractFileDir(Application.ExeName) + '\..\tmp\tmp.jpg';
      // s := 'c:\1\1.jpg';
    IdHTTP1.Get(url, memo);
    IdHTTP1.Disconnect;
    memo.SaveToFile(s);
    memo.Free;
    Image1.Picture.LoadFromFile(s);
  except
  end;
end;
end.
