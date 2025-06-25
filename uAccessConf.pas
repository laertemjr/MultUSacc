unit uAccessConf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles, Vcl.StdCtrls;

type
  TfrmAccessConf = class(TForm)
    edtPath: TEdit;
    Label1: TLabel;
    btnProcurar: TButton;
    OpenDialog1: TOpenDialog;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    iniconf : TIniFile;
  public
    { Public declarations }

  end;

var
  frmAccessConf: TfrmAccessConf;
  bMSAccessConfig:Boolean;

implementation

uses
   uGlobal;

{$R *.dfm}


procedure TfrmAccessConf.FormActivate(Sender: TObject);
begin
   bMSAccessConfig := False;
   if FileExists(ExtractFilePath(Application.ExeName) + 'config.ini') then
   begin
      iniconf := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
      edtPath.Text     := iniconf.ReadString('MSAccess', 'Path', '');
      iniconf.Free;
      bMSAccessConfig := True;
   end;
end;

procedure TfrmAccessConf.btnProcurarClick(Sender: TObject);
begin
   OpenDialog1.FileName := EmptyStr;
   OpenDialog1.Filter := 'Microsoft Access database|*.mdb;*.accdb';
   OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
   OpenDialog1.Title := 'Localize o Banco de Dados MS-Access';

   if OpenDialog1.Execute then
   begin
      edtPath.Text := OpenDialog1.FileName;
      iniconf := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
      iniconf.WriteString('MSAccess', 'Path', edtPath.Text);
      iniconf.Free;
      bMSAccessConfig := True;
   end
   else OpenDialog1.FileName := EmptyStr;
end;

end.
