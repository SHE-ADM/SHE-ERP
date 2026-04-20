unit uPrincipal;

interface
                          
uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg, math,
  XPStyleActnCtrls, IdBaseComponent, IdComponent, qrPrev, Registry,
  IdIPWatch, Provider, cxGraphics, cxControls, dxStatusBar, ACBrBarCode,
  ADODB, OleCtrls;

type
  TFrmSHE_API_B2B = class(TForm)
    TTempo: TTimer;
    SBRodape: TdxStatusBar;
    IPrincipal: TImage;
    PNLRodape: TPanel;
    PBPrincipal: TProgressBar;
    PNLCaption: TPanel;
    EMErros_B2B: TMemo;
    Representantes: TIBQuery;
    RepresentantesID: TIntegerField;
    RepresentantesIDVENDEDOR: TIntegerField;
    RepresentantesFANTASIA: TIBStringField;
    RepresentantesRAZAOSOCIAL: TIBStringField;
    RepresentantesCPF: TIBStringField;
    RepresentantesFONE: TIBStringField;
    RepresentantesEMAIL: TIBStringField;
    RepresentantesGRUPO: TIBStringField;
    RepresentantesSTCADASTRO: TIBStringField;
    RepresentantesUF: TIBStringField;
    CAD_CLI_ERP: TIBQuery;
    Transportadoras: TIBQuery;
    TransportadorasID: TIntegerField;
    TransportadorasFANTASIA: TIBStringField;
    TransportadorasRAZAOSOCIAL: TIBStringField;
    TransportadorasCNPJ: TIBStringField;
    TransportadorasIE: TIBStringField;
    TransportadorasCPF: TIBStringField;
    TransportadorasDDD: TIBStringField;
    TransportadorasFONE: TIBStringField;
    TransportadorasEMAIL: TIBStringField;
    TransportadorasTLOG: TIBStringField;
    TransportadorasLOGR: TIBStringField;
    TransportadorasCEP: TIBStringField;
    TransportadorasNUME: TIBStringField;
    TransportadorasCOMP: TIBStringField;
    TransportadorasBAIRRO: TIBStringField;
    TransportadorasCIDADE: TIBStringField;
    TransportadorasUF: TIBStringField;
    ERPPedidos: TIBQuery;
    ERPPedidosID: TIntegerField;
    ERPPedidosROM_CDPR: TIntegerField;
    ERPPedidosROM_DEPP: TIBStringField;
    ERPPedidosROM_DERO: TIBStringField;
    ERPPedidosROM_CCLI: TIntegerField;
    ERPPedidosROM_DCLI: TIBStringField;
    ERPPedidosROM_RCLI: TIBStringField;
    ERPPedidosROM_CDNF: TIntegerField;
    ERPPedidosROM_QTPD: TIBBCDField;
    ERPPedidosROM_RLPD: TIntegerField;
    ERPPedidosROM_VNF: TIBBCDField;
    ERPPedidosROM_STFI: TIBStringField;
    ERPPedidosROM_DTCA: TDateTimeField;
    ERPPedidosDTNF: TDateTimeField;
    ERPPedidosROM_CTRA: TIntegerField;
    ERPPedidosROM_DTRA: TIBStringField;
    CAD_CLI_B2B: TIBQuery;
    CAD_CLI_B2BID: TIntegerField;
    CAD_CLI_B2BDTCA: TDateField;
    CAD_CLI_B2BDECD: TIBStringField;
    CAD_CLI_B2BRZCD: TIBStringField;
    CAD_CLI_B2BCNPJ: TIBStringField;
    CAD_CLI_B2BIE: TIBStringField;
    CAD_CLI_B2BIDCV: TSmallintField;
    CAD_CLI_B2BIDCR: TIntegerField;
    CAD_CLI_B2BDDD: TIBStringField;
    CAD_CLI_B2BTEL: TIBStringField;
    CAD_CLI_B2BEMAIL: TIBStringField;
    CAD_CLI_B2BZAP_CONTATO: TIBStringField;
    CAD_CLI_B2BZAP_DDD: TIBStringField;
    CAD_CLI_B2BZAP_TEL: TIBStringField;
    CAD_CLI_B2BTLO_TX: TIBStringField;
    CAD_CLI_B2BLOG_NO: TIBStringField;
    CAD_CLI_B2BNRO: TIBStringField;
    CAD_CLI_B2BXCPL: TIBStringField;
    CAD_CLI_B2BCEP: TIBStringField;
    CAD_CLI_B2BBAI_NO: TIBStringField;
    CAD_CLI_B2BLOC_NO: TIBStringField;
    CAD_CLI_B2BUF: TIBStringField;
    CAD_CLI_ERPID: TIntegerField;
    CAD_CLI_ERPDTCA: TDateField;
    CAD_CLI_ERPDECD: TIBStringField;
    CAD_CLI_ERPRZCD: TIBStringField;
    CAD_CLI_ERPCNPJ: TIBStringField;
    CAD_CLI_ERPIE: TIBStringField;
    CAD_CLI_ERPIDCV: TSmallintField;
    CAD_CLI_ERPIDCR: TSmallintField;
    CAD_CLI_ERPDDD: TIBStringField;
    CAD_CLI_ERPTEL: TIBStringField;
    CAD_CLI_ERPEMAIL: TIBStringField;
    CAD_CLI_ERPZAP_CONTATO: TIBStringField;
    CAD_CLI_ERPZAP_DDD: TIBStringField;
    CAD_CLI_ERPZAP_TEL: TIBStringField;
    CAD_CLI_ERPLOG_NU: TLargeintField;
    CAD_CLI_ERPTLO_TX: TIBStringField;
    CAD_CLI_ERPLOG_NO: TIBStringField;
    CAD_CLI_ERPNRO: TIBStringField;
    CAD_CLI_ERPXCPL: TIBStringField;
    CAD_CLI_ERPCEP: TIBStringField;
    CAD_CLI_ERPBAI_NO: TIBStringField;
    CAD_CLI_ERPLOC_NO: TIBStringField;
    CAD_CLI_ERPCMUN: TLargeintField;
    CAD_CLI_ERPUF: TIBStringField;
    CAD_CLI_ERPDEST: TIBStringField;
    CAD_CLI_B2BIDCT: TIntegerField;
    CAD_CLI_B2BDECT: TIBStringField;
    CAD_CLI_B2BMFRT: TIBStringField;
    procedure TTempoTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _TrimAppMemorySize;
    procedure _Login(AIDUSER,AIDEP: Variant);

    procedure _API_INI (AJOB: String;AIDEP: Variant;ADatabasename: String);
    procedure _API_LOG;

    { Recebimentos }
    procedure _CAD_TRA_REC;
    procedure _CAD_CLI_REC;


    procedure _CAD_REP_ENV;
    procedure _CAD_CLI_ENV;


    procedure _PED_REC_B2B_PSQ;
    procedure _PED_REC;
    procedure _PED_REC_CLI;
    procedure _PED_REC_VEN;
    procedure _PED_REC_TRA;
    procedure _PED_ENV;
    procedure _PED_VER;

    procedure _PRO_PRC_B2B;
    procedure _PRO_PRC_B2B_SYNC;
    
    procedure _PRO_EST_ERP;
    procedure _PRO_EST_B2B;
    procedure _PRO_EST_B2B_SYNC;

    function _API_SYNC: Boolean;
  end;

procedure _GERTXT; STDCall;
Function  uCPPSQ(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;

var
  FrmSHE_API_B2B: TFrmSHE_API_B2B;
  MAIN_IDEP: Variant;
  MAIN_DEEP: String;

  PBCount,
  entity_id: Integer;
  DART,
  CDBE,
  QTUN,
  QTMI,
  ICMSST: String;
  IDG_API_EST,
  IDG_API_PRC_CAT: Variant;
  ITEM,
  IDCL,
  IDCT,
  IDPP: Integer;
  DECL,
  RZCL,
  DECT: String;
  BCNPJ: Boolean;
  API_TOKEN: String = 'CAD-TRA-REC';
  API_TIME : Word;

implementation

uses bPrincipal;

{$R *.dfm}

procedure _GERTXT; STDCall;
//var
//  TFTxt : TextFile;
//  ARQTxt: String;
begin
{  ARQTxt := PAnsiChar(ExtractFileDir(GetCurrentDir)+'\Exec\B2B '+FormatDateTime('dd-mm-yy hhmmss',Now)+'.txt');
  try
    AssignFile(TFTxt,PChar(ARQTxt));
    Rewrite(TFTxt);
    WriteLN(TFTxt,'Transferências de Dados B2B | ERP => B2B');
    WriteLN(TFTxt,'========================================');
    WriteLN(TFTxt,'');
    WriteLN(TFTxt,'OTIMOTEX');
    WriteLN(TFTxt,'Estoque........: '+oStrZero(nRecNoOE,5));
    WriteLN(TFTxt,'Clientes.......: '+oStrZero(nRecNoOC,5));
    WriteLN(TFTxt,'Transportadoras: '+oStrZero(nRecNoOT,5));
    WriteLN(TFTxt,'Representantes.: '+oStrZero(nRecNoOR,5));
    WriteLN(TFTxt,'Vendedores.....: '+oStrZero(nRecNoOV,5));
    WriteLN(TFTxt,'');
    WriteLN(TFTxt,'LEBIANCO');
    WriteLN(TFTxt,'Estoque........: '+oStrZero(nRecNoLE,5));
    WriteLN(TFTxt,'Clientes.......: '+oStrZero(nRecNoLC,5));
    WriteLN(TFTxt,'Transportadoras: '+oStrZero(nRecNoLT,5));
    WriteLN(TFTxt,'Representantes.: '+oStrZero(nRecNoLR,5));
    WriteLN(TFTxt,'Vendedores.....: '+oStrZero(nRecNoLV,5));
    WriteLN(TFTxt,'');
  finally
    CloseFile(TFTxt);
  end; }

  FrmSHE_API_B2B._TrimAppMemorySize;
end;

Function uCPPSQ(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;
begin
  with FrmSHE_API_B2B,FBird.FBCAD_PRO do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SP_CAD_PRO_PSQ');
    SQL.Add('(');

    SQL.Add(''''+IntToStr(AIDEP)+''',');
    SQL.Add(''''+ADTXT +''',');
    SQL.Add(''''+AFTXT +''',');
    SQL.Add('NULL,');
    SQL.Add('NULL,');
    SQL.Add(''''+AWHERE+''',');
    SQL.Add(''''+ALIKE1+''',');
    SQL.Add(''''+ALIKE2+''',');
    SQL.Add(''''+AFDT  +''',');
    SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT1)+''',');
    SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT2)+''',');
    SQL.Add('''ARTIGO,CDGRD,REGRD,DEGRD,DECOR''');

    SQL.Add(')');
    Open;
    Last;
    
    result := FieldByName('Id').AsInteger;
  end;
end;

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
  case msg of
       WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                      SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL));
  end;
  Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
end;

procedure TFrmSHE_API_B2B.TTempoTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
begin
  if FrmSHE_API_B2B <> Nil then
  with FrmSHE_API_B2B,FBird do
  begin
    RECParametros.SecondsIdle := SecondsIdle;
    if RECParametros.SecondsIdle > 0 then
       if RECParametros.SecondsIdle mod 3 = 0 then
          try
            TTEmpo.Enabled := False;
            FrmSHE_API_B2B.Caption := 'API B2B: ' + API_TOKEN + '. Aguardando ...';
            Application.ProcessMessages;

            { RECEBIMENTOS }
            { Transportadoras }
            if API_TOKEN = 'CAD-TRA-REC' then
               try
                 _API_INI(API_TOKEN,MAIN_IDEP,MAIN_DEEP);
               finally
                 API_TOKEN := 'CAD-CLI-REC';
               end else

            { Clientes }
            if API_TOKEN = 'CAD-CLI-REC' then
               try
                 _API_INI(API_TOKEN,MAIN_IDEP,MAIN_DEEP);
               finally
                 API_TOKEN := 'PED-VEN-REC';
               end else

            { Pedidos }
            if API_TOKEN = 'PED-VEN-REC' then
               try
                 _API_INI(API_TOKEN,MAIN_IDEP,MAIN_DEEP);
               finally
                 API_TOKEN := 'CAD-CLI-ENV';
               end else

            { ENVIOS }
            { Clientes }
            if API_TOKEN = 'CAD-CLI-ENV' then
               try
                 _API_INI(API_TOKEN,MAIN_IDEP,MAIN_DEEP);
               finally
                 API_TOKEN := 'CAD-REP-ENV';
               end else

            { Representantes }
            if API_TOKEN = 'CAD-REP-ENV' then
               try
                 _API_INI(API_TOKEN,MAIN_IDEP,MAIN_DEEP);
               finally
                 API_TOKEN := 'PED-VEN-ENV';
               end else

            { Pedidos }
            if API_TOKEN = 'PED-VEN-ENV' then
               try
                 _API_INI(API_TOKEN,MAIN_IDEP,MAIN_DEEP);
               finally
                 API_TOKEN := 'CAD-PRO-PRC';
               end else


            { PRODUTOS }
            { Preços }
            if API_TOKEN = 'CAD-PRO-PRC' then
               try
                 _API_INI(API_TOKEN,MAIN_IDEP,MAIN_DEEP);

                 if MAIN_IDEP = 4 then
                 begin
                   _API_INI(API_TOKEN,'8',MAIN_DEEP);
                   _API_INI(API_TOKEN,'9',MAIN_DEEP);
                 end;
               finally
                 API_TOKEN := 'CAD-PRO-EST';
               end else

            { Estoque }
            if API_TOKEN = 'CAD-PRO-EST' then
               try
                 _API_INI(API_TOKEN,MAIN_IDEP,MAIN_DEEP);

                { if MAIN_IDEP = 4 then
                 begin
                   _API_INI(API_TOKEN,'8',MAIN_DEEP);
                   _API_INI(API_TOKEN,'9',MAIN_DEEP);
                 end; }
               finally
                 API_TOKEN := 'CAD-TRA-REC';
               end;

            finally
              TTEmpo.Enabled         := True;
              FrmSHE_API_B2B.Caption := 'API B2B: Aguardando...';
              Application.ProcessMessages ;

              _GERTXT;
            end;

    SBRodape.Panels[2].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);
    SBRodape.Panels[3].Text := RECParametros.STCX;
  end;
end;

procedure TFrmSHE_API_B2B.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
              SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  MAIN_IDEP := '4';
  MAIN_DEEP := IFThen(MAIN_IDEP = 1,'OtimotexB2B','LebiancoB2B');
end;

procedure TFrmSHE_API_B2B.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure TFrmSHE_API_B2B.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
end;

procedure TFrmSHE_API_B2B.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSHE_API_B2B.FormDestroy(Sender: TObject);
begin
  oCDatabase(FBird.DBErp);
  oCDataBase(FBird.DBB2B);

  FrmSHE_API_B2B := Nil;
end;

procedure TFrmSHE_API_B2B.FormPaint(Sender: TObject);
var
  XRect: TRect;
begin
  if Showing then
  begin
    XRect.Left   := IPrincipal.Left;
    XRect.Top    := IPrincipal.Top;
    XRect.Right  := Screen.Width;
    XRect.Bottom := Screen.Height - SBRodape.Height;

    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);
  end;
end;

procedure TFrmSHE_API_B2B.FormResize(Sender: TObject);
begin
  if FrmSHE_API_B2B <> Nil then
  Paint;
end;

procedure TFrmSHE_API_B2B._TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
    ;
  end;
  Application.ProcessMessages;
end;

procedure TFrmSHE_API_B2B._Login(AIDUSER,AIDEP: Variant);
begin
  if (not oEmpty(AIDUSER)) and (not oEmpty(AIDEP)) and (oEmpty(RECParametros.DataBaseError)) then
  try
    with FBird do
    begin
      bExecParametros(AIDEP);
      bExecUsuarios(AIDUSER);
      bExecCaixa;
    end;
    
    { Foto de Fundo da Tela Principal}
    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.EP_NO;
    SBRodape.Panels[1].Text := RECParametros.ServerHost;

  Finally
    FrmSHE_API_B2B.Repaint;
    Application.ProcessMessages;
  end;
end;

procedure TFrmSHE_API_B2B._API_INI(AJOB: String;AIDEP: Variant;ADatabasename: String);
var
  i: Word;
begin
  {
   aPesquisa[1] = 'Representantes'
   aPesquisa[2] = 'Clientes'
   aPesquisa[3] = 'Pedidos Verificados'
   aPesquisa[4] = 'Pedidos Recebidos'
   aPesquisa[5] = 'Pedidos Enviados'
   aPesquisa[6] = 'Preços B2B'
   aPesquisa[7] = 'Estoque B2B'
   aPesquisa[8] = 'Estoque B2C'
   aPesquisa[9] = 'API Boletos'
  }
  
  aPesquisa := Nil;
  SetLength(aPesquisa,10);
  for i := 0 to High(aPesquisa) do
      SetLength(aPesquisa[i],7);

  with FBird do
  try
    { AUTENTICAÇÃO ERP }
    oODatabase(DBErp);
    if not oEmpty(RECParametros.DataBaseError) then
       Exit;

    _Login('0',AIDEP);

    if ((RECParametros.EP_ID = 0) or ((RECParametros.CDCX = 0) and (Pos('CAD-PRO-EST',AJOB) = 0))) then
    Exit;

    { AUTENTICAÇÃO B2B }
    oODatabase(DBB2B,lwNone,'198.50.189.229:C:\dbFirebird\'+Adatabasename+'.fdb');
    if not oEmpty(RECParametros.DataBaseError) then
       Exit;

    { EXECUTE SINCRONIZAÇÃO }
    SBRodape.Panels[2].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);
    SBRodape.Panels[3].Text := RECParametros.STCX;
    Application.ProcessMessages;


    { RECEBIMENTOS }
    { Transportadoras }
    if AJOB = 'CAD-TRA-REC' then
    _CAD_TRA_REC else

    { Clientes }
    if AJOB = 'CAD-CLI-REC' then
    _CAD_CLI_REC else

    { Pedidos }
    if AJOB = 'PED-VEN-REC' then
    _PED_REC  else





    { ENVIOS }
    { Clientes }
    if AJOB = 'CAD-CLI-ENV' then
    _CAD_CLI_ENV else

    { Representanes }
    if AJOB = 'CAD-REP-ENV' then
    _CAD_REP_ENV else

    { Pedidos }
    if AJOB = 'PED-VEN-ENV' then
    _PED_ENV else






    { PRODUTOS }
    { Preços }
    if AJOB = 'CAD-PRO-PRC' then
    _PRO_PRC_B2B else

    { Estoque }
    if AJOB = 'CAD-PRO-EST' then
    begin
      _PRO_EST_B2B;
      //_PRO_EST_ERP;
    end;
  finally
    _API_LOG;

    if not oEmpty(RECParametros.DataBaseError) then
    begin
      EMErros_B2B.Lines.Add(RECParametros.DataBaseError);
      EMErros_B2B.Height  := 95;
      EMErros_B2B.Visible := True;
    end;

    oCDatabase(DBErp);
    oCDataBase(DBB2B);
  end;
end;

function TFrmSHE_API_B2B._API_SYNC: Boolean;
begin
  result := True;
  if RECParametros.STCX = 'Caixa Aberto' then
     with FBird do
          try
            oOTransact(TB2BConsulta);
            _PED_REC_B2B_PSQ;
            Result := (B2BPedidos.RecNo = 0);
          finally
            oCTransact(TB2BConsulta);
          end;
end;

procedure TFrmSHE_API_B2B._API_LOG;
var
  i: Word;
  Descricao: String;
begin
  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBEdicao do
    for i := 0 to High(aPesquisa) do
        if (not oEmpty(aPesquisa[i,00])) or (not oEmpty(aPesquisa[i,06])) then
        begin
          Descricao := aPesquisa[i,04];

          if oEmpty(aPesquisa[i,00]) then
                    aPesquisa[i,00] := RECParametros.EP_ID;

          if oEmpty(aPesquisa[i,01]) then
                    aPesquisa[i,01] := FormatDateTime('mm/dd/yy',Date);

          if oEmpty(aPesquisa[i,02]) then
                    aPesquisa[i,02] := FormatDateTime('mm/dd/yy hh:mm',Now);

          if oEmpty(aPesquisa[i,03]) then
                    aPesquisa[i,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

          Close;
          SQL.Clear;
          SQL.Add('UPDATE OR INSERT');
          SQL.Add('INTO TAB_API_LOG (IDEP,DTCA,DTINI,DTFIM,DESCRICAO,REGISTROS,LOG_ERRO)');
          SQL.Add('VALUES (');
          SQL.Add(''''+aPesquisa[i,00]+''',');
          SQL.Add(''''+aPesquisa[i,01]+''',');
          SQL.Add(''''+aPesquisa[i,02]+''',');
          SQL.Add(''''+aPesquisa[i,03]+''',');
          SQL.Add(''''+Trim(LeftStr(aPesquisa[i,04],30))+''',');

          if oEmpty(aPesquisa[i,05]) then
             SQL.Add('0,')
          else
             SQL.Add(''''+aPesquisa[i,05]+''',');

          SQL.Add(''''+oStrTran(aPesquisa[i,06],'''','')+'''');
          SQL.Add(')');
          SQL.Add('MATCHING (IDEP,DTCA,DESCRICAO)');
          ExecQuery;
        end;
    oCTransact(TFBEdicao);
  except
    on E: Exception do
    begin
      oCTransact(TFBEdicao,ltRollback);

      EMErros_B2B.Lines.Add('Erro ao tentar atualizar API ERP.'  +#13+#13+
                             Descricao +#13+
                             E.Message +#13+
                             FormatDateTime('dd/mm/yy hh:mm',Now)+'.');
      EMErros_B2B.Height  := 95;
      EMErros_B2B.Visible := True;

      Application.ProcessMessages;
    end;
  end;
end;

procedure TFrmSHE_API_B2B._CAD_REP_ENV;
begin
  { Clear Matriz }
  aPesquisa[01,00] := ''; {Empresa}
  aPesquisa[01,01] := ''; {Cadastro}
  aPesquisa[01,02] := ''; {Início}
  aPesquisa[01,03] := ''; {Fim}
  aPesquisa[01,04] := 'Representantes'; {Descrição}
  aPesquisa[01,05] := ''; {Registros}
  aPesquisa[01,06] := ''; {Erro}

  with FBird do
  try
    oOTransact(TFBConsulta);

    Representantes.Params[0].Value := RECParametros.EP_ID;
    Representantes.Open; Representantes.Last;
    PBPrincipal.Max :=   Representantes.RecNo; Representantes.First;

    if PBPrincipal.Max > 0 then
    try
      { Caption }
      PNLCaption.Height  := 35;
      PNLCaption.Visible := True;

      { Gauge }
      PBCount              := 0;
      PBPrincipal.Position := 0;

      { Rodapé }
      PNLRodape.Height  := 20;
      PNLRodape.Visible := True;

      { Load Matriz }
      aPesquisa[01,00] := RECParametros.EP_ID;
      aPesquisa[01,01] := FormatDateTime('mm/dd/yy'      ,Date);
      aPesquisa[01,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
      aPesquisa[01,05] := IntToStr(PBPrincipal.Max);

      oOTransact(TB2BEdicao);
      oOTransact(TFBEdicao );
      while not Representantes.Eof do
      begin
        Inc(PBCount);
        FrmSHE_API_B2B.Caption := 'API B2B: ' + API_TOKEN + '. Sincronizando Registros '+IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max)+'.';
        PNLCaption.Caption   := RepresentantesFantasia.AsString   +' - '+RepresentantesId.AsString+'. ';
        PBPrincipal.Position := PBPrincipal.Position  + 1;

        Application.ProcessMessages;
        with SQLB2BEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE OR INSERT');
          SQL.Add('INTO CAD_REP (ID,REP_CVEN,REP_FANT,REP_RAZA,REP_CPF,REP_TEL1,REP_EMAIL,REP_UF)');
          SQL.Add('VALUES (');
          SQL.Add(''''+RepresentantesID.AsString          +''',');
          SQL.Add(''''+RepresentantesIDVendedor.AsString  +''',');
          SQL.Add(''''+RepresentantesFantasia.AsString    +''',');
          SQL.Add(''''+RepresentantesRazaoSocial.AsString +''',');
          SQL.Add(''''+RepresentantesCPF.AsString         +''',');
          SQL.Add(''''+RepresentantesFone.AsString        +''',');
          SQL.Add(''''+IFThen(oEmail(RepresentantesEmail.AsString),RepresentantesEmail.AsString,EmptyStr)+''',');
          SQL.Add(''''+RepresentantesUF.AsString          +'''' );
          SQL.Add(')');
          SQL.Add('MATCHING (ID)');
          ExecQuery;
        end;

        with SQLFBEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_REP');
          SQL.Add('SET    API_B2B      = 0,');
          SQL.Add('       API_B2B_DTEV = CURRENT_TIMESTAMP');
          SQL.Add('WHERE  ID           = ''' + RepresentantesID.AsString + '''');
          ExecQuery;
        end;

        Representantes.Next;
      end;
      { Final Matriz }
      aPesquisa[01,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

      oCTransact(TB2BEdicao);
      oCTransact(TFBEdicao );
    except
      on E: Exception do
      begin
        oCTransact(TB2BEdicao,ltRollback);
        oCTransact(TFBEdicao ,ltRollback);

        { Erro Matriz }
        aPesquisa[01,06] := 'API B2B: ' + API_TOKEN + '. '        + #13 +
                             PNLCaption.Caption                   + #13 +
                             Trim(E.Message)        + '. '        + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now) + '.';

        if not EMErros_B2B.Visible then
        begin
          EMErros_B2B.Lines.Add(aPesquisa[01,06]);
          EMErros_B2B.Height  := 95;
          EMErros_B2B.Visible := True;
        end;

        Exit;
      end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TFBConsulta);
  end;
end;

procedure TFrmSHE_API_B2B._CAD_CLI_ENV;
begin
  { Clear Matriz }
  aPesquisa[02,00] := ''; {Empresa}
  aPesquisa[02,01] := ''; {Cadastro}
  aPesquisa[02,02] := ''; {Início}
  aPesquisa[02,03] := ''; {Fim}
  aPesquisa[02,04] := 'Clientes'; {Descrição}
  aPesquisa[02,05] := ''; {Registros}
  aPesquisa[02,06] := ''; {Erro}

  with FBird do
  try
    oOTransact(TFBConsulta);
    CAD_CLI_ERP.Params[0].Value := RECParametros.EP_ID;
    CAD_CLI_ERP.Open;  CAD_CLI_ERP.Last;
    PBPrincipal.Max := CAD_CLI_ERP.RecNo; CAD_CLI_ERP.First;

    if PBPrincipal.Max > 0 then
    try
      { Caption }
      PNLCaption.Height  := 35;
      PNLCaption.Visible := True;

      { Gauge }
      PBCount              := 0;
      PBPrincipal.Position := 0;

      { Rodapé }
      PNLRodape.Height  := 20;
      PNLRodape.Visible := True;

      { Load Matriz }
      aPesquisa[02,00] := RECParametros.EP_ID;
      aPesquisa[02,01] := FormatDateTime('mm/dd/yy'      ,Date);
      aPesquisa[02,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
      aPesquisa[02,05] := IntToStr(PBPrincipal.Max);

      oOTransact(TB2BEdicao);
      oOTransact(TFBEdicao );
      while not CAD_CLI_ERP.Eof do
      begin
        Inc(PBCount);
        FrmSHE_API_B2B.Caption := 'API B2B: ' + API_TOKEN + 'ERP -> B2B. Sincronizando Registros '+IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max)+'.';
        PNLCaption.Caption   := CAD_CLI_ERPDECD.AsString +' - '+CAD_CLI_ERPId.AsString+'. ';
        PBPrincipal.Position := PBPrincipal.Position  + 1;

        Application.ProcessMessages;
        { Verifica se o cliente tem alteração pendente no B2B }
        with SQLB2BEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE OR INSERT');
          SQL.Add('INTO CAD_CLI (ID,CLI_CVEN,CLI_CREP,CLI_DCAD,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_INSC,CLI_DDD,CLI_FONE,CLI_MAIL,ZAP_CONTATO,ZAP_DDD,ZAP_TEL,');
          SQL.Add('                 CLI_TLOG,CLI_LOGR,CLI_CEP ,CLI_NUME,CLI_COMP,CLI_BAI,CLI_CID,CLI_ESTA,DEST)');
          SQL.Add('VALUES (');
          SQL.Add(''''+CAD_CLI_ERPID.AsString+''',');
          SQL.Add(''''+IntToStr(CAD_CLI_ERPIDCV.AsInteger)+''',');
          SQL.Add(''''+IntToStr(CAD_CLI_ERPIDCR.AsInteger)+''',');
          SQL.Add(''''+FormatDateTime('mm/dd/yy',CAD_CLI_ERPDTCA.AsDateTime)+''',');
          SQL.Add(''''+StringReplace(oREPApostrofos(CAD_CLI_ERPDECD.AsString),Char(39),'',[rfReplaceAll])+''',');
          SQL.Add(''''+StringReplace(oREPApostrofos(CAD_CLI_ERPRZCD.AsString),Char(39),'',[rfReplaceAll])+''',');
          SQL.Add(''''+CAD_CLI_ERPCNPJ.AsString+''',');
          SQL.Add(''''+CAD_CLI_ERPIE.AsString  +''',');
          SQL.Add(''''+CAD_CLI_ERPDDD.AsString +''',');
          SQL.Add(''''+CAD_CLI_ERPTEL.AsString +''',');
          SQL.Add(''''+IFThen(oEmail(CAD_CLI_ERPEmail.AsString),CAD_CLI_ERPEmail.AsString,EmptyStr)+''',');
          SQL.Add(''''+CAD_CLI_ERPZAP_CONTATO.AsString+''',');
          SQL.Add(''''+CAD_CLI_ERPZAP_DDD.AsString+''',');
          SQL.Add(''''+CAD_CLI_ERPZAP_TEL.AsString+''',');
          SQL.Add(''''+CAD_CLI_ERPTLO_TX.AsString+''',');
          SQL.Add(''''+oDELCharEsp(CAD_CLI_ERPLOG_NO.AsString)+''',');
          SQL.Add(''''+CAD_CLI_ERPCep.AsString +''',');
          SQL.Add(''''+CAD_CLI_ERPNRO.AsString +''',');
          SQL.Add(''''+CAD_CLI_ERPXCPL.AsString+''',');
          SQL.Add(''''+oDELCharEsp(CAD_CLI_ERPBAI_NO.AsString)+''',');
          SQL.Add(''''+oDELCharEsp(CAD_CLI_ERPLOC_NO.AsString)+''',');
          SQL.Add(''''+CAD_CLI_ERPUF.AsString   + ''',');
          SQL.Add(''''+CAD_CLI_ERPDEST.AsString + '''' );
          SQL.Add(')');
          SQL.Add('MATCHING (CLI_CNPJ)');
          ExecQuery;
        end;

        with SQLFBEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_CLI');
          SQL.Add('SET    API_B2B      = 0,');
          SQL.Add('       API_B2B_DTEV = CURRENT_TIMESTAMP');
          SQL.Add('WHERE  ID = ''' + CAD_CLI_ERPID.AsString + '''');
          ExecQuery;
        end;

        CAD_CLI_ERP.Next;
      end;
      { Final Matriz }
      aPesquisa[02,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

      oCTransact(TB2BEdicao);
      oCTransact(TFBEdicao );
    except
      on E: Exception do
      begin
        oCTransact(TB2BEdicao,ltRollback);
        oCTransact(TFBEdicao ,ltRollback);

        { Erro Matriz }
        aPesquisa[02,06] := 'API B2B: ' + API_TOKEN + '. '        + #13 +
                             PNLCaption.Caption                   + #13 +
                             Trim(E.Message)        + '. '        + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now) + '.';

        if not EMErros_B2B.Visible then
        begin
          EMErros_B2B.Lines.Add(aPesquisa[02,06]);
          EMErros_B2B.Height  := 95;
          EMErros_B2B.Visible := True;
        end;

        Exit;
      end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TFBConsulta);
  end;
end;

procedure TFrmSHE_API_B2B._PED_REC_B2B_PSQ;
begin
  with FBird.B2BPedidos do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM PED_VEN_CAB');
    SQL.Add('WHERE    ROM_IMPO IS NULL');
    SQL.Add('AND      ROM_DBAI IS NULL');
    SQL.Add('AND     (ROM_STFI = 1 OR (ROM_STFI = 13 AND ROM_CREP = 1))');
    SQL.Add('AND      ROM_CREP > 0');
    SQL.Add('AND      ROM_CVEN > 0');
    SQL.Add('AND      ROM_CPAG > 0');
    SQL.Add('AND      ROM_CTRA > 0');
    SQL.Add('ORDER BY ID');
    Open;
    Last;
  end;
end;

Procedure TFrmSHE_API_B2B._PED_VER;
begin
  { Clear Matriz }
  aPesquisa[03,00] := ''; {Empresa}
  aPesquisa[03,01] := ''; {Cadastro}
  aPesquisa[03,02] := ''; {Início}
  aPesquisa[03,03] := ''; {Fim}
  aPesquisa[03,04] := 'Pedidos Verificados'; {Descrição}
  aPesquisa[03,05] := ''; {Registros}
  aPesquisa[03,06] := ''; {Erro}

  with FBird do
  try
    oOTransact(TB2BConsulta);
    with B2BPedidos do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM PED_VEN_CAB');
      SQL.Add('WHERE    ROM_IMPO = 1');
      SQL.Add('AND      ROM_STFI = 1');
      SQL.Add('AND      ROM_CDNF IS NULL');
      SQL.Add('AND      ROM_DCAD >= '''+FormatDateTime('mm/dd/yy',IncDay(Date,-5))+'''');
      SQL.Add('ORDER BY ID');
      Open;
      B2BPedidos.Last;
      PBPrincipal.Max := B2BPedidos.RecNo; B2BPedidos.First;
    end;

    if PBPrincipal.Max > 0 then
    try
      { Caption }
      PNLCaption.Height  := 35;
      PNLCaption.Visible := True;

      { Gauge }
      PBCount              := 0;
      PBPrincipal.Position := 0;

      { Rodapé }
      PNLRodape.Height  := 20;
      PNLRodape.Visible := True;

      { Load Matriz }
      aPesquisa[03,00] := RECParametros.EP_ID;
      aPesquisa[03,01] := FormatDateTime('mm/dd/yy'      ,Date);
      aPesquisa[03,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
      aPesquisa[03,05] := IntToStr(PBPrincipal.Max);

      oOTransact(TB2BEdicao );
      oOTransact(TFBConsulta);
      while not B2BPedidos.Eof do
      begin
        {if B2BPedidosId.AsInteger = 21436 then
        tag := 0;}
        Inc(PBCount);
        Self.Caption := 'API B2B: ' + API_TOKEN + '. Sincronizando Registros '+IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max)+'.';
        PNLCaption.Caption   := 'Nº Pedido '+B2BPedidosId.AsString+' de '+FormatDateTime('dd/mm/yy hh:ss',B2BPedidosROM_DCAD.AsDateTime)+'. Cliente '+B2BPedidosROM_DCLI.AsString+'. ';
        PBPrincipal.Position := PBPrincipal.Position  + 1;

        Application.ProcessMessages;
        with SQLFBConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM ' + oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3));
          SQL.Add('WHERE  ROM_CDPR = '''+B2BPedidosId.AsString+'''');
          ExecQuery;
        end;
        if SQLFBConsulta.Eof then
        with SQLB2BEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE PED_VEN_CAB');
          SQL.Add('SET ROM_IMPO = NULL');
          SQL.Add('WHERE     ID = '''+B2BPedidosId.AsString+'''');
          ExecQuery;
        end;

        B2BPedidos.Next;
      end;
      { Final Matriz }
      aPesquisa[03,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

      oCTransact(TB2BEdicao);
    except
        on E: Exception do
        begin
          oCTransact(TB2BEdicao,ltRollback);

          { Erro Matriz }
          aPesquisa[03,06] := 'API B2B: ' + API_TOKEN + '. '        + #13 +
                               PNLCaption.Caption                   + #13 +
                               Trim(E.Message)        + '. '        + #13 +
                               FormatDateTime('dd/mm/yy hh:mm',Now) + '.';

          if not EMErros_B2B.Visible then
          begin
            EMErros_B2B.Lines.Add(aPesquisa[03,06]);
            EMErros_B2B.Height  := 95;
            EMErros_B2B.Visible := True;
          end;

          Exit;
        end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TB2BConsulta);
    oCTransact(TFBConsulta );
  end;
end;

procedure TFrmSHE_API_B2B._PED_REC;
begin
  { Clear Matriz }
  aPesquisa[04,00] := ''; {Empresa}
  aPesquisa[04,01] := ''; {Cadastro}
  aPesquisa[04,02] := ''; {Início}
  aPesquisa[04,03] := ''; {Fim}
  aPesquisa[04,04] := 'Pedidos Recebidos'; {Descrição}
  aPesquisa[04,05] := ''; {Registros}
  aPesquisa[04,06] := ''; {Erro}

  with FBird do
  try
    oOTransact(TB2BConsulta);

    _PED_REC_B2B_PSQ;
    PBPrincipal.Max := B2BPedidos.RecNo;
                       B2BPedidos.First;

    if PBPrincipal.Max > 0 then
    try
      { Caption }
      PNLCaption.Height  := 35;
      PNLCaption.Visible := True;

      { Gauge }
      PBCount              := 0;
      PBPrincipal.Position := 0;

      { Rodapé }
      PNLRodape.Height  := 20;
      PNLRodape.Visible := True;

      { Load Matriz }
      aPesquisa[04,00] := RECParametros.EP_ID;
      aPesquisa[04,01] := FormatDateTime('mm/dd/yy'      ,Date);
      aPesquisa[04,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
      aPesquisa[04,05] := IntToStr(PBPrincipal.Max);

      oOTransact(TFBConsulta);
      oOTransact(TFBProdutos);

      while not B2BPedidos.Eof do
      begin
        with SQLFBConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM ' + oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3));
          SQL.Add('WHERE  ROM_CDPR = '''+B2BPedidosId.AsString+'''');
          ExecQuery;
        end;

        if SQLFBConsulta.Eof then
        try
          oOTransact(TFBEdicao  );
          oOTransact(TB2BEdicao );

          {if B2BPedidosId.AsInteger = 21436 then
          tag := 0;}

          Inc(PBCount);
          Self.Caption := 'API B2B: ' + API_TOKEN + '. Sincronizando Registros  ' +IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max)    + '.';
          PNLCaption.Caption   := 'Nº Pedido '  + B2BPedidosId.AsString +' de ' + FormatDateTime('dd/mm/yy hh:ss',B2BPedidosROM_DCAD.AsDateTime)+' Cliente ' + B2BPedidosROM_DCLI.AsString + '. ';
          PBPrincipal.Position := PBPrincipal.Position  + 1;
          Application.ProcessMessages;

          with SQLFBEdicao do
          begin
            if (B2BPedidosROM_FLAG.AsInteger = 13) and (B2BPedidosROM_STFI.AsInteger = 1) then
            begin
              Close;
              SQL.Clear;
              SQL.Add('DELETE FROM ' + oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3));
              SQL.Add('WHERE  ROM_CDPR = '''+ B2BPedidosId.AsString+'''');
              ExecQuery;
            end;

            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM ' + oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3));
            SQL.Add('WHERE  ROM_CDPR = '''+B2BPedidosId.AsString+'''');
            SQL.Add('AND    ROM_STFI <> ''CANCELADO''');
            ExecQuery;
          end;

          if SQLFBEdicao.Eof then
          begin
            IDCT := FBird.B2BPedidosROM_CTRA.AsInteger;
            DECT := FBird.B2BPedidosROM_DTRA.AsString;

            _PED_REC_TRA;
            _PED_REC_CLI;

            if IDCL > 0 then
            begin
              _PED_REC_VEN;

              with SQLFBEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE ' + oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3));
                SQL.Add('SET');

                IF B2BPedidosROM_STFI.AsInteger = 13 THEN
                SQL.Add('ROM_STPD  = ''VENDA ONLINE'',');

                { LOG API }
                SQL.Add('API_B2B      = 1,');
                SQL.Add('API_B2B_DTRC = CURRENT_TIMESTAMP,');

                { PEDIDO }
                SQL.Add('API_B2B_IDPK = ''' + B2BPedidosID.AsString       + ''',');
                SQL.Add('API_B2B_DEPK = ''' + B2BPedidosROM_DERO.AsString + ''',');
                SQL.Add('API_B2B_DTPK = ''' + FormatDateTime('mm/dd/yy hh:mm',B2BPedidosROM_DCAD.AsDateTime) + ''',');


                { TEMPORÁRIO - DROPAR }
                SQL.Add('ROM_DEB2B = ''' + B2BPedidosROM_DERO.AsString + ''',');
                SQL.Add('ROM_DTB2B = ''' + FormatDateTime('mm/dd/yy hh:mm',B2BPedidosROM_DCAD.AsDateTime) + '''');

                SQL.Add('WHERE ROM_CDPR = '''+B2BPedidosId.AsString+'''');
                ExecQuery;
              end;

              with SQLB2BEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE PED_VEN_CAB');
                SQL.Add('SET    ROM_IMPO = 1,');

                IF B2BPedidosROM_STFI.AsInteger <> 13 THEN
                SQL.Add('       ROM_DBAI = '''+FormatDateTime('mm/dd/yy hh:mm',Now)+''',');

                { Cliente }
                if (IDCL > 0) and (IDCL <> B2BPedidosROM_CCLI.AsInteger) then
                begin
                  SQL.Add('ROM_CCLI = '''+IntToStr(IDCL)+''',');
                  SQL.Add('ROM_DCLI = '''+DECL          +''',');
                  SQL.Add('ROM_RCLI = '''+RZCL          +''',');
                end;

                { Transportadora }
                if (IDCT > 0) and (IDCT <> B2BPedidosROM_CTRA.AsInteger) then
                begin
                  SQL.Add('ROM_CTRA = '''+IntToStr(IDCT)+''',');
                  SQL.Add('ROM_DTRA = '''+DECT          +''',');
                end;

                SQL.Add('ROM_FLAG = '''+B2BPedidosROM_STFI.AsString+'''');
                SQL.Add('WHERE ID = '''+B2BPedidosId.AsString      +'''');
                ExecQuery;
              end;
            end;
          end else
          with SQLB2BEdicao do
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE PED_VEN_CAB');
            SQL.Add('SET    ROM_IMPO = 1,');
            SQL.Add('       ROM_DBAI = '''+FormatDateTime('mm/dd/yy hh:mm',Now)+''',');
            SQL.Add('       ROM_FLAG = '''+B2BPedidosROM_STFI.AsString+'''');
            SQL.Add('WHERE  ID       = '''+B2BPedidosId.AsString      +'''');
            ExecQuery;
          end;

          oCTransact(TFBEdicao  );
          oCTransact(TB2BEdicao );
        except
          oCTransact(TFBEdicao ,ltRollback);
          oCTransact(TB2BEdicao,ltRollback);
        end;

        B2BPedidos.Next;
      end;
      { Final Matriz }
      aPesquisa[04,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
    except
      on E: Exception do
      begin
        oCTransact(TFBEdicao ,ltRollback);
        oCTransact(TB2BEdicao,ltRollback);

        { Erro Matriz }
        aPesquisa[04,06] := 'API B2B: ' + API_TOKEN + '. '        + #13 +
                             PNLCaption.Caption                   + #13 +
                             Trim(E.Message)        + '. '        + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now) + '.';

        if not EMErros_B2B.Visible then
        begin
          EMErros_B2B.Lines.Add(aPesquisa[04,06]);
          EMErros_B2B.Height  := 95;
          EMErros_B2B.Visible := True;
        end;

        Exit;
      end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TFBConsulta );
    oCTransact(TFBProdutos );
    oCTransact(TB2BConsulta);
  end;
end;

procedure TFrmSHE_API_B2B._PED_REC_CLI;
begin
  IDCL := 0;
  DECL := EmptyStr;
  RZCL := EmptyStr;

  with FBird do
  begin
    with B2BClientes do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CAD_CLI');
      SQL.Add('WHERE  ID = '''+B2BPedidosROM_CCLI.AsString+'''');
      Open;
      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CAD_CLI');
        SQL.Add('WHERE  CLI_RAZA = '''+B2BPedidosROM_RCLI.AsString+'''');
        Open;
      end;
      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CAD_CLI');
        SQL.Add('WHERE  CLI_FANT = '''+StringReplace(oREPApostrofos(B2BPedidosROM_DCLI.AsString),Char(39),'',[rfReplaceAll])+'''');
        Open;
      end;

      if Eof then
      begin
        IDCL := 1;
        DECL := 'AO CONSUMIDOR';
        RZCL := 'AO CONSUMIDOR';

        Exit;
      end;

      BCNPJ := (oCnpj(B2BClientesCLI_CNPJ.AsString));
    end;

    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,CLI_FANT,CLI_RAZA FROM CAD_CLI');
      SQL.Add('WHERE');
      if BCNPJ then
         SQL.Add('CLI_CNPJ = '''+B2BClientesCLI_CNPJ.AsString+'''')
      else
         SQL.Add('ID = '''+B2BClientesID.AsString+'''');
      ExecQuery;

      if ((Eof) and (not BCNPJ)) then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,CLI_FANT,CLI_RAZA FROM CAD_CLI');
        SQL.Add('WHERE  CLI_RAZA = '''+oUTF8ToStr(StringReplace(oREPApostrofos(B2BClientesCLI_RAZA.AsString),Char(39),'',[rfReplaceAll]))+'''');
        ExecQuery;
      end;
      if ((Eof) and (not BCNPJ)) then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,CLI_FANT,CLI_RAZA FROM CAD_CLI');
        SQL.Add('WHERE  CLI_RAZA = '''+oUTF8ToStr(StringReplace(oREPApostrofos(B2BClientesCLI_RAZA.AsString),Char(39),'',[rfReplaceAll]))+'''');
        ExecQuery;
      end;

      if not Eof then
      begin
        IDCL := Current.Vars[0].AsInteger;
        DECL := StringReplace(oREPApostrofos(Current.Vars[1].AsString),Char(39),'',[rfReplaceAll]);
        RZCL := StringReplace(oREPApostrofos(Current.Vars[2].AsString),Char(39),'',[rfReplaceAll]);
        Exit;
      end;
    end;

    SPFBEdicao.Close;
    SPFBEdicao.StoredProcName := 'SP_CAD_CLI';
    SPFBEdicao.Prepare;

    { Cadastro }
    SPFBEdicao.ParamByName('ID'  ).Value := 0;
    SPFBEdicao.ParamByName('IDEP').Value := RECParametros.EP_ID;
    SPFBEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;

    SPFBEdicao.ParamByName('dfun').Value := RECParametros.SHE_DATA;
    SPFBEdicao.ParamByName('NAFA').Value := 0;

    { Sintegra }
    SPFBEdicao.ParamByName('fant').Value := oUTF8ToStr(StringReplace(oREPApostrofos(B2BClientesCLI_FANT.AsString),Char(39),'',[rfReplaceAll]));
    SPFBEdicao.ParamByName('raza').Value := oUTF8ToStr(StringReplace(oREPApostrofos(B2BClientesCLI_RAZA.AsString),Char(39),'',[rfReplaceAll]));
    SPFBEdicao.ParamByName('degp').Value := EmptyStr;
    SPFBEdicao.ParamByName('ramo').Value := EmptyStr;

    SPFBEdicao.ParamByName('cnpj').Value := IFThen(Length(B2BClientesCLI_CNPJ.AsString) = 14,B2BClientesCLI_CNPJ.AsString,EmptyStr);
    SPFBEdicao.ParamByName('insc').Value := B2BClientesCLI_INSC.AsString;
    SPFBEdicao.ParamByName('imun').Value := EmptyStr;
    SPFBEdicao.ParamByName('ccm' ).Value := EmptyStr;
    SPFBEdicao.ParamByName('cpf' ).Value := EmptyStr;

    { Fiscal }
    SPFBEdicao.ParamByName('reve').Value := 1;
    SPFBEdicao.ParamByName('ricm').Value := 1;
    SPFBEdicao.ParamByName('cicm').Value := 0;

    { Programações }
    SPFBEdicao.ParamByName('tipo'   ).Value := 0;
    SPFBEdicao.ParamByName('reserva').Value := 0;

    { Vendedores }
    SPFBEdicao.ParamByName('cven').Value := B2BPedidosROM_CVEN.AsInteger; { Interno }
    SPFBEdicao.ParamByName('crep').Value := B2BPedidosROM_CREP.AsInteger; { Externo }

    { Comercial }
    SPFBEdicao.ParamByName('cont').Value := EmptyStr;
    SPFBEdicao.ParamByName('mail').Value := IFThen(oEmail(B2BClientesCLI_MAIL.AsString),B2BClientesCLI_MAIL.AsString,EmptyStr);

    { Fone }
    SPFBEdicao.ParamByName('ddd' ).Value := B2BClientesCLI_DDD.AsString;
    SPFBEdicao.ParamByName('tel1').Value := B2BClientesCLI_FONE.AsString;
    SPFBEdicao.ParamByName('dd2' ).Value := EmptyStr;
    SPFBEdicao.ParamByName('tel2').Value := EmptyStr;
    SPFBEdicao.ParamByName('dd3' ).Value := EmptyStr;
    SPFBEdicao.ParamByName('tel3').Value := EmptyStr;

    { Celular }
    SPFBEdicao.ParamByName('dd5' ).Value := EmptyStr;
    SPFBEdicao.ParamByName('cel' ).Value := EmptyStr;
    SPFBEdicao.ParamByName('neid').Value := EmptyStr;

    { Endereço }
    SPFBEdicao.ParamByName('tlog').Value := B2BClientesCLI_TLOG.AsString;
    SPFBEdicao.ParamByName('logr').Value := B2BClientesCLI_LOGR.AsString;
    SPFBEdicao.ParamByName('nume').Value := B2BClientesCLI_NUME.AsString;
    SPFBEdicao.ParamByName('comp').Value := B2BClientesCLI_COMP.AsString;
    SPFBEdicao.ParamByName('cep' ).Value := B2BClientesCLI_CEP.AsString;
    SPFBEdicao.ParamByName('bai' ).Value := B2BClientesCLI_BAI.AsString;
    SPFBEdicao.ParamByName('cid' ).Value := B2BClientesCLI_CID.AsString;
    SPFBEdicao.ParamByName('cmun').Value := EmptyStr;
    SPFBEdicao.ParamByName('esta').Value := B2BClientesCLI_ESTA.AsString;

    { Financeiro }
    SPFBEdicao.ParamByName('fcon').Value := EmptyStr;
    SPFBEdicao.ParamByName('fmai').Value := EmptyStr;

    { Fone }
    SPFBEdicao.ParamByName('fddd').Value := EmptyStr;
    SPFBEdicao.ParamByName('fte1').Value := EmptyStr;
    SPFBEdicao.ParamByName('fdd2').Value := EmptyStr;
    SPFBEdicao.ParamByName('fte2').Value := EmptyStr;
    SPFBEdicao.ParamByName('fdd3').Value := EmptyStr;
    SPFBEdicao.ParamByName('fte3').Value := EmptyStr;

    { Celular }
    SPFBEdicao.ParamByName('fdd5').Value := EmptyStr;
    SPFBEdicao.ParamByName('fcel').Value := EmptyStr;
    SPFBEdicao.ParamByName('fnid').Value := EmptyStr;

    { Endereço }
    SPFBEdicao.ParamByName('tloc').Value := EmptyStr; 
    SPFBEdicao.ParamByName('logc').Value := EmptyStr;
    SPFBEdicao.ParamByName('numc').Value := EmptyStr;
    SPFBEdicao.ParamByName('comc').Value := EmptyStr;
    SPFBEdicao.ParamByName('cepc').Value := EmptyStr;
    SPFBEdicao.ParamByName('baic').Value := EmptyStr;
    SPFBEdicao.ParamByName('cidc').Value := EmptyStr;
    SPFBEdicao.ParamByName('cmuc').Value := EmptyStr;
    SPFBEdicao.ParamByName('estc').Value := EmptyStr;

    { Compras }
    SPFBEdicao.ParamByName('ccon').Value := EmptyStr;
    SPFBEdicao.ParamByName('cmai').Value := EmptyStr;

    { Fone }
    SPFBEdicao.ParamByName('cddd').Value := EmptyStr;
    SPFBEdicao.ParamByName('cte1').Value := EmptyStr;
    SPFBEdicao.ParamByName('cdd2').Value := EmptyStr;
    SPFBEdicao.ParamByName('cte2').Value := EmptyStr;
    SPFBEdicao.ParamByName('cdd3').Value := EmptyStr;
    SPFBEdicao.ParamByName('cte3').Value := EmptyStr;

    { Celular }
    SPFBEdicao.ParamByName('cdd5').Value := EmptyStr;
    SPFBEdicao.ParamByName('ccel').Value := EmptyStr;
    SPFBEdicao.ParamByName('cnid').Value := EmptyStr;

    { Endereço }
    SPFBEdicao.ParamByName('tlov').Value := EmptyStr;
    SPFBEdicao.ParamByName('logv').Value := EmptyStr;
    SPFBEdicao.ParamByName('numv').Value := EmptyStr;
    SPFBEdicao.ParamByName('comv').Value := EmptyStr;
    SPFBEdicao.ParamByName('cepv').Value := EmptyStr;
    SPFBEdicao.ParamByName('baiv').Value := EmptyStr;
    SPFBEdicao.ParamByName('cidv').Value := EmptyStr;
    SPFBEdicao.ParamByName('cmuv').Value := EmptyStr;
    SPFBEdicao.ParamByName('estv').Value := EmptyStr;

    { Informações Adicionais }
    SPFBEdicao.ParamByName('obso').Value := EmptyStr;
    SPFBEdicao.ParamByName('obse').Value := EmptyStr;

    { Usuário }
    SPFBEdicao.ParamByName('dusu').Value := B2BPedidosROM_CVEN.AsInteger;

    { Status }
    SPFBEdicao.ParamByName('stav').Value := 'A';

    { Dispositivos }
    SPFBEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
    SPFBEdicao.ParamByName('HOST').Value := RECParametros.HOST;

    { Dropar }
    SPFBEdicao.ParamByName('dd4' ).Value := EmptyStr;
    SPFBEdicao.ParamByName('dd6' ).Value := EmptyStr;
    SPFBEdicao.ParamByName('fdd4').Value := EmptyStr;
    SPFBEdicao.ParamByName('cdd4').Value := EmptyStr;
    SPFBEdicao.ParamByName('fdd6').Value := EmptyStr;
    SPFBEdicao.ParamByName('cdd6').Value := EmptyStr;
    SPFBEdicao.ParamByName('tce1').Value := EmptyStr;
    SPFBEdicao.ParamByName('ftc1').Value := EmptyStr;
    SPFBEdicao.ParamByName('fnce').Value := EmptyStr;
    SPFBEdicao.ParamByName('ftc2').Value := EmptyStr;
    SPFBEdicao.ParamByName('ncel').Value := EmptyStr;
    SPFBEdicao.ParamByName('cnce').Value := EmptyStr;
    SPFBEdicao.ParamByName('tce2').Value := EmptyStr;
    SPFBEdicao.ParamByName('ctc1').Value := EmptyStr;
    SPFBEdicao.ParamByName('ctc2').Value := EmptyStr;
    SPFBEdicao.ExecProc;

    with SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAD_CLI,0) FROM RDB$DATABASE');
      ExecQuery;
    end;

    IDCL := SQLFBEdicao.Current.Vars[0].AsInteger;
    DECL := oUTF8ToStr(StringReplace(oREPApostrofos(B2BClientesCLI_FANT.AsString),Char(39),'',[rfReplaceAll]));
    RZCL := oUTF8ToStr(StringReplace(oREPApostrofos(B2BClientesCLI_RAZA.AsString),Char(39),'',[rfReplaceAll]));

    if IDCL <> B2BClientesId.AsInteger then
       with SQLB2BEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE CAD_CLI');
         SQL.Add('SET    ID       = ''' + IntToStr(IDCL) + ''',');
         SQL.Add('       CLI_FANT = ''' + DECL           + ''',');
         SQL.Add('       CLI_RAZA = ''' + RZCL           + '''' );
         SQL.Add('WHERE  ID       = ''' + B2BClientesID.AsString + '''' );
         ExecQuery;
      end;
  end;
end;

procedure TFrmSHE_API_B2B._PED_REC_TRA;
begin
  with FBird do
  begin
    with B2BTransportadoras do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CAD_TRA');
      SQL.Add('WHERE  ID = ''' + INTTOSTR(IDCT) + '''');
      Open;

      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CAD_TRA');
        SQL.Add('WHERE  TRA_FANT = ''' + DECT + '''');
        Open;
      end;
    end;

    if (Length(B2BTransportadorasTRA_CNPJ.AsString) = 14) and (B2BTransportadorasTRA_CNPJ.AsString <> RECParametros.CNPJ)  then
    begin
      with SQLFBEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,FANTASIA FROM CAD_TRA');
        SQL.Add('WHERE  CNPJ = ''' + B2BTransportadorasTRA_CNPJ.AsString + '''');
        ExecQuery;

        if not Eof then
        begin
          IDCT := Current.Vars[0].AsInteger;
          DECT := Current.Vars[1].AsString;
        end;
      end;

      { Apenas para inclusões }
      if SQLFBEdicao.Eof then
      begin
        SPFBEdicao.Close;
        SPFBEdicao.StoredProcName := 'SP_CAD_TRA_TMP';
        SPFBEdicao.Prepare;

        SPFBEdicao.ParamByName('FANTASIA').Value := B2BTransportadorasTRA_FANT.AsString;
        SPFBEdicao.ParamByName('RAZAO'   ).Value := B2BTransportadorasTRA_RAZA.AsString;
        SPFBEdicao.ParamByName('CNPJ'    ).Value := B2BTransportadorasTRA_CNPJ.AsString;
        SPFBEdicao.ParamByName('IE'      ).Value := B2BTransportadorasTRA_INSC.AsString;
        SPFBEdicao.ParamByName('DDD'     ).Value := B2BTransportadorasTRA_DDD.AsString;
        SPFBEdicao.ParamByName('FONE'    ).Value := B2BTransportadorasTRA_FONE.AsString;
        SPFBEdicao.ParamByName('CONTATO' ).Value := B2BTransportadorasTRA_CONT.AsString;
        SPFBEdicao.ParamByName('EMAIL'   ).Value := B2BTransportadorasTRA_MAIL.AsString;
        SPFBEdicao.ParamByName('TLGR'    ).Value := B2BTransportadorasTRA_TLOG.AsString;
        SPFBEdicao.ParamByName('XLGR'    ).Value := B2BTransportadorasTRA_LOGR.AsString;
        SPFBEdicao.ParamByName('CEP'     ).Value := B2BTransportadorasTRA_CEP.AsString;
        SPFBEdicao.ParamByName('NRO'     ).Value := B2BTransportadorasTRA_NUME.AsString;
        SPFBEdicao.ParamByName('XCPL'    ).Value := B2BTransportadorasTRA_COMP.AsString;
        SPFBEdicao.ParamByName('XBAI'    ).Value := B2BTransportadorasTRA_BAI.AsString;
        SPFBEdicao.ParamByName('XMUN'    ).Value := B2BTransportadorasTRA_CID.AsString;
        SPFBEdicao.ParamByName('UF'      ).Value := B2BTransportadorasTRA_ESTA.AsString;
        SPFBEdicao.ExecProc;

        IDCT := SPFBEdicao.ParamByName('IDCT').AsInteger;
        DECT := SPFBEdicao.ParamByName('DECT').AsString;

        with SQLB2BEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_TRA');
          SQL.Add('SET    ID       = '''+IntToStr(IDCT)+''',');
          SQL.Add('       TRA_FANT = '''+DECT          +'''' );
          SQL.Add('WHERE  ID       = '''+B2BTransportadorasID.AsString+'''');
          ExecQuery;
        end;
      end;  
    end;
  end;
end;

procedure TFrmSHE_API_B2B._PED_REC_VEN;
begin
  with FBird do
  begin
    ITEM := 0;

    with SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_' + oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3) + ',0) FROM RDB$DATABASE');
      ExecQuery;
      IDPP := Current.Vars[0].AsInteger + 1;
    end;

    SPFBEdicao.StoredProcName := 'SP_PED_PRG_CAB';
    SPFBEdicao.Prepare;

    SPFBEdicao.ParamByName('ped').Value  := oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3);
    SPFBEdicao.ParamByName('id').Value   := 0;
    SPFBEdicao.ParamByName('cdpr').Value := B2BPedidosId.AsInteger;
    SPFBEdicao.ParamByName('CDCX').Value := RECParametros.CDCX;
    SPFBEdicao.ParamByName('dero').Value := B2BPedidosROM_DERO.AsString;
    SPFBEdicao.ParamByName('stpd').Value := IFThen(RECParametros.EP_ID = 1,'TECIDO','PLÁSTICO');
    SPFBEdicao.ParamByName('stco').Value := 'BANCÁRIO';
    SPFBEdicao.ParamByName('stfi').Value := 'PENDENTE';
    SPFBEdicao.ParamByName('ccli').Value := IDCL;
    SPFBEdicao.ParamByName('cven').Value := B2BPedidosROM_CVEN.AsInteger;
    SPFBEdicao.ParamByName('crep').Value := B2BPedidosROM_CREP.AsInteger;
    SPFBEdicao.ParamByName('cpag').Value := B2BPedidosROM_CPAG.AsInteger;
    SPFBEdicao.ParamByName('ctra').Value := IDCT;
    SPFBEdicao.ParamByName('qtve').Value := B2BPedidosROM_QTDE.AsFloat;
    SPFBEdicao.ParamByName('rlve').Value := 0;
    SPFBEdicao.ParamByName('tsde').Value := B2BPedidosROM_TSDE.AsFloat;
    SPFBEdicao.ParamByName('tdsc').Value := '%';
    SPFBEdicao.ParamByName('pdsc').Value := B2BPedidosROM_DESC.AsFloat;
    SPFBEdicao.ParamByName('tcde').Value := B2BPedidosROM_TCDE.AsFloat;
    SPFBEdicao.ParamByName('conc').Value := 1;
    SPFBEdicao.ParamByName('vfrt').Value := 0;
    SPFBEdicao.ParamByName('mfrt').Value := B2BPedidosROM_MODFRETE.AsInteger;
    SPFBEdicao.ParamByName('psbr').Value := 0;
    SPFBEdicao.ParamByName('pslq').Value := 0;
    SPFBEdicao.ParamByName('obse').Value := 'Pedido B2B Nº: '+B2BPedidosROM_DERO.AsString + ' - Valor Total: ' + FormatFloat('R$ ,##,0.00',B2BPedidosROM_TCDE.AsFloat) + ' (' + FormatFloat(',##,0.00',B2BPedidosROM_QTDE.AsFloat) + '/' + IntToStr(B2BPedidosROM_QTRL.AsInteger) + ')'  +#13+
                                             oPrimeiraLetraMaiuscula(oUTF8ToStr(B2BPedidosROM_OBSV.AsString));
    SPFBEdicao.ExecProc;

    B2BFKPedidos.Close;
    B2BFKPedidos.Params[0].Value := B2BPedidosID.AsString;
    B2BFKPedidos.Open;
    while not B2BFKPedidos.Eof do
    begin
      if uCPPSQ(RECParametros.EP_ID,B2BFKPedidosROM_CPRO.AsString,'PRODUTO') > 0 then
      begin
        inc(ITEM);

        SPFBEdicao.Close;
        SPFBEdicao.StoredProcName := 'SP_PED_PRG_ITE';
        SPFBEdicao.Prepare;

        SPFBEdicao.ParamByName('ped').Value  := oREPZero('PED_PRG_ITE','_',RECParametros.EP_ID,3);
        SPFBEdicao.ParamByName('ID').Value   := 0;
        SPFBEdicao.ParamByName('CCAB').Value := IDPP;
        SPFBEdicao.ParamByName('ITEM').Value := oStrZero(ITEM,4);
        SPFBEdicao.ParamByName('CPRO').Value := FBCAD_PROID.AsInteger;
        SPFBEdicao.ParamByName('DECP').Value := FBCAD_PRODECP.AsString;
        SPFBEdicao.ParamByName('DGCP').Value := FBCAD_PRODGCP.AsString;
        SPFBEdicao.ParamByName('UCOM').Value := FBCAD_PROUCOM.AsString;
        SPFBEdicao.ParamByName('UCON').Value := FBCAD_PROUCON.AsString;
        SPFBEdicao.ParamByName('QTDE').Value := B2BFKPedidosROM_QTDE.AsFloat;
        SPFBEdicao.ParamByName('QTRL').Value := bRET_PECA(B2BFKPedidosROM_QTDE.AsFloat,FBCAD_PROUQTDE.AsFloat);;
        SPFBEdicao.ParamByName('PREC').Value := B2BFKPedidosROM_UNIT.AsFloat;
        SPFBEdicao.ParamByName('VPRC_PAD_INI').Value := FBCAD_PROVPRC_PAD_INI.AsFloat;
        SPFBEdicao.ParamByName('VPRC_PAD_FIM').Value := FBCAD_PROVPRC_PAD_FIM.AsFloat;
        SPFBEdicao.ParamByName('UNIT').Value := B2BFKPedidosROM_UNIT.AsFloat;
        SPFBEdicao.ParamByName('PDSC').Value := 0;
        SPFBEdicao.ParamByName('TOTA').Value := B2BFKPedidosROM_TOTA.AsFloat;
        SPFBEdicao.ParamByName('NCM' ).Value := FBCAD_PRONCM.AsString;
        SPFBEdicao.ParamByName('PIPI').Value := FBCAD_PROPIPI.AsFloat;
        SPFBEdicao.ParamByName('pslq').Value := 0;
        SPFBEdicao.ParamByName('psbr').Value := 0;

        { Peso Líquido }
        if  LeftStr(SPFBEdicao.ParamByName('UCOM').AsString,1) = 'K' then
            SPFBEdicao.ParamByName('pslq').Value := SPFBEdicao.ParamByName('QTDE').AsFloat else
        begin
          if (LeftStr(SPFBEdicao.ParamByName('UCOM').AsString,1) = 'M') and (FBCAD_PROREND.AsFloat > 0) then
              SPFBEdicao.ParamByName('pslq').Value := SPFBEdicao.ParamByName('QTDE').AsFloat / FBCAD_PROREND.AsFloat else
          if (LeftStr(SPFBEdicao.ParamByName('UCOM').AsString,1) = 'M') and (FBCAD_PROMETRO.AsFloat > 0) and (FBCAD_PROPESO.AsFloat > 0) then
              SPFBEdicao.ParamByName('pslq').Value := (SPFBEdicao.ParamByName('QTDE').AsFloat * FBCAD_PROPESO.AsFloat) / FBCAD_PROMETRO.AsFloat else
          if  FBCAD_PROPESO.AsFloat > 0 then
              SPFBEdicao.ParamByName('pslq').Value := (FBCAD_PROPESO.AsFloat * SPFBEdicao.ParamByName('QTDE').AsFloat) / IFThen(FBCAD_PROUQTDE.AsFloat > 0,FBCAD_PROUQTDE.AsFloat,1);
        end;

        { Peso Bruto }
        SPFBEdicao.ParamByName('psbr').Value := SPFBEdicao.ParamByName('pslq').AsFloat + (SPFBEdicao.ParamByName('QTRL').AsInteger * IFThen(FBCAD_PROPSCN.AsFloat > 0,FBCAD_PROPSCN.AsFloat,0.02));
        SPFBEdicao.ParamByName('DEST').Value := 'PENDENTE';
        SPFBEdicao.ExecProc;

        SPFBEdicao.Close;
        SPFBEdicao.StoredProcName := 'SP_CAD_PRO_PRG';
        SPFBEdicao.Prepare;
        
        SPFBEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
        SPFBEdicao.ParamByName('ACDFK').Value := IDPP;
        SPFBEdicao.ParamByName('ADEFK').Value := B2BPedidosROM_DERO.AsString;
        SPFBEdicao.ParamByName('ADTFK').Value := NOW;
        SPFBEdicao.ParamByName('AIDCL').Value := IDCL;
        SPFBEdicao.ParamByName('ADECL').Value := StringReplace(oREPApostrofos(B2BPedidosROM_DCLI.AsString),Char(39),'',[rfReplaceAll]);
        SPFBEdicao.ParamByName('AIDCV').Value := B2BPedidosROM_CVEN.AsInteger;
        SPFBEdicao.ParamByName('ADECV').Value := B2BPedidosROM_DVEN.AsString;
        SPFBEdicao.ParamByName('AIDCR').Value := B2BPedidosROM_CREP.AsInteger;
        SPFBEdicao.ParamByName('ADECR').Value := B2BPedidosROM_DREP.AsString;
        SPFBEdicao.ParamByName('AIDCP').Value := FBCAD_PROID.AsInteger;
        SPFBEdicao.ParamByName('ADGCP').Value := FBCAD_PRODGCP.AsString;;
        SPFBEdicao.ParamByName('AQTDE').Value := B2BFKPedidosROM_QTDE.AsFloat;
        SPFBEdicao.ParamByName('AQTRL').Value := bRET_PECA(B2BFKPedidosROM_QTDE.AsFloat,FBird.FBCAD_PROUQTDE.AsFloat);
        SPFBEdicao.ParamByName('AVUPV').Value := B2BFKPedidosROM_UNIT.AsFloat;
        SPFBEdicao.ExecProc;
      end;
      B2BFKPedidos.Next;
    end;
  end;
end;

Procedure TFrmSHE_API_B2B._PED_ENV;
begin
  { Clear Matriz }
  aPesquisa[05,00] := ''; {Empresa}
  aPesquisa[05,01] := ''; {Cadastro}
  aPesquisa[05,02] := ''; {Início}
  aPesquisa[05,03] := ''; {Fim}
  aPesquisa[05,04] := 'Pedidos Enviados'; {Descrição}
  aPesquisa[05,05] := ''; {Registros}
  aPesquisa[05,06] := ''; {Erro}

  with FBird do
  try
    oOTransact(TFBConsulta);
    with ERPPedidos do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PV.ID,PP.ROM_CDPR,PP.ROM_DERO AS ROM_DEPP,PV.ROM_DERO,PV.ROM_CCLI,CL.CLI_FANT AS ROM_DCLI,CL.CLI_RAZA AS ROM_RCLI,');
      SQL.Add('       PV.ROM_CDNF,PV.DTNF,PV.ROM_CTRA,PV.ROM_DTRA,PV.ROM_QTPD,PV.ROM_RLPD,PV.ROM_VNF,PV.ROM_DTCA,');
      SQL.Add('       TRIM(CASE PV.ROM_STFI');
      SQL.Add('            WHEN ''SEPARANDO''                THEN ''2''');
      SQL.Add('            WHEN ''AGUARDANDO CRÉDITO''       THEN ''3''');
      SQL.Add('            WHEN ''AGUARDANDO LIBERAÇÃO''     THEN ''4''');
      SQL.Add('            WHEN ''FATURADO''                 THEN ''5''');
      SQL.Add('            WHEN ''PENDENTE''                 THEN ''6''');
      SQL.Add('            WHEN ''CANCELADO''                THEN ''7''');
      SQL.Add('            WHEN ''CARTÓRIO''                 THEN ''8''');
      SQL.Add('            WHEN ''NÃO PAGO''                 THEN ''9''');
      SQL.Add('            WHEN ''PROTESTADO''               THEN ''10''');
      SQL.Add('            WHEN ''PROTESTADO COM INSTRUÇÃO'' THEN ''11''');
      SQL.Add('            WHEN ''SUSPENSO''                 THEN ''12''');
      SQL.Add('            ELSE ''1''');
      SQL.Add('       END) AS ROM_STFI');
      SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PV');


      SQL.Add('JOIN CAD_CLI AS CL ON (CL.ID  = PV.IDCD)');
      SQL.Add('JOIN ' + oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3) + ' AS PP ON ((PP.ID = PV.ROM_CDPR) AND (PP.ROM_CDPR > 0))');
      SQL.Add('WHERE  PV.API_B2B = 1');
      SQL.Add('ORDER BY 2');
      Open;
      Last;
    end;

    if ERPPedidos.RecNo > 0 then
    begin
      { Caption }
      PNLCaption.Height  := 35;
      PNLCaption.Visible := True;

      { Gauge }
      PBCount              := 0;
      PBPrincipal.Position := 0;
      PBPrincipal.Max      := ERPPedidos.RecNo; ERPPedidos.First;

      { Rodapé }
      PNLRodape.Height  := 20;
      PNLRodape.Visible := True;

      { Load Matriz }
      aPesquisa[05,00] := RECParametros.EP_ID;
      aPesquisa[05,01] := FormatDateTime('mm/dd/yy'      ,Date);
      aPesquisa[05,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
      aPesquisa[05,05] := IntToStr(PBPrincipal.Max);

      while not ERPPedidos.Eof do
      begin
        Inc(PBCount);
        Self.Caption := 'API B2B: ' + API_TOKEN + '. Sincronizando Registros '+IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max)+'.';
        PNLCaption.Caption   := 'Nº Pedido '+ERPPedidosId.AsString+' de '+FormatDateTime('dd/mm/yy hh:ss',ERPPedidosROM_DTCA.AsDateTime)+' Cliente '+ERPPedidosROM_DCLI.AsString+'. ';
        PBPrincipal.Position := PBPrincipal.Position  + 1;

        Application.ProcessMessages;
        try
          oOTransact(TB2BEdicao);
          with SQLB2BEdicao do
          begin
            Close;
            SQL.Clear;

            SQL.Add('UPDATE PED_VEN_CAB');
            SQL.Add('SET');
            SQL.Add('ROM_STFI = '''+ERPPedidosROM_STFI.AsString+''',');

            SQL.Add('ROM_DCLI = '''+StringReplace(oREPApostrofos(ERPPedidosROM_DCLI.AsString),Char(39),'',[rfReplaceAll])+''',');
            SQL.Add('ROM_RCLI = '''+StringReplace(oREPApostrofos(ERPPedidosROM_RCLI.AsString),Char(39),'',[rfReplaceAll])+''',');

            if ERPPedidosROM_CDNF.AsInteger > 0 then
            begin
              SQL.Add('ROM_CDNF = '''+IntToStr(ERPPedidosROM_CDNF.AsInteger)+''',');
              SQL.Add('ROM_DTNF = '''+FormatDateTime('mm/dd/yy hh:mm',ERPPedidosDTNF.AsDateTime)+''',');
              SQL.Add('ROM_VNF  = '''+oStrTran(ERPPedidosROM_VNF.AsString,',','.')+''',');
            end;

            SQL.Add('ROM_CTRA = '''+IntToStr(ERPPedidosROM_CTRA.AsInteger)+''',');
            SQL.Add('ROM_DTRA = '''+ERPPedidosROM_DTRA.AsString           +''',');

            SQL.Add('ROM_DBAI = '''+FormatDateTime('mm/dd/yy hh:mm',ERPPedidosROM_DTCA.AsDateTime)+'''');
            SQL.Add('WHERE ID = '''+ERPPedidosROM_CDPR.AsString+'''');
            ExecQuery;

            Close;
            SQL.Clear;
            SQL.Add('UPDATE CAD_CLI ');
            SQL.Add('SET    FLAG = 0');
            SQL.Add('WHERE  ID   = ''' + ERPPedidosROM_CCLI.AsString + '''');
            ExecQuery;
          end;

          oOTransact(TFBEdicao);
          with SQLFBEdicao do
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
            SQL.Add('SET   API_B2B      = 0,');
            SQL.Add('      API_B2B_DTEV = CURRENT_TIMESTAMP');
            SQL.Add('WHERE ID = '''+ERPPedidosID.AsString+'''');
            ExecQuery;
          end;

          oCTransact(TB2BEdicao);
          oCTransact(TFBEdicao );
        except
          on E: Exception do
          begin
            oCTransact(TB2BEdicao,ltRollback);
            oCTransact(TFBEdicao ,ltRollback);

            { Erro Matriz }
            aPesquisa[05,06] := 'API B2B: ' + API_TOKEN + '. '        + #13 +
                                 PNLCaption.Caption                   + #13 +
                                 Trim(E.Message)        + '. '        + #13 +
                                 FormatDateTime('dd/mm/yy hh:mm',Now) + '.';

            if not EMErros_B2B.Visible then
            begin
              EMErros_B2B.Lines.Add(aPesquisa[05,06]);
              EMErros_B2B.Height  := 95;
              EMErros_B2B.Visible := True;
            end;
          end;
        end;

        ERPPedidos.Next;
      end;

      { Final Matriz }
      aPesquisa[05,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TFBConsulta);
  end;
end;

procedure TFrmSHE_API_B2B._PRO_PRC_B2B;
begin
  { Clear Matriz }
  aPesquisa[06,00] := ''; {Empresa}
  aPesquisa[06,01] := ''; {Cadastro}
  aPesquisa[06,02] := ''; {Início}
  aPesquisa[06,03] := ''; {Fim}
  aPesquisa[06,04] := 'Preços B2B'; {Descrição}
  aPesquisa[06,05] := ''; {Registros}
  aPesquisa[06,06] := ''; {Erro}

  with FBird do
  try
    try
      oOTransact(TFBEdicao);
      with SQLFBEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT MAX(ID) FROM TAB_API_PRC_CAT');
        SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
        ExecQuery;
        PBPrincipal.Max := Current.Vars[0].AsInteger;

        if PBPrincipal.Max > 0 then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT GEN_ID(IDG_API_PRC_CAT,1) FROM RDB$DATABASE');
          ExecQuery;
          IDG_API_PRC_CAT := Current.Vars[0].AsString;

          Close;
          SQL.Clear;
          SQL.Add('UPDATE TAB_API_PRC_CAT');
          SQL.Add('SET    IDEV = '''+IDG_API_PRC_CAT +'''');
          SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
          SQL.Add('AND    IDEV = 0');
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM TAB_API_PRC_CAT');
          SQL.Add('WHERE    IDEV = '''+IDG_API_PRC_CAT+'''');
          SQL.Add('ORDER BY ID,UF');
          ExecQuery;
          PBPrincipal.Max := oLast (SQLFBEdicao);
                             oFirst(SQLFBEdicao);
        end;
      end;

      if PBPrincipal.Max > 0 then
      begin
        { Caption }
        PNLCaption.Height  := 35;
        PNLCaption.Visible := True;

        { Gauge }
        PBCount              := 0;
        PBPrincipal.Position := 0;

        { Rodapé }
        PNLRodape.Height  := 20;
        PNLRodape.Visible := True;

        { Load Matriz }
        aPesquisa[06,00] := RECParametros.EP_ID;
        aPesquisa[06,01] := FormatDateTime('mm/dd/yy'      ,Date);
        aPesquisa[06,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
        aPesquisa[06,05] := IntToStr(PBPrincipal.Max);

        oOTransact(TB2BEdicao);
        _PRO_PRC_B2B_SYNC;

        with SQLFBEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM TAB_API_PRC_CAT');
          SQL.Add('WHERE  IDEV = '''+IDG_API_PRC_CAT+'''');
          ExecQuery;
        end;

        { Final Matriz }
        aPesquisa[06,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

        oCTransact(TB2BEdicao);
        oCTransact(TFBEdicao );
      end;
    except
      on E: Exception do
      begin
        oCTransact(TB2BEdicao,ltRollback);
        oCTransact(TFBEdicao ,ltRollback);

        { Erro Matriz }
        aPesquisa[06,06] := 'API B2B: ' + API_TOKEN + '. '        + #13 +
                             PNLCaption.Caption                   + #13 +
                             Trim(E.Message)        + '. '        + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now) + '.';

        if not EMErros_B2B.Visible then
        begin
          EMErros_B2B.Lines.Add(aPesquisa[06,06]);
          EMErros_B2B.Height  := 95;
          EMErros_B2B.Visible := True;
        end;

        Exit;
      end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TFBEdicao);
  end;
end;

procedure TFrmSHE_API_B2B._PRO_PRC_B2B_SYNC;
begin
  with FBird do
       while not SQLFBEdicao.Eof do
       begin
         Inc(PBCount);
         Self.Caption := 'API B2B: ' + API_TOKEN + '. Sincronizando Registros '   +IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max)+'.';
         PNLCaption.Caption   := SQLFBEdicao.Current.ByName('DESCRICAO').AsString+' '+SQLFBEdicao.Current.ByName('MFRT').AsString+' '+SQLFBEdicao.Current.ByName('UF').AsString+'. ';
         PBPrincipal.Position := PBPrincipal.Position  + 1;
         Application.ProcessMessages;

         with SQLB2BEdicao do
         begin
           Close;
           SQL.Clear;
           SQL.Add('UPDATE OR INSERT');
           SQL.Add('INTO   TAB_SCT_PRC (ID,IDEV ,IDEP,DEEP,IDCA    ,');
           SQL.Add('                    TABELA  ,DESCRICAO,ARTIGO  ,UCON,NCM,PIPI,');
           SQL.Add('                    PCOM_PAD,VPRC_PAD ,VPRC_PRZ,VPRC_PRO,');
           SQL.Add('                    VPRC_4  ,VPRC_45  ,VPRC_5  ,VPRC_55 ,VPRC_6,VPRC_7,VPRC_8,VPRC_9,VPRC_10,');
           SQL.Add('                    MFRT    ,UF       ,FPAIS)');

           SQL.Add('VALUES (');

           SQL.Add(''''+SQLFBEdicao.Current.ByName('ID'  ).AsString+''',');
           SQL.Add(''''+SQLFBEdicao.Current.ByName('IDEV').AsString+''',');

           SQL.Add(''''+SQLFBEdicao.Current.ByName('IDEP').AsString+''',');
           SQL.Add(''''+SQLFBEdicao.Current.ByName('DEEP').AsString+''',');
           SQL.Add(''''+SQLFBEdicao.Current.ByName('IDCA').AsString+''',');

           SQL.Add(''''+SQLFBEdicao.Current.ByName('TABELA'   ).AsString+''',');
           SQL.Add(''''+SQLFBEdicao.Current.ByName('DESCRICAO').AsString+''',');

           SQL.Add(''''+SQLFBEdicao.Current.ByName('ARTIGO').AsString+''',');
           SQL.Add(''''+SQLFBEdicao.Current.ByName('UCON').AsString+''',');
           SQL.Add(''''+SQLFBEdicao.Current.ByName('NCM'   ).AsString+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('PIPI').AsString,',','.')+''',');

           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('PCOM_PAD').AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_PAD').AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_PRZ').AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_PRO').AsString,',','.')+''',');

           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_4' ).AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_45').AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_5' ).AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_55').AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_6' ).AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_7' ).AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_8' ).AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_9' ).AsString,',','.')+''',');
           SQL.Add(''''+oStrTran(SQLFBEdicao.Current.ByName('VPRC_10').AsString,',','.')+''',');

           SQL.Add(''''+SQLFBEdicao.Current.ByName('MFRT' ).AsString+''',');
           SQL.Add(''''+SQLFBEdicao.Current.ByName('UF'   ).AsString+''',');
           SQL.Add(''''+SQLFBEdicao.Current.ByName('FPAIS').AsString+'''' );

           SQL.Add(')');
           SQL.Add('MATCHING (ID,MFRT,UF)');
           ExecQuery;
         end;
         SQLFBEdicao.Next;
       end;
end;

procedure TFrmSHE_API_B2B._PRO_EST_B2B;
begin
  { Clear Matriz - B2B }
  aPesquisa[07,00] := ''; {Empresa}
  aPesquisa[07,01] := ''; {Cadastro}
  aPesquisa[07,02] := ''; {Início}
  aPesquisa[07,03] := ''; {Fim}
  aPesquisa[07,04] := 'Estoque B2B'; {Descrição}
  aPesquisa[07,05] := ''; {Registros}
  aPesquisa[07,06] := ''; {Erro}
                                                                      
 with FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) FROM TAB_API_EST');
      SQL.Add('WHERE  IDEP    = '''+RECParametros.EP_ID+'''');
      SQL.Add('AND    API_B2B = 1');
      SQL.Add('AND    IDEV    = 0');
      ExecQuery;
    end;

    if SQLFBConsulta.Eof then Exit;
    if not _API_SYNC     then Exit;

    try
      oOTransact(TFBEdicao);
      with SQLFBEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(IDG_API_EST,1) FROM RDB$DATABASE');
        ExecQuery;
        IDG_API_EST := Current.Vars[0].AsString;

        Close;
        SQL.Clear;
        SQL.Add('MERGE INTO TAB_API_EST AS PK');
        SQL.Add('USING (');
        SQL.Add('SELECT MIN(ID) AS ID_MIN,MAX(ID) AS ID_MAX');
        SQL.Add('FROM (');
        SQL.Add('SELECT FIRST 500 ID FROM TAB_API_EST WHERE IDEP = '''+RECParametros.EP_ID+''' AND IDEV = 0 AND API_B2B = 1 ORDER BY ID)) AS FK');
        SQL.Add('ON     PK.IDEP = '''+RECParametros.EP_ID+''' AND PK.ID BETWEEN FK.ID_MIN AND FK.ID_MAX');
        SQL.Add('WHEN   MATCHED THEN');
        SQL.Add('UPDATE SET PK.IDEV = '''+IDG_API_EST+'''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM TAB_API_EST');
        SQL.Add('WHERE  IDEV = '''+IDG_API_EST+'''');
        ExecQuery;
        PBPrincipal.Max := oLast (SQLFBEdicao);
                           oFirst(SQLFBEdicao);
      end;

      if PBPrincipal.Max > 0 then
      begin
        { Load Matriz }
        aPesquisa[07,00] := RECParametros.EP_ID;
        aPesquisa[07,01] := FormatDateTime('mm/dd/yy'      ,Date);
        aPesquisa[07,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
        aPesquisa[07,05] := IntToStr(PBPrincipal.Max);

        { Caption }
        PNLCaption.Height  := 35;
        PNLCaption.Visible := True;

        { Gauge }
        PBCount              := 0;
        PBPrincipal.Position := 0;

        { Rodapé }
        PNLRodape.Height  := 20;
        PNLRodape.Visible := True;

        oOTransact(TB2BEdicao);
        _PRO_EST_B2B_SYNC;

        with SQLFBEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM TAB_API_EST');
          SQL.Add('WHERE  IDEV = '''+IDG_API_EST+'''');
          ExecQuery;
        end;

        { Final Matriz }
        aPesquisa[07,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

        oCTransact(TFBEdicao );
        oCTransact(TB2BEdicao);
      end;
    except
      on E: Exception do
      begin
        oCTransact(TFBEdicao ,ltRollback);
        oCTransact(TB2BEdicao,ltRollback);

        { Erro Matriz }
        aPesquisa[07,06] := 'API B2B: ' + API_TOKEN + '. '        + #13 +
                             PNLCaption.Caption                   + #13 +
                             Trim(E.Message)        + '. '        + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now) + '.';

        if not EMErros_B2B.Visible then
        begin
          EMErros_B2B.Lines.Add(aPesquisa[07,06]);
          EMErros_B2B.Height  := 95;
          EMErros_B2B.Visible := True;
        end;

        Exit;
      end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TFBConsulta);
    oCTransact(TFBEdicao  );
  end;
end;

procedure TFrmSHE_API_B2B._PRO_EST_B2B_SYNC;
begin
  with FBird do
  try
    oOTransact(TFBProdutos);
    while not SQLFBEdicao.Eof do
    begin
      IF  SQLFBEdicao.Current.ByName('IDCP').AsInteger = 77399 THEN
      BEGIN
        TAG := 0;
      END;

      if uCPPSQ(RECParametros.EP_ID,SQLFBEdicao.Current.ByName('IDCP').AsString,'ID') > 0 then
      begin
        IF FBCAD_PROSKU.AsString = 'JL.01.1000' THEN
        BEGIN
          TAG := 0;
        END;

        Inc(PBCount);
        Self.Caption := 'API B2B: ' + API_TOKEN + '. Sincronizando Registros ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max) +'.';
        PNLCaption.Caption     := FBCAD_PROSKU.AsString   + ' - ' + Trim(FBCAD_PRODECP.AsString + ' ' + Trim(LeftStr(FBCAD_PRODGCP.AsString,30))  +'. ');
        PBPrincipal.Position   := PBPrincipal.Position    + 1;
        Application.ProcessMessages;

        DART := Trim(LEFTSTR(FBCAD_PROSKU.AsString+IFThen(FBCAD_PRODGCP.AsString <> EmptyStr,'-'+Trim(FBCAD_PRODGCP.AsString),''),60));
        QTMI := FBCAD_PROUPED_MIN.AsString;

        if FBCAD_PROUPED_MUL.AsFloat > 1 then
        begin
          QTUN := FBCAD_PROUPED_MUL.AsString;
          CDBE := 'PF';
        end else
        begin
          QTUN := IFThen(FBCAD_PROUQTDE.AsFloat > 0,FBCAD_PROUQTDE.AsString,'1');
          CDBE := FBCAD_PROUCDBE.AsString;
        end;

        with SQLFBFKEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM TAB_CLF');
          SQL.Add('WHERE  CLF_CCLF = '''+FBCAD_PRONCM.AsString+'''');
          SQL.Add('AND    NOT FEMPTY(CLF_UF)');
          ExecQuery;
          ICMSST := IFThen(Eof,'0','1');
        end;

        with SQLB2BEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE OR INSERT');
          SQL.Add('INTO CAD_PRO   (');
          SQL.Add('     ID,IDEP,PRO_CDEP,FIN_EST_ID ,PRO_CDBE   ,PRO_CART   ,PRO_DART   ,PRO_CPRO,PRO_DCOR,PRO_DPRO,PRO_COMP ,PRO_COMP1,PRO_COMP2,');
          SQL.Add('        PRO_IDCOLECAO,PRO_COLECAO,IDCOL,DECOL,IDSEG,DESEG,IDGRP,DEGRP,IDSGP   ,DESGP   ,IDCAT   ,DECAT    ,IDSCT    ,DESCT,');
          SQL.Add('        PRO_DUNI     ,PRO_UNID   ,PRO_PESO   ,PRO_PSCN   ,PRO_METR   ,PRO_REND,PRO_GRAM,PRO_LARU,PRO_LART ,');
          SQL.Add('        PRO_QTDE     ,PRO_QTMI   ,PRO_QTRL   ,PRO_PREC   ,PRO_PPRO,PRO_PPRZ,PRO_PRC1,PRO_PRC2,');
          SQL.Add('        PRO_NCM      ,PRO_PIPI   ,PRO_ICMSST ,');
          SQL.Add('        PRO_QPRC     ,PRO_RPRC   ,ECO_DECO   ,');
          SQL.Add('        PRO_QDIS     ,PRO_RDIS   ,');
          SQL.Add('        EAA_QTDE     ,EAA_QTRL   ,');
          SQL.Add('        EA_QTDE      ,EA_QTRL    ,');
          SQL.Add('        EB_QTDE      ,EB_QTRL    ,');
          SQL.Add('        PRO_OBSE     ,ORIGEM,');
          SQL.Add('        UCOM,UCON,REST,XPAIS,FPAIS,CEAN,D_UCOM,ARTIGO,SKU,NCM,FIN_EST_REF,PESO,PSCN,METRO,GRAM,D_GRAM,REND,LARU,LART,ELAL,ELAC,ENCL,ENCC,D_ENCO,D_ABNT,PRO_IDJPG,PRO_DATA,');
          SQL.Add('        INFADCAD');
          SQL.Add(')');

          SQL.Add('VALUES (');
          SQL.Add(''''+FBCAD_PROId.AsString    +''',');
          SQL.Add(''''+FBCAD_PROIDEP.AsString  +''',');
          SQL.Add(''''+FBCAD_PROIDEP.AsString  +''',');

          SQL.Add(''''+FBCAD_PROFIN_EST_ID.AsString  +''',');

          SQL.Add(':CDBE        ,');
          SQL.Add(':CART        ,');
          SQL.Add(':DART        ,');
          SQL.Add(':Produto     ,');
          SQL.Add(':Cor         ,');
          SQL.Add(':Descricao   ,');
          SQL.Add(':Composicao  ,');
          SQL.Add(':Composicao1 ,');
          SQL.Add(':Composicao2 ,');
          SQL.Add(':IDColecao   ,');
          SQL.Add(':Colecao     ,');
          SQL.Add(':IDCOL       ,');
          SQL.Add(':DECOL       ,');
          SQL.Add(':IDSEG       ,');
          SQL.Add(':DESEG       ,');
          SQL.Add(':IDGRP       ,');
          SQL.Add(':DEGRP       ,');
          SQL.Add(':IDSGP       ,');
          SQL.Add(':DESGP       ,');
          SQL.Add(':IDCAT       ,');
          SQL.Add(':DECAT       ,');
          SQL.Add(':IDSCT       ,');
          SQL.Add(':DESCT       ,');
          SQL.Add(':UN          ,');
          SQL.Add(':UNID        ,');
          SQL.Add(':PESO        ,');
          SQL.Add(':PSCN        ,');
          SQL.Add(':METR        ,');
          SQL.Add(':REND        ,');
          SQL.Add(':GRAMA       ,');
          SQL.Add(':LAUTI       ,');
          SQL.Add(':LATOT       ,');
          
          SQL.Add(''''+oStrTran(QTUN,',','.')+''',');
          SQL.Add(''''+oStrTran(QTMI,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROUQTRL.AsString       ,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROVPRC_PAD_FIM.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROVPRC_PAD_PRO.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROVPRC_PAD_PRZ.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROVPRC_PAD_INI.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROVPRC_PAD_FIM.AsString,',','.')+''',');

          SQL.Add(''''+FBCAD_PRONCM.AsString                       +''',');
          SQL.Add(''''+oStrTran(FBCAD_PROPIPI.AsString ,',','.')+''',');
          SQL.Add(''''+ICMSST+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROEEP_QTDE.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROEEP_QTRL.AsString,',','.')+''',');

//          SQL.Add(''''+oStrTran(FloatToStr(FBCAD_PROECO_QTDE.AsFloat   - FBCAD_PROEPP_QTDE.AsFloat  ),',','.')+''',');
//          SQL.Add(''''+oStrTran(IntToStr  (FBCAD_PROECO_QTRL.AsInteger - FBCAD_PROEPP_QTRL.AsInteger),',','.')+''',');

          SQL.Add(''''+oNullIF(Trim(LeftStr(FBCAD_PROECO_DECO.AsString,120)))+''',');

          SQL.Add(''''+oStrTran(FBCAD_PROEPE_QTDE.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROEPE_QTRL.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FloatToStr(FBCAD_PROEAA_QTDE.AsFloat - (FBCAD_PROEPR_QTDE.AsFloat   + FBCAD_PROEPP_CTNR_QTDE.AsFloat  )),',','.')+''',');
          SQL.Add(''''+oStrTran(IntToStr(FBCAD_PROEAA_QTRL.AsInteger - (FBCAD_PROEPR_QTRL.AsInteger + FBCAD_PROEPP_CTNR_QTRL.AsInteger)),',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROEA_QTDE.AsString ,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROEA_QTRL.AsString ,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROEB_QTDE.AsString ,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROEB_QTRL.AsString ,',','.')+''',');

          SQL.Add(':OBSE,');
          SQL.Add(':ORIGEM,');

          SQL.Add(''''+FBCAD_PROUCOM.AsString  +''',');
          SQL.Add(''''+FBCAD_PROD_UCON.AsString+''',');
          SQL.Add(''''+FBCAD_PROREST.AsString  +''',');
          SQL.Add(''''+FBCAD_PROXPAIS.AsString +''',');
          SQL.Add(''''+FBCAD_PROFPAIS.AsString +''',');
          SQL.Add(''''+FBCAD_PROCEAN.AsString  +''',');
          SQL.Add(''''+FBCAD_PRODCOM.AsString  +''',');
          SQL.Add(''''+FBCAD_PROARTIGO.AsString+''',');
          SQL.Add(''''+FBCAD_PROSKU.AsString   +''',');
          SQL.Add(''''+FBCAD_PRONCM.AsString   +''',');

          SQL.Add(''''+FBCAD_PROFIN_EST_REF.AsString+''',');

          SQL.Add(''''+oStrTran(FBCAD_PROPESO.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROPSCN.AsString,',','.')+''',');

          SQL.Add(''''+oStrTran(FBCAD_PROMETRO.AsString,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROGRAM.AsString ,',','.')+''',');
          SQL.Add(''''+FBCAD_PROD_GRAM.AsString+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROREND.AsString ,',','.')+''',');

          SQL.Add(''''+oStrTran(FBCAD_PROLARU.AsString ,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROLART.AsString ,',','.')+''',');

          SQL.Add(''''+oStrTran(FBCAD_PROELAL.AsString ,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROELAC.AsString ,',','.')+''',');

          SQL.Add(''''+oStrTran(FBCAD_PROENCL.AsString ,',','.')+''',');
          SQL.Add(''''+oStrTran(FBCAD_PROENCC.AsString ,',','.')+''',');
          SQL.Add(''''+FBCAD_PROD_ENCO.AsString+''',');
          SQL.Add(''''+FBCAD_PROD_ABNT.AsString+''',');

          SQL.Add(''''+oNullIF(FBCAD_PROIMG_NO.AsString)+''',');


          SQL.Add('CURRENT_TIMESTAMP,');
          SQL.Add(''''+oNullIF(FBCAD_PROINFADCAD.AsString)+''')');

          SQL.Add('MATCHING (ID)');

          ParamByName('CDBE').Value        := oNullIF(CDBE);
          ParamByName('CART').Value        := oNullIF(FBCAD_PROARTIGO.AsString);
          ParamByName('DART').Value        := oNullIF(DART);
          ParamByName('Produto').Value     := oNullIF(FBCAD_PROSKU.AsString);
          ParamByName('Cor').Value         := oNullIF(Trim(FBCAD_PRODGCP.AsString));
          ParamByName('Descricao').Value   := oNullIF(TRIM(FBCAD_PRODECP.AsString));
          ParamByName('Composicao').Value  := oNullIF(FBCAD_PROCMP_PAD.AsString);
          ParamByName('Composicao1').Value := oNullIF(FBCAD_PROC_COMP1.AsString);
          ParamByName('Composicao2').Value := oNullIF(FBCAD_PROC_COMP2.AsString);

          ParamByName('IDColecao').Value   := FBCAD_PROIDCOL.AsString;
          ParamByName('Colecao').Value     := oNullIF(FBCAD_PRODECOL.AsString);

          ParamByName('IDCOL').Value := FBCAD_PROIDCOL.AsString;
          ParamByName('DECOL').Value := oNullIF(FBCAD_PRODECOL.AsString);
          ParamByName('IDSEG').Value := FBCAD_PROIDSEG.AsString;
          ParamByName('DESEG').Value := oNullIF(FBCAD_PRODESEG.AsString);
          ParamByName('IDGRP').Value := FBCAD_PROIDGRP.AsString;
          ParamByName('DEGRP').Value := oNullIF(FBCAD_PRODEGRP.AsString);
          ParamByName('IDSGP').Value := FBCAD_PROIDSGP.AsString;
          ParamByName('DESGP').Value := oNullIF(FBCAD_PRODESGP.AsString);
          ParamByName('IDCAT').Value := FBCAD_PROIDCAT.AsString;
          ParamByName('DECAT').Value := oNullIF(FBCAD_PRODECAT.AsString);
          ParamByName('IDSCT').Value := FBCAD_PROIDSCT.AsString;
          ParamByName('DESCT').Value := oNullIF(FBCAD_PRODESCT.AsString);

          ParamByName('UN').Value      := oNullIF(FBCAD_PROUCOM.AsString);
          ParamByName('UNID').Value    := oNullIF(FBCAD_PROUCOM.AsString);
          ParamByName('PESO').Value    := oStrTran(FBCAD_PROPESO.AsString ,',','.');
          ParamByName('PSCN').Value    := oStrTran(FBCAD_PROPSCN.AsString ,',','.');
          ParamByName('METR').Value    := oStrTran(FBCAD_PROMETRO.AsString ,',','.');
          ParamByName('REND').Value    := oStrTran(FBCAD_PROREND.AsString ,',','.');
          ParamByName('GRAMA').Value   := oStrTran(FBCAD_PROGRAM.AsString ,',','.');
          ParamByName('LAUTI').Value   := oStrTran(FBCAD_PROLARU.AsString ,',','.');
          ParamByName('LATOT').Value   := oStrTran(FBCAD_PROLART.AsString ,',','.');
          ParamByName('OBSE').Value    := oNullIF(FBCAD_PROINFADCAD.AsString);
          ParamByName('ORIGEM').Value  := oNullIF(FBCAD_PROFPAIS.AsString);
          ExecQuery;
        end;
      end;
      SQLFBEdicao.Next;
    end;
  finally
    oCTransact(TFBProdutos);
  end;
end;

procedure TFrmSHE_API_B2B._PRO_EST_ERP;
begin
  if Pos(RECParametros.EP_ID,'14') = 0 then
  Exit;

  { Clear Matriz - B2B }
  aPesquisa[07,00] := ''; {Empresa}
  aPesquisa[07,01] := ''; {Cadastro}
  aPesquisa[07,02] := ''; {Início}
  aPesquisa[07,03] := ''; {Fim}
  aPesquisa[07,04] := 'Estoque ERP'; {Descrição}
  aPesquisa[07,05] := ''; {Registros}
  aPesquisa[07,06] := ''; {Erro}
                                                                      
 with FBird do
  try
    oOTransact(TB2BConsulta);
    with SQLB2BConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   CP.IDEP,CP.ID AS IDCP,CP.PRO_CPRO AS SKU,CP.PRO_DATA AS DTCA');
      SQL.Add('FROM     CAD_PRO AS CP');
      SQL.Add('WHERE    CP.PRO_QDIS <= 0');
      SQL.Add('OR       DATEDIFF(HOUR FROM COALESCE(CP.PRO_DATA,CAST(''12/30/1899'' AS TIMESTAMP)) TO CURRENT_TIMESTAMP) > 24');
    //  SQL.Add('ORDER BY SKU');
      ExecQuery;
    end;

    PBPrincipal.Max := oLast (SQLB2BConsulta);
                       oFirst(SQLB2BConsulta);

    { Caption }
    PNLCaption.Height  := 35;
    PNLCaption.Visible := True;

    { Gauge }
    PBCount              := 0;
    PBPrincipal.Position := 0;

    { Rodapé }
    PNLRodape.Height  := 20;
    PNLRodape.Visible := True;

    { Load Matriz }
    aPesquisa[07,00] := RECParametros.EP_ID;
    aPesquisa[07,01] := FormatDateTime('mm/dd/yy'      ,Date);
    aPesquisa[07,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
    aPesquisa[07,05] := IntToStr(PBPrincipal.Max);

    while not SQLB2BConsulta.Eof do
    begin
      Inc(PBCount);
      FrmSHE_API_B2B.Caption := 'API ERP: ' + API_TOKEN + '. Sincronizando Registros '+IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max)+'.';

      PNLCaption.Caption   := SQLB2BConsulta.Current.ByName('SKU').AsString   + ' - ' + FormatDateTime('dd/mm/yy',SQLB2BConsulta.Current.ByName('DTCA').AsDateTime) + '. ';
      PBPrincipal.Position := PBPrincipal.Position  + 1;

      Application.ProcessMessages;

      try
        oOTransact(TFBEdicao);
        with SQLFBEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('EXECUTE PROCEDURE SP_CAD_PRO_EST_LAN');
          SQL.Add('(');

          SQL.Add('''' + SQLB2BConsulta.Current.ByName('IDEP').AsString + ''',');
          SQL.Add('''' + SQLB2BConsulta.Current.ByName('IDCP').AsString + ''',');
          SQL.Add('1');

          SQL.Add(')');
          ExecQuery;
        end;
        oCTransact(TFBEdicao);

        oOTransact(TB2BEdicao);
        with SQLB2BEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET   PRO_DATA = CURRENT_TIMESTAMP');
          SQL.Add('WHERE ID       = ''' + SQLB2BConsulta.Current.ByName('IDCP').AsString + '''');
          ExecQuery;
        end;
        oCTransact(TB2BEdicao);
      except
        oCTransact(TB2BEdicao,ltRollback);
        oCTransact(TFBEdicao ,ltRollback);
      end;

      SQLB2BConsulta.Next;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    { Final Matriz }
    aPesquisa[07,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

    oCTransact(TFBEdicao   );
    oCTransact(TB2BConsulta);
  end;
end;

{ 1º Recebimento }
procedure TFrmSHE_API_B2B._CAD_TRA_REC;
begin
end;

{ 2º Recebimento }
procedure TFrmSHE_API_B2B._CAD_CLI_REC;
var
  i: word;
begin
  Exit;

  { Clear Matriz }
  aPesquisa[02,00] := ''; {Empresa}
  aPesquisa[02,01] := ''; {Cadastro}
  aPesquisa[02,02] := ''; {Início}
  aPesquisa[02,03] := ''; {Fim}
  aPesquisa[02,04] := 'Clientes'; {Descrição}
  aPesquisa[02,05] := ''; {Registros}
  aPesquisa[02,06] := ''; {Erro}




  with FBird do
  try
    oOTransact(TB2BConsulta);
    CAD_CLI_B2B.Open;  CAD_CLI_B2B.Last;
    PBPrincipal.Max := CAD_CLI_B2B.RecNo; CAD_CLI_B2B.First;

    if PBPrincipal.Max > 0 then
    try
      { Caption }
      PNLCaption.Height  := 35;
      PNLCaption.Visible := True;

      { Gauge }
      PBCount              := 0;
      PBPrincipal.Position := 0;

      { Rodapé }
      PNLRodape.Height  := 20;
      PNLRodape.Visible := True;

      { Load Matriz }
      aPesquisa[02,00] := RECParametros.EP_ID;
      aPesquisa[02,01] := FormatDateTime('mm/dd/yy'      ,Date);
      aPesquisa[02,02] := FormatDateTime('mm/dd/yy hh:mm',Now );
      aPesquisa[02,05] := IntToStr(PBPrincipal.Max);


      while not CAD_CLI_B2B.Eof do
      begin
        Inc(PBCount);
        Self.Caption       := 'API B2B: ' + API_TOKEN + ' B2B -> ERP. Sincronizando Registros ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max) + '.';
        PNLCaption.Caption := oStrZero(CAD_CLI_B2BID.AsInteger,5) + ' - ' + CAD_CLI_B2BDECD.AsString + CAD_CLI_B2BRZCD.AsString + '. ';

        PBPrincipal.Position := PBPrincipal.Position  + 1;
        Application.ProcessMessages;

          oOTransact(TB2BEdicao);
          oOTransact(TFBEdicao );


                  oOTransact(TB2BEdicao);

    SPB2BEdicao.Close;
    SPB2BEdicao.StoredProcName := 'SP_CAD_CLI';
    SPB2BEdicao.Prepare;

    for i := 0 to SPB2BEdicao.ParamCount - 1 do
    SPB2BEdicao.Params[i].Value := Null;

    SPB2BEdicao.ParamByName('AIDCD').Value := 1;
    SPB2BEdicao.ParamByName('AIDEP').Value := 1;
    SPB2BEdicao.ParamByName('ADTCA').Value := '03/19/76 04:21';
    SPB2BEdicao.ParamByName('ACDST').Value := 1;
    SPB2BEdicao.ParamByName('AREST').Value := 1;
    SPB2BEdicao.ParamByName('ADEST').Value := 1;
    SPB2BEdicao.ParamByName('AFANTASIA').Value := 'RIC2';
    SPB2BEdicao.ExecProc;

    oCTransact(TB2BEdicao);
          if SQLFBEdicao.Current.Vars[0].AsInteger > 0 then
          with SQLB2BEdicao do
          begin
            IF SQLFBEdicao.Current.Vars[0].AsInteger <> CAD_CLI_B2BID.AsInteger THEN
            begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE PED_VEN_CAB');
              SQL.Add('SET    ROM_CCLI = ''' + SQLFBEdicao.Current.Vars[0].AsString + ''',');
              SQL.Add('       ROM_CTRA = ''' + INTTOSTR(IDCT)         + ''',');
              SQL.Add('       ROM_DTRA = ''' + DECT                   + '''' );
              SQL.Add('WHERE  ROM_CCLI = ''' + CAD_CLI_B2BID.AsString + '''' );
              ExecQuery;
            end;
            
            Close;
            SQL.Clear;
            SQL.Add('UPDATE CAD_CLI');
            SQL.Add('SET    FLAG = 0,');
            SQL.Add('       ID = ''' + SQLFBEdicao.Current.Vars[0].AsString + '''');
            SQL.Add('WHERE  ID = ''' + CAD_CLI_B2BID.AsString               + '''');
            ExecQuery;
          end;

        CAD_CLI_B2B.Next;
      end;
      { Final Matriz }
      aPesquisa[02,03] := FormatDateTime('mm/dd/yy hh:mm',Now);

      oCTransact(TB2BEdicao);
      oCTransact(TFBEdicao );
    except
      on E: Exception do
      begin
        oCTransact(TB2BEdicao,ltRollback);
        oCTransact(TFBEdicao ,ltRollback);

        { Erro Matriz }
        aPesquisa[02,06] := 'API B2B: ' + API_TOKEN + '. '        + #13 +
                             PNLCaption.Caption                   + #13 +
                             Trim(E.Message)        + '. '        + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now) + '.';

        if not EMErros_B2B.Visible then
        begin
          EMErros_B2B.Lines.Add(aPesquisa[02,06]);
          EMErros_B2B.Height  := 95;
          EMErros_B2B.Visible := True;
        end;

        Exit;
      end;
    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TB2BConsulta);
  end;
end;

end.
