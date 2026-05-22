unit bDados;

interface

uses
  oPrincipal,
  SysUtils, Classes, DB, IBCustomDataSet, IBStoredProc, IBDatabase, Shellapi,
  Windows, Messages, Variants,  Graphics, Controls, Forms, Dialogs, Math, StrUtils,
  IBEvents, IBSQL, IBQuery;


type
  TDMDados = class(TDataModule)
    IBDB: TIBDatabase;
    tTRA: TIBTransaction;
    ibSP: TIBStoredProc;
    bSHEILD: TIBDatabase;
    tSHEILD: TIBTransaction;
    bCEP: TIBDatabase;
    tCEP: TIBTransaction;
    TFBCadastro: TIBTransaction;
    QFBCadastro: TIBQuery;
    SQLFBCadastro: TIBSQL;
    DTSQFBCadastro: TDataSource;
    TFBEdicao: TIBTransaction;
    QFBEdicao: TIBQuery;
    SPFBEdicao: TIBStoredProc;
    DTSQFBEdicao: TDataSource;
    SQLFBEdicao: TIBSQL;
    QFBConsulta: TIBQuery;
    TFBConsulta: TIBTransaction;
    DSTQFBConsulta: TDataSource;
    SQLFBConsulta: TIBSQL;
    DBEvent: TIBEvents;
    TFBEvent: TIBTransaction;
    SPFBEvent: TIBStoredProc;
    TFBCaixa: TIBTransaction;
    SQLFBCaixa: TIBSQL;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure IBDBAfterConnect(Sender: TObject);
    procedure IBDBBeforeDisconnect(Sender: TObject);
    procedure DBEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure bExecCaixa; STDCall;
procedure bExecEvent(AEvent: String;AWarning: TWarning = lwNone); STDCall;

function bRETNotaFiscal: Variant; STDCall;
function bRET_PECA(AQuantidade,AQTUnidade: Double): Integer; STDCall;
function bRET_PESO(APesoUnit,AQuantidade,AQTUnidade: Double): Double; STDCall;
function bPSQUSER(ACampo,AFuncao,ARotina,ANome: String; AMensagem: Boolean = False): Boolean; STDCall;
function bNFE_Emissao: Variant; STDCall;

var
  DMDados: TDMDados;
  LAN: string;

implementation

uses uPrincipal;

{$R *.dfm}

procedure bExecEvent(AEvent: String;AWarning: TWarning = lwNone); STDCall;
begin
  with DMDados do
  Try
    oOTransact(TFBEvent);
    SPFBEvent.Close;
    SPFBEvent.StoredProcName := 'SP_EVENT';
    SPFBEvent.Prepare;

    SPFBEvent.Params[0].AsString := AEvent;
    SPFBEvent.ExecProc;
  Finally
    oCTransact(TFBEvent);
  end;

  if (RECParametros.STCX <> 'Caixa Aberto') and (AWarning = lwShowWarning) then
      oException(Nil,RECParametros.STCX);
end;

procedure bExecCaixa; STDCall;
begin
     RECParametros.STCX := 'Fechado';
  if RECParametros.ID > 0 then
     with DMDados do
     try
       { VER CAIXA }
       oOTransact(TFBCaixa);
       with SQLFBCaixa do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT FIRST 1 PK.* FROM VW_CAI_LAF AS PK');
         SQL.Add('WHERE  PK.IDEP = '''+RECParametros.ID+'''');
         ExecQuery;

         RECParametros.STCX := 'Caixa '+IFThen(Current.ByName('DTABE').AsDateTime < RECUsuarios.DTAcesso,
                                                IFThen(oEmpty(Current.ByName('DTFEC').AsDateTime),'anterior aberto','não aberto'),
                                                IFThen(oEmpty(Current.ByName('DTFEC').AsDateTime),'Aberto','Fechado'));
         RECParametros.CDCX := IntToStr(Current.ByName('CDCX').AsInteger);
         RECParametros.IPCX := Current.ByName('IP').AsString + Trim(IFThen(not oEmpty(Current.ByName('HOST').AsString),' ( '+Current.ByName('HOST').AsString+' )',''));
       end;
     finally
       oCTransact(TFBCaixa);
     end;
end;

function bNFE_Emissao: Variant; STDCall;
begin
  with DMDados do
  try
    oRTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(NFE_CDNF) FROM ' + oREPZero('NFE_CAB','_',RECParametros.Id,3));
      SQL.Add('WHERE  CHAR_LENGTH(NFE_CHAV) = 44');
      ExecQuery;
      result := Current.Vars[0].AsInteger + 1;
    end;
  finally
    oCTransact(TFBConsulta);
  end;
end;

function bPSQUSER(ACampo,AFuncao,ARotina,ANome: String; AMensagem: Boolean = False): Boolean; STDCall;
begin
  Result := True;
end;

function bRET_PECA(AQuantidade,AQTUnidade: Double): Integer; STDCall;
begin
  result := 0;
  if ((not oEmpty(AQuantidade)) and (not oEmpty(AQTUnidade))) then
  begin
    result := Trunc(AQuantidade / AQTUnidade);
    if ((result < 1) or (result = AQuantidade)) then
    result := 1;
  end;
end;

function bRET_PESO(APesoUnit,AQuantidade,AQTUnidade: Double): Double; STDCall;
begin
  result := 0;
  if (not oEmpty(APesoUnit)) and (not oEmpty(AQTUnidade)) and (not oEmpty(AQuantidade)) then
  result := (APesoUnit * AQuantidade) /AQTUnidade;
end;

function bRETNotaFiscal: Variant; STDCall;
begin
  try
    oOTransact(DMDados.TFBCadastro);
    with DMDados.QFBCadastro do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX (PK.NFE_CDNF) FROM NFE_CAB AS PK');
      SQL.Add('WHERE  PK.IDEP        = ''' + RECParametros.ID   + '''');
      SQL.Add('AND    PK.NFE_CNPJREF = ''' + RECParametros.CNPJ + '''');
      Open;
    end;
  finally
    result := DMDados.QFBCadastro.Fields[0].AsInteger + 1;
    oCTransact(DMDados.TFBCadastro);
  end;
end;

procedure TDMDados.DataModuleCreate(Sender: TObject);
var
  IP: string;
begin
  {IP_FIXO OTIMOTEX    = '200.232.176.73';}
  {IP_FIXO DONA AMELIA = '177.68.148.249';}
  {IP_FiXO TRIMS21     = '201.27.148.155';}
  {IP_FiXO ABC         = '177.103.176.111';
   IP_FiXO EXPRESSO    = '189.111.104.110';
  }

 //IP  := '192.168.0.200:'; // trims21
 IP  := '192.168.2.113:'; // expresso
// IP  := '10.15.7.60:';    // abc
//   IP  := '10.15.7.60:';
//   LAN := 'REDE LOCAL';

  ibDB.Connected    := false;
  bSHEILD.Connected := false;
  bCEP.Connected    := false;

  if NOT FileExists('C:\Sheild\NotaFiscal\local.txt') THEN
  begin
    ibDB.DatabaseName := IP+ibDB.DatabaseName;
    LAN := 'REDE PRIVADA';
  end;

  ibDB.Connected    := true;
  bCEP.Connected    := true;
  bSHEILD.Connected := true;
end;

procedure TDMDados.DataModuleDestroy(Sender: TObject);
var
  i: Word;
begin
  if ibDB.TestConnected    then ibDB.CloseDataSets;
  if bSheild.TestConnected then bSheild.CloseDataSets;
  if bCep.TestConnected    then bCep.CloseDataSets;

  with ibDB do
  if TestConnected then
     try
       for i := 0 to Pred(TransactionCount) do
           if Transactions[i].InTransaction then
              Transactions[i].Commit;
     finally
       Connected := False;
       ForceClose;
     end;

  with bSheild do
  if TestConnected then
     try
       for i := 0 to Pred(TransactionCount) do
           if Transactions[i].InTransaction then
              Transactions[i].Commit;
     finally
       Connected := False;
       ForceClose;
     end;

  with bCep do
  if TestConnected then
     try
       for i := 0 to Pred(TransactionCount) do
           if Transactions[i].InTransaction then
              Transactions[i].Commit;
     finally
       Connected := False;
       ForceClose;
     end;

  dmDados := Nil;
end;

procedure TDMDados.IBDBAfterConnect(Sender: TObject);
begin
  with DBEvent do
  begin
    UnregisterEvents;
    Events.Add('Caixa');
    RegisterEvents;
  end;
end;

procedure TDMDados.IBDBBeforeDisconnect(Sender: TObject);
begin
  DBEvent.UnRegisterEvents;
  DBEvent.Events.Clear;
end;

procedure TDMDados.DBEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  if not ALockWindowUpdate then
     bExecCaixa;
end;

end.

