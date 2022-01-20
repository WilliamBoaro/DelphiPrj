unit UmemTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.StorageXML;

type
  TfrmMain = class(TForm)
    brnCreate: TButton;
    FmemTble: TFDMemTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDMemTable1: TFDMemTable;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    SaveDialog1: TSaveDialog;
    btnSave: TButton;
    btnload: TButton;
    btnLoadStream: TButton;
    FileOpenDialog1: TFileOpenDialog;
    FileSaveDialog1: TFileSaveDialog;
    btnSaveStream: TButton;
    btnClear: TButton;
    procedure brnCreateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnloadClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnLoadStreamClick(Sender: TObject);
    procedure btnSaveStreamClick(Sender: TObject);
  private
    FmemStream : TMemoryStream;
  public

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.brnCreateClick(Sender: TObject);
var
  cont : integer;
begin
  with FmemTble.FieldDefs do
  begin
    with AddFieldDef do
    begin
      Name     := 'f1';
      Datatype := ftinteger;
    end;
    with AddFieldDef do
    begin
      Name     := 'f2';
      DataType :=  ftString;
      size     :=  50;
    end;
  end;

  FmemTble.Open;
  for cont := 1 to 100 do
  with FmemTble do
  begin
    Append;
    Fields[0].AsInteger := cont;
    Fields[1].asstring := 'Record' + Format('%.*d  ', [4,cont]);
    post;

  end;


end;

procedure TfrmMain.btnClearClick(Sender: TObject);
begin
  FDMemTable1.Close;

end;

procedure TfrmMain.btnloadClick(Sender: TObject);
begin
  if FileOpenDialog1.Execute then
    begin
        FDMemTable1.LoadFromFile(FileOpenDialog1.FileName, sfAuto);
    end;
end;


procedure TfrmMain.btnLoadStreamClick(Sender: TObject);
begin
  if FmemStream <> nil then
    begin
      FmemStream.Position := 0;
      FDMemTable1.LoadFromStream(FmemStream,sfAuto);
    end;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
begin
  if FileSaveDialog1.Execute then
    begin
      FDMemTable1.SaveToFile(FileSaveDialog1.FileName,sfAuto);
    end;
end;

procedure TfrmMain.btnSaveStreamClick(Sender: TObject);
begin
  FmemStream := TMemoryStream.Create;
  FDMemTable1.SaveToStream(FmemStream, sfAuto);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
   //
end;

end.
