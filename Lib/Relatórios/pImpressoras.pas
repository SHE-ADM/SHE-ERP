unit pImpressoras;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IBDatabase, DB, IBCustomDataSet, IBQuery, RxSpeedBar,
  ComCtrls, ExtCtrls, StdCtrls, Buttons, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, dximctrl, Printers, dxExEdtr, IdBaseComponent, IdComponent,
  IdIPWatch;

type
  TFrmImpressoras = class(TForm)
    QEdicao: TIBQuery;
    Cadastro: TIBDataSet;
    CadastroID: TIntegerField;
    CadastroPRI_CPRI: TSmallintField;
    CadastroPRI_DPRI: TIBStringField;
    CadastroPRI_SECA: TIBStringField;
    DTSEdicao: TDataSource;
    CadastroPRI_IP: TIBStringField;
    PNLPrincipal: TPanel;
    GBImpressoras: TGroupBox;
    ILBListPri: TdxImageListBox;
    GBServicos: TGroupBox;
    GBConfig: TGroupBox;
    DBGConsulta: TdxDBGrid;
    DBGConsultaPRI_DPRI: TdxDBGridMaskColumn;
    DBGConsultaPRI_SECA: TdxDBGridMaskColumn;
    TEdicao: TIBTransaction;
    CadastroPRI_CUSU: TIntegerField;
    PNLMenu: TPanel;
    ILBListSec: TdxImageListBox;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    GBMenu: TGroupBox;
    SBMenu: TSpeedBar;
    SSPrincipal: TSpeedbarSection;
    SIMInclui: TSpeedItem;
    SIMExclui: TSpeedItem;
    SIMSaida: TSpeedItem;
    CadastroPRI_HOST: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ILBListSecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CadastroAfterDelete(DataSet: TDataSet);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure SIMSaidaClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SIMExcluiClick(Sender: TObject);
    procedure SIMIncluiClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImpressoras: TFrmImpressoras;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmImpressoras.FormCreate(Sender: TObject);
begin
  Screen.Cursor  := crAppStart;

  oOTransact(TEdicao);
  with Cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PAR_PRI');
    SelectSQL.Add('WHERE    PRI_HOST = '''+RECParametros.Host+'''');
    SelectSQL.Add('ORDER BY PRI_SECA');
    Prepare;
    Open;
  end;

  ILBListPri.Items.Assign(Printer.Printers);
  ILBListPri.ItemIndex := Printer.PrinterIndex;
end;

procedure TFrmImpressoras.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure TFrmImpressoras.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Cadastro.State in [dsEdit,dsInsert] then
  case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                         'Deseja Salvar ?',
                         PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
       mrCancel: Abort;
       mrYes   : Cadastro.Post;
       mrNo    : Cadastro.Cancel;
  end;
end;

procedure TFrmImpressoras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure TFrmImpressoras.FormDestroy(Sender: TObject);
begin
  OnDestroy      := Nil;
  FrmImpressoras := Nil;

  try     oFTransact(TEdicao);
          oPrinterSelect(Application.Handle,EmptyStr);
  finally
    RECUsuarios.CurrentPrinter := EmptyStr;
    RECUsuarios.Relatorio      := EmptyStr;

    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmImpressoras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if vk_escape = 27 then Close;
end;

procedure TFrmImpressoras.SIMIncluiClick(Sender: TObject);
begin
  if ILBListSec.ItemIndex < 0 then
  oException(Nil,'Serviço de impressão não selecionado !');

  if copy(ILBListSec.Items.Strings[ILBListSec.ItemIndex],1,1) = '=' then
  Abort;

  if ILBListPri.ItemIndex < 0 then
  oException(Nil,'Impressora não Selecionada !');

  with QEdicao do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM PAR_PRI');
    SQL.Add('WHERE  PRI_SECA = '''+ILBListSec.Items.Strings[ILBListSec.ItemIndex]+'''');
    SQL.Add('AND    PRI_HOST = '''+RECParametros.Host+'''');
    Open;
    if not fields[0].IsNull then
    oException(Nil,'Serviço de impressão já cadastrado !');
  end;

  Cadastro.Append;
  CadastroID.Value       := 0;
  CadastroPRI_IP.Value   := RECParametros.IP;
  CadastroPRI_HOST.Value := RECParametros.Host;
  CadastroPRI_CUSU.Value := RECUsuarios.ID;
  CadastroPRI_SECA.Value := ILBListSec.Items.Strings[ILBListSec.ItemIndex];
  CadastroPRI_DPRI.Value := ILBListPri.Items.Strings[ILBListPri.ItemIndex];
  CadastroPRI_CPRI.Value := ILBListPri.ItemIndex;
  Cadastro.Post;
end;

procedure TFrmImpressoras.SIMExcluiClick(Sender: TObject);
begin
  if (Cadastro.State in [dsInsert,dsEdit]) or (CadastroID.IsNull) then
  Abort;
  Cadastro.Delete;
end;

procedure TFrmImpressoras.SIMSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmImpressoras.CadastroAfterDelete(DataSet: TDataSet);
begin
  oRTransact(TEdicao);
end;

procedure TFrmImpressoras.CadastroAfterPost(DataSet: TDataSet);
begin
  oRTransact(TEdicao);
end;

procedure TFrmImpressoras.ILBListSecClick(Sender: TObject);
begin
  SIMInclui.Enabled := (Copy(ILBListSec.Items.Strings[ILBListSec.ItemIndex],1,1) <> '=');
  SIMExclui.Enabled := SIMInclui.Enabled;
end;

procedure TFrmImpressoras.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(Application.MainForm.ClientHandle,R);

    { Centraliza no MainForm }
    Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
    Left :=         ((R.Right  + R.Left) - Width ) div 2;
  end;
end;

procedure TFrmImpressoras.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  Paint;
end;

end.
