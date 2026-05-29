unit pSobre;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, jpeg, DateUtils;

type
  TFrmSobre = class(TForm)
    PNLFoto: TPanel;
    PNLMemoria: TPanel;
    BMemoria: TBevel;
    BTNOk: TButton;
    lbMDIS: TLabel;
    lbMUSO: TLabel;
    laMDIS: TLabel;
    laMUSO: TLabel;
    PNL_1: TPanel;
    PNLEmpresa: TPanel;
    PNL_3: TPanel;
    PNLPrincipal: TPanel;
    LAVersao: TLabel;
    LACompilado: TLabel;
    laLICE: TLabel;
    laQUSU: TLabel;
    laCOM: TLabel;
    laVEN: TLabel;
    lbCOM: TLabel;
    laFAT: TLabel;
    lbVEN: TLabel;
    lbFAT: TLabel;
    laFIN: TLabel;
    lbFIN: TLabel;
    laOCA: TLabel;
    lbOCA: TLabel;
    laPCP: TLabel;
    lbPCP: TLabel;
    laETI: TLabel;
    lbETI: TLabel;
    LANVersao: TLabel;
    LADVersao: TLabel;
    lbLICE: TLabel;
    lbQUSU: TLabel;
    laEMPRESA: TLabel;
    IFoto: TImage;
    Label1: TLabel;
    MInf: TMemo;
    LABOL: TLabel;
    LBBOL: TLabel;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure BTNOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSobre: TFrmSobre;

implementation

{$R *.dfm}

procedure TFrmSobre.FormCreate(Sender: TObject);
var
  MS: TMemoryStatus;
begin
  LAEmpresa.Caption := 'Copyright © '+oStrZero(YearOf(Date),4)+' Sheild';
  LADVersao.Caption := FormatDateTime('dd/mm/yy hh:mm',(FileDateToDateTime(FileAge(ParamStr( 0 )))));

  GlobalMemoryStatus(MS);
  lbMDIS.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
  lbMUSO.Caption := Format('%d %%', [MS.dwMemoryLoad]);
end;

procedure TFrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmSobre.FormDestroy(Sender: TObject);
begin
  FrmSobre := Nil;
end;

procedure TFrmSobre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin           
  case key of
       VK_Return, VK_Escape: Close;
  end;
end;

procedure TFrmSobre.BTNOkClick(Sender: TObject);
begin
  Close;
end;

end.
