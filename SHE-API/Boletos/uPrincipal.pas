unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, ToolWin, StdCtrls, 
  DateUtils, StrUtils, math, Shellapi, jpeg, dxStatusBar,
  OleCtrls, BoletoX_TLB, SyncObjs, superobject, uJSON, comobj, cxGraphics,
  cxControls, IBDatabase, IBSQL;

type
  TFrmSHE_API_BOL = class(TForm)
    TTempo: TTimer;
    SBRodape: TdxStatusBar;
    IPrincipal: TImage;
    PNLRodape: TPanel;
    PBPrincipal: TProgressBar;
    PNLCaption: TPanel;
    EMErros: TMemo;
    FBoletoX: TspdBoletoX;
    PNLProcesso: TPanel;
    SQLAPIConsulta: TIBSQL;
    TAPIConsulta: TIBTransaction;
    TAPIEdicao: TIBTransaction;
    SQLAPIEdicao: TIBSQL;
    SQLAPIFKConsulta: TIBSQL;
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
    procedure _Login(AIDUSER: Variant; AIDEP: Variant);

    procedure _API_INI(AIDEP: Variant);

    procedure _Boletos;
    procedure _BoletosAPI_PAGO;
    procedure _BoletosAPI_REGISTRADO(ANossaSituacao: String);

    function _ConnectAPI: Word;
  end;

procedure _GERTXT; STDCall;

var
  FrmSHE_API_BOL: TFrmSHE_API_BOL;

  API_TOKEN: String = 'Consolidação Otimotex';
  API_HORA : Word;

  API_URL: WideString;

  API_CONNECTION,
  API_MTED,
  ERP_ST: String;

  API_DTED,
  ERP_DT: TDateTime;

  DUP_VDUP,DUP_VTAXA,
  PAG_VACR,PAG_VDSC,PAG_VPAG: Double;

  PBCount: Integer;

  _ConsultarList: IspdRetConsultarLista;
  _ConsultarItem: IspdRetConsultarTituloItem;

  hBoleto: OleVariant;
  sBoleto: TStringList;
  jBoleto,
  jItem: TJSONObject;
  jDados, jOcorr, jMov: TJSONArray;

  SOcorrencia: TStringList;

  CNPJSoftwareHouse      : String = '17287123000158';
  TokenSoftwareHouse     : String = '608363d7bf322e4b52286140d00245a6';
  CNPJCedente            : String = '47273917000123';
  CedenteContaNumero     : String = '09570';
  CedenteContaNumeroDV   : String = '4';
  CedenteConvenioNumero  : String = '8317095704';
  CedenteContaCodigoBanco: String = '341';
  CedenteIDG_BOLETO      : String = 'IDG_BOLETO_ITAU';

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
  FrmSHE_API_BOL._TrimAppMemorySize;
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

procedure TFrmSHE_API_BOL.TTempoTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
begin
  if FrmSHE_API_BOL <> Nil then
     with FrmSHE_API_BOL do
     begin
       SBRodape.Panels[2].Text   := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);
       RECParametros.SecondsIdle := SecondsIdle;

       if RECParametros.SecondsIdle > 0 then
          if RECParametros.SecondsIdle mod 5 = 0 then
             try
               try
                 TTEmpo.Enabled := False;
                 FrmSHE_API_BOL.Caption := RECParametros.EP_ID + ' - Consolidação Bancária, aguardando ...';
                 Application.ProcessMessages;

                 _API_INI('1');
                 _API_INI('4');
               finally
                 TTEmpo.Enabled       := True;
                 FrmSHE_API_BOL.Caption := RECParametros.EP_ID + ' - Consolidação Bancária, aguardando ...';
                 Application.ProcessMessages;

                 _GERTXT;
               end;
             finally
                Application.Terminate;
             end;
             
       SBRodape.Panels[3].Text := RECParametros.STCX;
     end;
end;

procedure TFrmSHE_API_BOL.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
              SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  SOcorrencia := TStringList.Create;

  { GET Json }
  hBoleto := Unassigned;
  sBoleto := Nil;
  jBoleto := Nil;
end;

procedure TFrmSHE_API_BOL.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure TFrmSHE_API_BOL.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
end;

procedure TFrmSHE_API_BOL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSHE_API_BOL.FormDestroy(Sender: TObject);
begin
  oCDatabase(FBird.DBErp);

  if sBoleto <> Nil then FreeAndNil(sBoleto);
  if jBoleto <> Nil then FreeAndNil(jboleto);
  if SOcorrencia <> Nil then FreeAndNil(SOcorrencia);

  FrmSHE_API_BOL := Nil;
end;

procedure TFrmSHE_API_BOL.FormPaint(Sender: TObject);
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

procedure TFrmSHE_API_BOL.FormResize(Sender: TObject);
begin
  if FrmSHE_API_BOL <> Nil then
     Paint;
end;

procedure TFrmSHE_API_BOL._TrimAppMemorySize;
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

procedure TFrmSHE_API_BOL._Login(AIDUSER: Variant; AIDEP: Variant);
begin
  if (not oEmpty(AIDUSER)) and (not oEmpty(AIDEP)) and (oEmpty(RECParametros.DataBaseError)) then
  try
    with FBird do
    begin
      bExecParametros(AIDEP);
      bExecUsuarios(AIDUSER);
      bExecCaixa;
    end;

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.EP_NO;
    SBRodape.Panels[1].Text := RECParametros.ServerHost;

    { Show Foto de Fundo - Tela Principal}
    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');
  finally
    FrmSHE_API_BOL.Repaint;
    Application.ProcessMessages;
  end;

  if RECParametros.FIN_API then
  begin
    FBoletoX.Config.URL := 'https://cobrancabancaria.tecnospeed.com.br';
    FBoletoX.ConfigurarSoftwareHouse(RECParametros.SHE_CNPJ,RECParametros.FIN_API_TOKEN);
    FBoletoX.Config.CedenteCpfCnpj := RECParametros.CNPJ;
    FBoletoX.Config.SalvarLogs  := True;

    API_URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?TituloNumeroDocumento=000000000';
    _ConnectAPI;
  end;
end;

procedure TFrmSHE_API_BOL._API_INI(AIDEP: Variant);
var
  i: Word;
begin
  {
   aPesquisa[1]  = 'Representantes'
   aPesquisa[2]  = 'Clientes'
   aPesquisa[3]  = 'Pedidos Verificados'
   aPesquisa[4]  = 'Pedidos Recebidos'
   aPesquisa[5]  = 'Pedidos Enviados'
   aPesquisa[6]  = 'Preços B2B'
   aPesquisa[7]  = 'Estoque B2B'
   aPesquisa[8]  = 'Estoque B2C'
   aPesquisa[9]  = 'API Boletos'
   aPesquisa[10] = 'OCX Boletos Cartório'
  }

  aPesquisa := Nil; SetLength(aPesquisa,11);
  for i := 0 to High(aPesquisa) do
      SetLength(aPesquisa[i],8);

  with FBird do
  try
    { AUTENTICAÇÃO ERP }
    oODatabase(DBErp);
    if not oEmpty(RECParametros.DataBaseError) then
    Exit;

    _Login('0',AIDEP);
    if RECParametros.EP_ID = 0 then
    Exit;

    { EXECUTE SINCRONIZAÇÃO }
    SBRodape.Panels[2].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);
    SBRodape.Panels[3].Text := RECParametros.STCX;
    Application.ProcessMessages;

    PBPrincipal.Max := 0;

    _Boletos;
  finally
    if not oEmpty(RECParametros.DataBaseError) then
    begin
      EMErros.Lines.Add(RECParametros.DataBaseError);
      EMErros.Height  := 95;
      EMErros.Visible := True;
    end;
  end;
end;

procedure TFrmSHE_API_BOL._Boletos;
var
  i: Word;
begin
  if not RECParametros.FIN_API then
  Exit;

  { API PAGOS }
  try
    oODatabase(FBird.DBErp);
    i := 0;
    API_URL := EmptyStr;

    repeat
      _BoletosAPI_PAGO;
      inc(i);
    until
      (API_URL = 'false') or
      (i = 3);

  finally
    oCDatabase(FBird.DBErp);
  end;

  { API REGISTRADOS }
  try
    oODatabase(FBird.DBErp);
    _BoletosAPI_REGISTRADO('PENDENTE');
  finally
    oCDatabase(FBird.DBErp);
  end;

  try
    oODatabase(FBird.DBErp);
    _BoletosAPI_REGISTRADO('CARTÓRIO');
  finally
    oCDatabase(FBird.DBErp);
  end;

  try
    oODatabase(FBird.DBErp);
    _BoletosAPI_REGISTRADO('PROTESTADO');
  finally
    oCDatabase(FBird.DBErp);
  end;

  try
    oODatabase(FBird.DBErp);
    _BoletosAPI_REGISTRADO('PRORROGADO');
  finally
    oCDatabase(FBird.DBErp);
  end;

  try
    oODatabase(FBird.DBErp);
    _BoletosAPI_REGISTRADO('BAIXADO');
  finally
    oCDatabase(FBird.DBErp);
  end;

  try
    oODatabase(FBird.DBErp);
    _BoletosAPI_REGISTRADO('RECUPERAÇÃO JUDICIAL');
  finally
    oCDatabase(FBird.DBErp);
  end;

  try
    oODatabase(FBird.DBErp);
    _BoletosAPI_REGISTRADO('NÃO PAGO');
  finally
    oCDatabase(FBird.DBErp);
  end;
end;

function TFrmSHE_API_BOL._ConnectAPI: Word;
var
  Connected: Word;
begin
  Connected := 10;
  repeat
    try
      Dec(Connected);
      Caption := RECParametros.EP_ID + ' - Consolidação Bancária, tentando conexão ...  ' + IntToStr(Connected);
      Application.ProcessMessages;

      hBoleto := Createoleobject('WinHttp.WinHttpRequest.5.1');
      hBoleto.open('GET',API_URL,False);
      hBoleto.SetRequestHeader('cnpj-sh'     ,RECParametros.SHE_CNPJ  );
      hBoleto.SetRequestHeader('token-sh'    ,RECParametros.FIN_API_TOKEN);
      hBoleto.SetRequestHeader('cnpj-cedente',RECParametros.CNPJ         );
      hBoleto.Send;
      Break;
    except
      SleepEx(1000,False);
    end;
  until Connected = 0;

  if Connected > 0 then
  begin
    sBoleto := TStringList.Create;sBoleto.Add(hBoleto.ResponseText);
    jBoleto := TJSONObject.Create(sBoleto.Text);
    jDados  := jBoleto.getJSONArray('_dados');
  end;

  result := Connected;
end;

procedure TFrmSHE_API_BOL._BoletosAPI_PAGO;
var
  APagamentoData: String;
  i,j: Integer;
  Pagina: Integer;
begin
  { Clear Matriz API }
  aPesquisa[9,00] := RECParametros.EP_ID; { Empresa }
  aPesquisa[9,01] := FormatDateTime('mm/dd/yy'      ,Date); { Cadastro }
  aPesquisa[9,02] := FormatDateTime('mm/dd/yy hh:mm',Now ); { Início }
  aPesquisa[9,03] := FormatDateTime('mm/dd/yy hh:mm',Now ); { Fim }

  aPesquisa[9,04] := 'API BOLETOS'; { Descrição }

  aPesquisa[9,05] := '0'; { Registros }
  aPesquisa[9,06] := '0'; { Total }
  aPesquisa[9,07] := '' ; { Erro }

  { Parâmetro de Consulta }
  APagamentoData := FormatDateTime('yyyy/mm/dd',
                    IncDay(Date,IFThen(DayOfWeek(Date) = 2,-3, // Segunda
                                IFThen(DayOfWeek(Date) = 1,-2, // Domingo
                                                           -1))));

  APagamentoData := '2026/04/10';
  //API_URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?TituloNumeroDocumento=214644-A';

  { Leitura paginada de 50 em 50 registros }
  API_URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?PagamentoData=>=' + APagamentoData + '&PagamentoRealizado=true&sort=TituloNumeroDocumento&limit=50';
  Pagina  := 0;

  try
    oOTransact(TAPIConsulta);
    while true do
    begin
      if  _ConnectAPI = 0 then
      Exit;

      API_URL := jBoleto.getJSONObject('_meta').getJSONObject('_paginacao').optString('_proximo');
      if API_URL <> 'false' then
      begin
        inc(Pagina);
        PBPrincipal.Max  := jBoleto.getJSONObject('_meta').getInt('_total');
        aPesquisa[09,06] := INTTOSTR(PBPrincipal.Max); { Total }

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

          for i := 0 to jDados.Length - 1 do
          begin
            jItem  := jDados.getJSONObject(i);
            jOcorr := jItem.getJSONArray('TituloOcorrencias');
            jMov   := jItem.getJSONArray('TituloMovimentos');

            DUP_VDUP  := 0;
            DUP_VTAXA := 0;

            PAG_VACR := 0;
            PAG_VDSC := 0;
            PAG_VPAG := 0;

            API_DTED := 0;
            API_MTED := EmptyStr;

            ERP_DT := 0;
            ERP_ST := EmptyStr;

            aPesquisa[09,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
            aPesquisa[09,05] := IntToStr(StrToInt(aPesquisa[09,05]) + 1);

            PBPrincipal.Position := PBPrincipal.Position  + 1;
            Inc(PBCount);

            if jItem.optString('TituloNumeroDocumento') <> 'null' then
            PNLCaption.Caption := 'Nº Título: ' + jItem.optString('TituloNumeroDocumento') + '. ';

            if jItem.optString('TituloDataEmissao') <> 'null' then
            PNLCaption.Caption := PNLCaption.Caption + ' Emissão: ' + FormatDateTime('dd/mm/yy',StrToDate(LeftStr(jItem.optString('TituloDataEmissao'),10))) + '. ';

            if jItem.optString('PagamentoData') <> 'null' then
            PNLCaption.Caption := PNLCaption.Caption + 'Pagamento: ' + FormatDateTime('dd/mm/yy',StrToDate(LeftStr(jItem.optString('PagamentoData'),10))) + '.';

            FrmSHE_API_BOL.Caption := RECParametros.EP_ID + ' - API: PAGOS - ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max) + '. ' + aPesquisa[09,05] + ' Registro(s) Lido(s). Página ' + INTTOSTR(Pagina);
            Application.ProcessMessages;

            { Consulta Título no ERP }
            with SQLAPIConsulta do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT   PK.IDPK,PK.TITULO,PK.API_ID');
              SQL.Add('FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3) + ' AS PK');

              SQL.Add('WHERE TITULO = ''' + jItem.optString('TituloNumeroDocumento') + '''');
              ExecQuery;
            end;

            try
              DUP_VDUP := StrToFloat(jItem.optString('TituloValor'));

              PAG_VACR := StrToFloat(jItem.optString('PagamentoValorAcrescimos')); { valor_juros + valor_multa }
              PAG_VDSC := StrToFloat(jItem.optString('PagamentoValorDesconto'));
              PAG_VPAG := StrToFloat(jItem.optString('PagamentoValorPago'));

              ERP_ST := IFThen(Pos('CART',UPPERCASE(jItem.optString('situacao'))) > 0,'PAGO CARTÓRIO','PAGO');

              { INFORMAÇÕES ADICIONAIS }
              SOcorrencia.Clear;
              if jOcorr <> nil then
              begin
                SOcorrencia.Add('==== Ocorrências ====');

                for j := 0 to jOcorr.Length - 1 do
                begin
                  SOcorrencia.Add('Código: '     + jOcorr.getJSONObject(j).optString('codigo'));
                  SOcorrencia.Add('Mensagem: '   + jOcorr.getJSONObject(j).optString('mensagem'));
                  SOcorrencia.Add('Criado: '     + jOcorr.getJSONObject(j).optString('criado'));
                  SOcorrencia.Add('Atualizado: ' + jOcorr.getJSONObject(j).optString('atualizado'));

                  if jOcorr.getJSONObject(j).has('retornos') then
                  SOcorrencia.Add('Arquivo Retorno: ' + jOcorr.getJSONObject(j).getJSONObject('retornos').optString('nomeArquivo'));
                  SOcorrencia.Add('');

                  API_MTED := Trim(oStrTran(oStrTran(jOcorr.getJSONObject(j).optString('mensagem'),'Mensagem:',''),'Movimento:',''));
                  API_DTED := StrToDateTime(Trim(jOcorr.getJSONObject(j).optString('atualizado')));
                end;
              end;

              if jMov <> nil then
              begin
                SOcorrencia.Add('==== Movimentações ====');

                for j := 0 to jMov.Length - 1 do
                begin
                  SOcorrencia.Add('Código: '   + jMov.getJSONObject(j).optString('codigo'));
                  SOcorrencia.Add('Mensagem: ' + jMov.getJSONObject(j).optString('mensagem'));
                  SOcorrencia.Add('Data: '     + jMov.getJSONObject(j).optString('data'));
                  SOcorrencia.Add('Taxa: '     + jMov.getJSONObject(j).optString('taxa'));

                  if jMov.getJSONObject(j).has('retornos') then
                  SOcorrencia.Add('Arquivo Retorno: ' + jMov.getJSONObject(j).getJSONObject('retornos').optString('nomeArquivo'));
                  SOcorrencia.Add('');

                  API_MTED  := Trim(oStrTran(oStrTran(jMov.getJSONObject(j).optString('mensagem'),'Mensagem:',''),'Movimento:',''));
                  API_DTED  := StrToDateTime(Trim(jMov.getJSONObject(j).optString('data')));
                  DUP_VTAXA := DUP_VTAXA + StrToFloat(jMov.getJSONObject(j).optString('taxa'));
                end;
              end;

              oOTransact(TAPIEdicao);
              with SQLAPIEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
                SQL.Add('SET');

                SQL.Add('API_ID   = ''' + jItem.optString('IdIntegracao') + ''',');
                SQL.Add('API_ST   = ''' + jItem.optString('situacao')     + ''',');
                SQL.Add('API_TAXA = ''' + oStrTran(FloatToStr(DUP_VTAXA),',','.') + ''',');

                SQL.Add('FIN_VALO = ''' + oStrTran(FloatToStr(DUP_VDUP),',','.') + ''',');
                SQL.Add('FIN_VJUR = ''' + oStrTran(FloatToStr(PAG_VACR),',','.') + ''',');
                SQL.Add('FIN_VDES = ''' + oStrTran(FloatToStr(PAG_VDSC),',','.') + ''',');
                SQL.Add('FIN_VPAG = ''' + oStrTran(FloatToStr(PAG_VPAG),',','.') + ''',');

                SQL.Add('FIN_STFI = ''' + ERP_ST + ''',');
                SQL.Add('FIN_DPAG = ''' + FormatDateTime('mm/dd/yy',StrToDate(LeftStr(jItem.optString('PagamentoData'),10))) + ''',');
                SQL.Add('FIN_DBAI = ''' + FormatDateTime('mm/dd/yy',StrToDate(LeftStr(jItem.optString('PagamentoData'),10))) + ''',');
                SQL.Add('API_DTED = ''' + FormatDateTime('mm/dd/yy hh:mm',API_DTED) + ''',');

                SQL.Add('API_MT       = ''' + RIGHTSTR(Trim(API_MTED),120) + ''',');
                SQL.Add('API_INFADCAD = ''' + SOcorrencia.Text + ''',');

                SQL.Add('API_CDEV = 200,');              { API Atualizada }
                SQL.Add('API_DTEV = CURRENT_TIMESTAMP'); { API Evento }

                SQL.Add('WHERE TITULO = ''' + TRIM(jItem.optString('TituloNumeroDocumento')) + '''');
                ExecQuery;

                Close;
                SQL.Clear;
                SQL.Add('UPDATE OR INSERT');
                SQL.Add('INTO   TAB_API_LOG (IDEP,DTCA,DTINI,DTFIM,DESCRICAO,REGISTROS,TOTAL,LOG_ERRO)'); { Mudar para TB_API_BOL_LOG }

                SQL.Add('VALUES (');
                SQL.Add('''' + aPesquisa[9,00] + ''',');
                SQL.Add('''' + aPesquisa[9,01] + ''',');
                SQL.Add('''' + aPesquisa[9,02] + ''',');
                SQL.Add('''' + aPesquisa[9,03] + ''',');
                SQL.Add('''' + aPesquisa[9,04] + ''',');
                SQL.Add('''' + aPesquisa[9,05] + ''',');
                SQL.Add('''' + aPesquisa[9,06] + ''',');
                SQL.Add('''' + oStrTran(aPesquisa[9,07],'''','') + '''');
                SQL.Add(')');

                SQL.Add('MATCHING (IDEP,DTCA,DESCRICAO)');
                ExecQuery;
              end;
              oCTransact(TAPIEdicao);

            except
              on E: Exception do
              begin
                oCTransact(TAPIEdicao,ltRollback);

                aPesquisa[09,07] := 'Falha ao tentar atualizar via API ' + aPesquisa[09,04] + '. Nº ' + jItem.optString('TituloNumeroDocumento') + ' ID ' + jItem.optString('IdIntegracao') + #13+#13+
                                     Trim(E.Message) + #13 +
                                     FormatDateTime('dd/mm/yy hh:mm',Now);

                EMErros.Lines.Add(aPesquisa[09,07]);
                EMErros.Height  := 95;
                EMErros.Visible := True;
                Application.ProcessMessages;

                if SQLAPIConsulta.Current.ByName('TITULO').AsString <> EmptyStr then
                begin
                  oOTransact(TAPIEdicao);
                  with SQLAPIEdicao do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
                    SQL.Add('SET');

                    SQL.Add('API_CDEV = 199,'); { API Falha na consolidação }
                    SQL.Add('API_DTEV = CURRENT_TIMESTAMP');

                    SQL.Add('WHERE TITULO = ''' + SQLAPIConsulta.Current.ByName('TITULO').AsString + '''');
                    ExecQuery;
                  end;
                  oCTransact(TAPIEdicao);
                end;
              end;
            end;
          end;
        end;
      end;

      if API_URL = 'false' then
      Break;

    end;
  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    try
      oCTransact(TAPIConsulta);
      oOTransact(TAPIEdicao  );
      with SQLAPIEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE OR INSERT');
        SQL.Add('INTO   TAB_API_LOG (IDEP,DTCA,DTINI,DTFIM,DESCRICAO,REGISTROS,TOTAL,LOG_ERRO)'); { Mudar para TB_API_BOL_LOG }

        SQL.Add('VALUES (');
        SQL.Add('''' + aPesquisa[9,00] + ''',');
        SQL.Add('''' + aPesquisa[9,01] + ''',');
        SQL.Add('''' + aPesquisa[9,02] + ''',');
        SQL.Add('''' + aPesquisa[9,03] + ''',');
        SQL.Add('''' + aPesquisa[9,04] + ''',');
        SQL.Add('''' + aPesquisa[9,05] + ''',');
        SQL.Add('''' + aPesquisa[9,06] + ''',');
        SQL.Add('''' + oStrTran(aPesquisa[9,07],'''','') + '''');
        SQL.Add(')');

        SQL.Add('MATCHING (IDEP,DTCA,DESCRICAO)');
        ExecQuery;
      end;
      oCTransact(TAPIEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TAPIEdicao,ltRollback);

        aPesquisa[09,07] := 'Falha ao tentar atualizar LOG API DE PAGAMENTOS' + #13 + #13 +
                             Trim(E.Message) + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now);

        EMErros.Lines.Add(aPesquisa[09,07]);
        EMErros.Height  := 95;
        EMErros.Visible := True;
        Application.ProcessMessages;
      end;
    end;
  end;
end;

procedure TFrmSHE_API_BOL._BoletosAPI_REGISTRADO(ANossaSituacao: String);
var
  i,j: Integer;
begin
  try
    oOTransact(TAPIConsulta);

    with SQLAPIConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.IDPK,PK.TITULO,CAST(PK.DTCA AS DATE) AS DTCA,PK.DTVC,PK.DTPG,PK.DTBX,PK.DEST,PK.FIN_VJUR,PK.FIN_VDES,PK.API_ID,PK.API_DTED,API_NN,API_ST,PK.API_TAXA,PK.API_MT,PK.API_INFADCAD');
      SQL.Add('FROM ' + oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3) + ' AS PK');

      SQL.Add('WHERE NOT FEMPTY(PK.API_ID)' );
      SQL.Add('AND   PK.DEST NOT LIKE ''PAGO%''');
      SQL.Add('AND   PK.DEST NOT LIKE ''CANCELADO%''');
      SQL.Add('AND   PK.DEST LIKE ''' + ANossaSituacao + '%''');

      SQL.Add('ORDER BY PK.DTVC DESC');
      ExecQuery;

      if Eof then
      Exit;
    end;

    oLast(SQLAPIConsulta);
    PBPrincipal.Max := SQLAPIConsulta.RecordCount;
    oFirst(SQLAPIConsulta);

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
    end;

    FrmSHE_API_BOL.Caption := RECParametros.EP_ID + ' - API: ' + ANossaSituacao;

    aPesquisa[9,00] := RECParametros.EP_ID; { Empresa }
    aPesquisa[9,01] := FormatDateTime('mm/dd/yy'      ,Date); { Cadastro }
    aPesquisa[9,02] := FormatDateTime('mm/dd/yy hh:mm',Now ); { Início }
    aPesquisa[9,03] := FormatDateTime('mm/dd/yy hh:mm',Now ); { Fim }

    aPesquisa[9,04] := 'API BOLETOS'; { Descrição }

    aPesquisa[9,05] := '0'; { Registros }
    aPesquisa[9,06] := INTTOSTR(PBPrincipal.Max);
    aPesquisa[9,07] := '' ; { Erro }

    while not SQLAPIConsulta.Eof do
    begin
      API_URL := 'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?IdIntegracao=' + SQLAPIConsulta.Current.ByName('API_ID').AsString;
      if  _ConnectAPI = 0 then
      Break;

      if (jDados = nil) or (jDados.Length = 0) then
      begin
        try
          oOTransact(TAPIEdicao);
          with SQLAPIEdicao do
          begin
            Close;
            SQL.Clear;
            SQL.Add('INSERT INTO FIN_REC_LOG_API (IDPK,TITULO,API_ID,API_ST,API_MT,IDEP,IP,HOST)');
            SQL.Add('VALUES (');

            SQL.Add('''' + SQLAPIConsulta.Current.ByName('IDPK'  ).AsString + ''',');
            SQL.Add('''' + SQLAPIConsulta.Current.ByName('TITULO').AsString + ''',');
            SQL.Add('''' + SQLAPIConsulta.Current.ByName('API_ID').AsString + ''',');

            SQL.Add('''API_FALHA'',');
            SQL.Add('''' + RIGHTSTR(Trim(API_MTED),120) + ''',');

            SQL.Add('''' + RECParametros.EP_ID+ ''',');
            SQL.Add('''' + RECParametros.IP   + ''',');
            SQL.Add('''' + RECParametros.HOST + ''')');

            ExecQuery;
          end;
          oCTransact(TAPIEdicao);
        except
          on E: Exception do
          begin
            oCTransact(TAPIEdicao,ltRollback);

            EMErros.Lines.Add('Erro ao tentar atualizar API ERP' +#13+#13+
                               Trim(E.Message)                   +#13+
                               FormatDateTime('dd/mm/yy hh:mm',Now));
            EMErros.Height  := 95;
            EMErros.Visible := True;

            Application.ProcessMessages;
          end;
        end;

        Break;
      end;

      for i := 0 to jDados.Length - 1 do
      begin
        jItem  := jDados.getJSONObject(i);
        jOcorr := jItem.getJSONArray('TituloOcorrencias');
        jMov   := jItem.getJSONArray('TituloMovimentos');

        DUP_VDUP  := 0;
        DUP_VTAXA := 0;

        PAG_VACR := 0;
        PAG_VDSC := 0;
        PAG_VPAG := 0;

        API_DTED := 0;
        API_MTED := EmptyStr;

        ERP_DT := 0;
        ERP_ST := EmptyStr;

        aPesquisa[09,03] := FormatDateTime('mm/dd/yy hh:mm',Now);
        aPesquisa[09,05] := IntToStr(StrToInt(aPesquisa[09,05]) + 1);

        PBPrincipal.Position := PBPrincipal.Position  + 1;
        Inc(PBCount);

        PNLCaption.Caption := 'Nº Título: ' + jItem.optString('TituloNumeroDocumento') + '. ';
        PNLCaption.Caption := PNLCaption.Caption + ' Emissão: ' + FormatDateTime('dd/mm/yy',StrToDate(LeftStr(jItem.optString('TituloDataEmissao'),10))) + '. ';
        PNLCaption.Caption := PNLCaption.Caption + ' Situação API: ' + jItem.optString('situacao') + '.';
        PNLCaption.Caption := PNLCaption.Caption + ' Nossa Situação: ' + SQLAPIConsulta.Current.ByName('DEST').AsString + '.';
        Application.ProcessMessages;

        try
          DUP_VDUP := StrToFloat(jItem.optString('TituloValor'));

          PAG_VACR := StrToFloat(jItem.optString('PagamentoValorAcrescimos')); { valor_juros + valor_multa }
          PAG_VDSC := StrToFloat(jItem.optString('PagamentoValorDesconto'));
          PAG_VPAG := StrToFloat(jItem.optString('PagamentoValorPago'));

          ERP_ST := IFThen(Pos('LIQ' ,UPPERCASE(jItem.optString('situacao'))) > 0,
                    IFThen(Pos('CART',UPPERCASE(jItem.optString('situacao'))) > 0,'PAGO CARTÓRIO','PAGO'),SQLAPIConsulta.Current.ByName('DEST').AsString);

          { INFORMAÇÕES ADICIONAIS }
          SOcorrencia.Clear;
          if jOcorr <> nil then
          begin
            SOcorrencia.Add('==== Ocorrências ====');

            for j := 0 to jOcorr.Length - 1 do
            begin
              SOcorrencia.Add('Código: '     + jOcorr.getJSONObject(j).optString('codigo'));
              SOcorrencia.Add('Mensagem: '   + jOcorr.getJSONObject(j).optString('mensagem'));
              SOcorrencia.Add('Criado: '     + jOcorr.getJSONObject(j).optString('criado'));
              SOcorrencia.Add('Atualizado: ' + jOcorr.getJSONObject(j).optString('atualizado'));

              if jOcorr.getJSONObject(j).has('retornos') then
              SOcorrencia.Add('Arquivo Retorno: ' + jOcorr.getJSONObject(j).getJSONObject('retornos').optString('nomeArquivo'));
              SOcorrencia.Add('');

              if (LeftStr(ERP_ST,4) <> 'PAGO') and (API_DTED <= StrToDateTime(jOcorr.getJSONObject(j).optString('atualizado'))) then
              begin
                API_MTED := Trim(oStrTran(oStrTran(jOcorr.getJSONObject(j).optString('mensagem'),'Mensagem:',''),'Movimento:',''));
                API_DTED := StrToDateTime(Trim(jOcorr.getJSONObject(j).optString('atualizado')));

                with SQLAPIFKConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT ID,ERP_ST FROM TAB_API_BOL');
                  SQL.Add('WHERE  API_ST = ''' + API_MTED + '''');
                  ExecQuery;

                  if not Eof then
                  ERP_ST := Current.Vars[1].AsString;
                end;
              end;
            end;
          end;

          if jMov <> nil then
          begin
            SOcorrencia.Add('==== Movimentações ====');

            for j := 0 to jMov.Length - 1 do
            begin
              SOcorrencia.Add('Código: '   + jMov.getJSONObject(j).optString('codigo'));
              SOcorrencia.Add('Mensagem: ' + jMov.getJSONObject(j).optString('mensagem'));
              SOcorrencia.Add('Data: '     + jMov.getJSONObject(j).optString('data'));
              SOcorrencia.Add('Taxa: '     + jMov.getJSONObject(j).optString('taxa'));

              if jMov.getJSONObject(j).has('retornos') then
              SOcorrencia.Add('Arquivo Retorno: ' + jMov.getJSONObject(j).getJSONObject('retornos').optString('nomeArquivo'));
              SOcorrencia.Add('');

              if (LeftStr(ERP_ST,4) <> 'PAGO') and (API_DTED <= StrToDateTime(jMov.getJSONObject(j).optString('data'))) then
              begin
                API_MTED := Trim(oStrTran(oStrTran(jMov.getJSONObject(j).optString('mensagem'),'Mensagem:',''),'Movimento:',''));
                API_DTED := StrToDateTime(Trim(jMov.getJSONObject(j).optString('data')));

                with SQLAPIFKConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT ID,ERP_ST FROM TAB_API_BOL');
                  SQL.Add('WHERE  API_ST = ''' + API_MTED + '''');
                  ExecQuery;

                  if not Eof then
                  ERP_ST := Current.Vars[1].AsString;
                end;
              end;

              DUP_VTAXA := DUP_VTAXA + StrToFloat(jMov.getJSONObject(j).optString('taxa'));
            end;
          end;

          oOTransact(TAPIEdicao);
          with SQLAPIEdicao do
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
            SQL.Add('SET');

            SQL.Add('API_ID   = ''' + jItem.optString('IdIntegracao') + ''',');
            SQL.Add('API_ST   = ''' + jItem.optString('situacao')     + ''',');
            SQL.Add('API_TAXA = ''' + oStrTran(FloatToStr(DUP_VTAXA),',','.') + ''',');
            SQL.Add('FLAG = 1,');

            if (Pos('BAI',SQLAPIConsulta.Current.ByName('DEST').AsString) = 0) and
               (Pos('PRO',SQLAPIConsulta.Current.ByName('DEST').AsString) = 0) and
               (Pos('PAG',SQLAPIConsulta.Current.ByName('DEST').AsString) = 0) then
            begin
              SQL.Add('FIN_STFI = ''' + ERP_ST + ''',');
              SQL.Add('FIN_VALO = ''' + oStrTran(FloatToStr(DUP_VDUP ),',','.') + ''',');

              if (LeftStr(ERP_ST,4) = 'PAGO') and (jItem.optString('PagamentoData') <> 'null') then
              begin
                SQL.Add('FIN_VJUR = ''' + oStrTran(FloatToStr(PAG_VACR),',','.') + ''',');
                SQL.Add('FIN_VDES = ''' + oStrTran(FloatToStr(PAG_VDSC),',','.') + ''',');
                SQL.Add('FIN_VPAG = ''' + oStrTran(FloatToStr(PAG_VPAG),',','.') + ''',');
                SQL.Add('FIN_DPAG = ''' + FormatDateTime('mm/dd/yy',StrToDate(LeftStr(jItem.optString('PagamentoData'),10))) + ''',');
                SQL.Add('FIN_DBAI = ''' + FormatDateTime('mm/dd/yy',StrToDate(LeftStr(jItem.optString('PagamentoData'),10))) + ''',');
              end;
            end;
            
            SQL.Add('API_DTED = ''' + FormatDateTime('mm/dd/yy hh:mm',API_DTED) + ''',');
            SQL.Add('API_MT       = ''' + RIGHTSTR(Trim(API_MTED),120) + ''',');
            SQL.Add('API_INFADCAD = ''' + SOcorrencia.Text + ''',');

            SQL.Add('API_CDEV = 200,');              { API Atualizada }
            SQL.Add('API_DTEV = CURRENT_TIMESTAMP'); { API Evento }

            SQL.Add('WHERE API_ID = ''' + TRIM(jItem.optString('IdIntegracao')) + '''');
            ExecQuery;

            Close;
            SQL.Clear;
            SQL.Add('UPDATE OR INSERT');
            SQL.Add('INTO   TAB_API_LOG (IDEP,DTCA,DTINI,DTFIM,DESCRICAO,REGISTROS,TOTAL,LOG_ERRO)'); { Mudar para TB_API_BOL_LOG }

            SQL.Add('VALUES (');
            SQL.Add('''' + aPesquisa[9,00] + ''',');
            SQL.Add('''' + aPesquisa[9,01] + ''',');
            SQL.Add('''' + aPesquisa[9,02] + ''',');
            SQL.Add('''' + aPesquisa[9,03] + ''',');
            SQL.Add('''' + aPesquisa[9,04] + ''',');
            SQL.Add('''' + aPesquisa[9,05] + ''',');
            SQL.Add('''' + aPesquisa[9,06] + ''',');
            SQL.Add('''' + oStrTran(aPesquisa[9,07],'''','') + '''');
            SQL.Add(')');

            SQL.Add('MATCHING (IDEP,DTCA,DESCRICAO)');
            ExecQuery;
          end;
          oCTransact(TAPIEdicao);

        except
          on E: Exception do
          begin
            oCTransact(TAPIEdicao,ltRollback);

            aPesquisa[09,07] := 'Falha ao tentar atualizar via API ' + aPesquisa[09,04] + '. Nº ' + jItem.optString('TituloNumeroDocumento') + ' ID ' + jItem.optString('IdIntegracao') + #13+#13+
                                 Trim(E.Message) + #13 +
                                 FormatDateTime('dd/mm/yy hh:mm',Now);

            EMErros.Lines.Add(aPesquisa[09,07]);
            EMErros.Height  := 95;
            EMErros.Visible := True;
            Application.ProcessMessages;

            if SQLAPIConsulta.Current.ByName('TITULO').AsString <> EmptyStr then
            begin
              oOTransact(TAPIEdicao);
              with SQLAPIEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE '+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3));
                SQL.Add('SET');

                SQL.Add('API_CDEV = 199,'); { API Falha na consolidação }
                SQL.Add('API_DTEV = CURRENT_TIMESTAMP');

                SQL.Add('WHERE TITULO = ''' + SQLAPIConsulta.Current.ByName('TITULO').AsString + '''');
                ExecQuery;
              end;
              oCTransact(TAPIEdicao);
            end;
          end;
        end;
      end;

      SQLAPIConsulta.Next;
    end;

  finally
    PNLRodape.Visible  := False; PNLRodape.Height  := 0;
    PNLCaption.Visible := False; PNLCaption.Height := 0;

    oCTransact(TAPIConsulta);
    
    if aPesquisa[9,00] <> EmptyStr then
    try
      oOTransact(TAPIEdicao  );
      with SQLAPIEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE OR INSERT');
        SQL.Add('INTO   TAB_API_LOG (IDEP,DTCA,DTINI,DTFIM,DESCRICAO,REGISTROS,TOTAL,LOG_ERRO)'); { Mudar para TB_API_BOL_LOG }

        SQL.Add('VALUES (');
        SQL.Add('''' + aPesquisa[9,00] + ''',');
        SQL.Add('''' + aPesquisa[9,01] + ''',');
        SQL.Add('''' + aPesquisa[9,02] + ''',');
        SQL.Add('''' + aPesquisa[9,03] + ''',');
        SQL.Add('''' + aPesquisa[9,04] + ''',');
        SQL.Add('''' + aPesquisa[9,05] + ''',');
        SQL.Add('''' + aPesquisa[9,06] + ''',');
        SQL.Add('''' + oStrTran(aPesquisa[9,07],'''','') + '''');
        SQL.Add(')');

        SQL.Add('MATCHING (IDEP,DTCA,DESCRICAO)');
        ExecQuery;
      end;
      oCTransact(TAPIEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TAPIEdicao,ltRollback);

        aPesquisa[09,07] := 'Falha ao tentar atualizar LOG API DE PAGAMENTOS' + #13 + #13 +
                             Trim(E.Message) + #13 +
                             FormatDateTime('dd/mm/yy hh:mm',Now);

        EMErros.Lines.Add(aPesquisa[09,07]);
        EMErros.Height  := 95;
        EMErros.Visible := True;
        Application.ProcessMessages;
      end;
    end;
  end;
end;

end.
