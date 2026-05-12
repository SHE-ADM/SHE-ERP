unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  SuperObject,
  uPortalUnicoClientD7,
  dxPageControl;

type
  TForm1 = class(TForm)
    BTNAutentica: TButton;
    BTNConsultaDUIMP: TButton;
    MemoRetorno: TMemo;
    dxPageControl1: TdxPageControl;
    TSCertificado: TdxTabSheet;
    LabelValorAFRMM: TLabel;
    LabelPcceClientId: TLabel;
    LabelPcceClientSecret: TLabel;
    LabelNumeroDuimp: TLabel;
    LabelVersaoDuimp: TLabel;
    LabelNumeroItem: TLabel;
    LabelCertificadoNoSerie: TLabel;
    EditNumeroDuimp: TEdit;
    EditVersaoDuimp: TEdit;
    EditNumeroItem: TEdit;
    EditValorAFRMM: TEdit;
    EditPcceClientId: TEdit;
    EditPcceClientSecret: TEdit;
    EditCertificadoNoSerie: TEdit;
    BTNImportador: TButton;
    BTNConsultaFrete: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDUIMPClick(Sender: TObject);
    procedure BTNImportadorClick(Sender: TObject);
    procedure BTNConsultaFreteClick(Sender: TObject);
  private
    FClient: TPortalUnicoClientD7;

    procedure AddStatus(const AMsg: string);
    function TextoEdit(AEdit: TEdit): string;
    function ClientIdComplementarInformado: string;
    function ClientSecretComplementarInformado: string;
    function CertificadoNoSerieInformado: string;
    function NumeroDuimpInformado: string;
    function VersaoDuimpInformada: Integer;
    procedure GarantirAutenticado;
    procedure AplicarChaveAcessoComplementar;
    function JsonObjPath(AObj: ISuperObject; const APath: string): ISuperObject;
    function JsonStr(AObj: ISuperObject; const APath: string): string;
    function JsonFloat(AObj: ISuperObject; const APath: string): Double;
    function JsonInt(AObj: ISuperObject; const APath: string): Integer;
    procedure AddJsonStr(AObj: ISuperObject; const APath: string);
    procedure AddJsonFloat(AObj: ISuperObject; const APath: string);
    procedure AddJsonInt(AObj: ISuperObject; const APath: string);
    procedure AddJsonTextBlock(AObj: ISuperObject; const APath: string);
  public
    property Client: TPortalUnicoClientD7 read FClient;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FClient := nil;

  if Assigned(EditPcceClientSecret) then
    EditPcceClientSecret.PasswordChar := '*';

  {
    Compatibilidade: se o botao ainda nao existir no .dfm atual,
    ele sera criado em tempo de execucao. Quando voce incluir o botao
    visualmente no form, esta rotina apenas garante o evento OnClick.
  }
  if not Assigned(BTNConsultaFrete) then
  begin
    BTNConsultaFrete := TButton.Create(Self);
    BTNConsultaFrete.Name := 'BTNConsultaFrete';

    if Assigned(BTNImportador) and Assigned(BTNImportador.Parent) then
      BTNConsultaFrete.Parent := BTNImportador.Parent
    else
      BTNConsultaFrete.Parent := Self;

    BTNConsultaFrete.Caption := 'Consultar Frete';
    BTNConsultaFrete.Width := 120;
    BTNConsultaFrete.Height := 25;

    if Assigned(BTNImportador) then
    begin
      BTNConsultaFrete.Left := BTNImportador.Left + BTNImportador.Width + 8;
      BTNConsultaFrete.Top := BTNImportador.Top;
    end
    else
    begin
      BTNConsultaFrete.Left := 16;
      BTNConsultaFrete.Top := 160;
    end;
  end;

  BTNConsultaFrete.OnClick := BTNConsultaFreteClick;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(FClient) then
    FreeAndNil(FClient);
end;

procedure TForm1.AddStatus(const AMsg: string);
begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Lines.Add(AMsg);
end;

function TForm1.TextoEdit(AEdit: TEdit): string;
begin
  Result := '';

  if Assigned(AEdit) then
    Result := Trim(AEdit.Text);
end;

function TForm1.ClientIdComplementarInformado: string;
begin
  Result := TextoEdit(EditPcceClientId);
end;

function TForm1.ClientSecretComplementarInformado: string;
begin
  Result := TextoEdit(EditPcceClientSecret);
end;

function TForm1.CertificadoNoSerieInformado: string;
begin
  Result := TextoEdit(EditCertificadoNoSerie);
end;

function TForm1.NumeroDuimpInformado: string;
begin
  Result := TextoEdit(EditNumeroDuimp);
end;

function TForm1.VersaoDuimpInformada: Integer;
begin
  Result := StrToIntDef(TextoEdit(EditVersaoDuimp), 0);
end;

procedure TForm1.GarantirAutenticado;
begin
  if not Assigned(FClient) then
    raise Exception.Create('DUIMP nao autenticada. Execute BTNAutentica primeiro.');

  if Trim(FClient.Session.SetToken) = '' then
    raise Exception.Create('Sessao DUIMP sem Set-Token. Execute BTNAutentica primeiro.');

  if Trim(FClient.Session.CsrfToken) = '' then
    raise Exception.Create('Sessao DUIMP sem X-CSRF-Token. Execute BTNAutentica primeiro.');
end;

function TForm1.JsonObjPath(AObj: ISuperObject; const APath: string): ISuperObject;
begin
  Result := nil;

  if not Assigned(AObj) then
    Exit;

  try
    Result := AObj.O[APath];
  except
    Result := nil;
  end;
end;

function TForm1.JsonStr(AObj: ISuperObject; const APath: string): string;
var
  V: ISuperObject;
begin
  Result := '';
  V := JsonObjPath(AObj, APath);

  if not Assigned(V) then
    Exit;

  try
    if V.DataType = stNull then
      Result := ''
    else
      Result := Trim(V.AsString);
  except
    Result := '';
  end;
end;

function TForm1.JsonFloat(AObj: ISuperObject; const APath: string): Double;
var
  V: ISuperObject;
begin
  Result := 0;
  V := JsonObjPath(AObj, APath);

  if not Assigned(V) then
    Exit;

  try
    Result := V.AsDouble;
  except
    Result := 0;
  end;
end;

function TForm1.JsonInt(AObj: ISuperObject; const APath: string): Integer;
var
  V: ISuperObject;
begin
  Result := 0;
  V := JsonObjPath(AObj, APath);

  if not Assigned(V) then
    Exit;

  try
    Result := V.AsInteger;
  except
    Result := 0;
  end;
end;

procedure TForm1.AddJsonStr(AObj: ISuperObject; const APath: string);
begin
  AddStatus(APath + ': ' + JsonStr(AObj, APath));
end;

procedure TForm1.AddJsonFloat(AObj: ISuperObject; const APath: string);
begin
  AddStatus(APath + ': ' + FormatFloat('0.00', JsonFloat(AObj, APath)));
end;

procedure TForm1.AddJsonInt(AObj: ISuperObject; const APath: string);
begin
  AddStatus(APath + ': ' + IntToStr(JsonInt(AObj, APath)));
end;

procedure TForm1.AddJsonTextBlock(AObj: ISuperObject; const APath: string);
var
  LTexto: string;
  SL: TStringList;
  I: Integer;
begin
  AddStatus(APath + ':');

  LTexto := JsonStr(AObj, APath);

  if Trim(LTexto) = '' then
  begin
    AddStatus('  <nao retornado>');
    Exit;
  end;

  LTexto := StringReplace(LTexto, #13#10, #10, [rfReplaceAll]);
  LTexto := StringReplace(LTexto, #13, #10, [rfReplaceAll]);

  SL := TStringList.Create;
  try
    SL.Text := LTexto;

    for I := 0 to SL.Count - 1 do
      AddStatus('  ' + SL[I]);
  finally
    SL.Free;
  end;
end;

procedure TForm1.AplicarChaveAcessoComplementar;
var
  LClientId: string;
  LClientSecret: string;
begin
  if not Assigned(FClient) then
    Exit;

  LClientId := ClientIdComplementarInformado;
  LClientSecret := ClientSecretComplementarInformado;

  if (LClientId <> '') and (LClientSecret <> '') then
    FClient.SetChaveAcessoComplementar(LClientId, LClientSecret)
  else
    FClient.SetChaveAcessoComplementar('', '');
end;

procedure TForm1.BTNAutenticaClick(Sender: TObject);
var
  LUsouChaveComplementar: Boolean;
  LCertificadoNoSerie: string;
begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Clear;

  try
    if Assigned(FClient) then
      FreeAndNil(FClient);

    LCertificadoNoSerie := CertificadoNoSerieInformado;

    FClient := TPortalUnicoClientD7.Create(
      'portalunico.siscomex.gov.br',
      'IMPEXP',
      LCertificadoNoSerie
    );

    LUsouChaveComplementar :=
      (ClientIdComplementarInformado <> '') and
      (ClientSecretComplementarInformado <> '');

    AplicarChaveAcessoComplementar;

    FClient.Autenticar;

    AddStatus('Autenticado no Portal Unico/DUIMP com sucesso.');
    AddStatus('Host...............: portalunico.siscomex.gov.br');
    AddStatus('Role-Type..........: IMPEXP');
    AddStatus('Autenticacao base..: e-CPF/certificado digital');

    if LCertificadoNoSerie <> '' then
      AddStatus('Certificado........: numero de serie informado; selecao manual nao aberta.')
    else
      AddStatus('Certificado........: numero de serie vazio; selecao manual aberta.');

    AddStatus('DUIMP CSRF expira..: ' + FClient.Session.CsrfExpiration);

    if LUsouChaveComplementar then
      AddStatus('Chave complementar.: Client-Id/Client-Secret enviados no POST /portal/api/autenticar.')
    else
      AddStatus('Chave complementar.: ignorada; Client-Id ou Client-Secret vazio/em branco.');

    AddStatus('');
    AddStatus('Modo atual.........: somente DUIMP.');
    AddStatus('PCCE/SEFAZ/Mercante: nao utilizados.');
  except
    on E: Exception do
    begin
      if Assigned(FClient) then
        FreeAndNil(FClient);

      AddStatus('Erro ao autenticar no Portal Unico/DUIMP.');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao autenticar no Portal Unico/DUIMP:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;


procedure TForm1.BTNConsultaDUIMPClick(Sender: TObject);
var
  LNumeroDuimp: string;
  LVersaoDuimp: Integer;
  LEndpoint: string;
  LRetorno: string;
  LRoot: ISuperObject;
begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Clear;

  try
    GarantirAutenticado;

    LNumeroDuimp := NumeroDuimpInformado;
    LVersaoDuimp := VersaoDuimpInformada;

    if LNumeroDuimp = '' then
      raise Exception.Create('Informe o numero da DUIMP em EditNumeroDuimp.');

    if LVersaoDuimp <= 0 then
      raise Exception.Create('Informe a versao da DUIMP em EditVersaoDuimp.');

    LEndpoint :=
      'https://portalunico.siscomex.gov.br' +
      '/duimp-api/api/ext/duimp/' +
      LNumeroDuimp + '/' + IntToStr(LVersaoDuimp);

    AddStatus('DUIMP - CONSULTA GERAL');
    AddStatus('------------------------------------------------------------');
    AddStatus('endpoint: ' + LEndpoint);
    AddStatus('numero informado: ' + LNumeroDuimp);
    AddStatus('versao informada: ' + IntToStr(LVersaoDuimp));
    AddStatus('');

    LRetorno := FClient.ConsultarDuimp(LNumeroDuimp, LVersaoDuimp);
    LRoot := SO(LRetorno);

    if not Assigned(LRoot) then
      raise Exception.Create('Retorno da DUIMP nao e um JSON valido.');

    AddStatus('identificacao');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'identificacao.numero');
    AddJsonInt(LRoot, 'identificacao.versao');
    AddJsonStr(LRoot, 'identificacao.dataRegistro');
    AddJsonStr(LRoot, 'identificacao.chaveAcesso');
    AddJsonStr(LRoot, 'identificacao.responsavelRegistroNumero');
    AddStatus('');

    AddStatus('identificacao.importador');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'identificacao.importador.tipoImportador');
    AddJsonStr(LRoot, 'identificacao.importador.ni');
    AddJsonStr(LRoot, 'identificacao.importador.nome');
    AddJsonStr(LRoot, 'identificacao.importador.endereco');
    AddStatus('');

    AddStatus('identificacao.informacaoComplementar');
    AddStatus('------------------------------------------------------------');
    AddJsonTextBlock(LRoot, 'identificacao.informacaoComplementar');
    AddStatus('');

    AddStatus('situacao');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'situacao.situacaoDuimp');
    AddJsonStr(LRoot, 'situacao.situacaoAnaliseRetificacao');
    AddJsonStr(LRoot, 'situacao.situacaoLicenciamento');
    AddJsonStr(LRoot, 'situacao.controleCarga');
    AddStatus('');

    AddStatus('carga');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'carga.unidadeDeclarada.codigo');
    AddJsonStr(LRoot, 'carga.tipoIdentificacaoCarga');
    AddJsonStr(LRoot, 'carga.identificacao');
    AddJsonStr(LRoot, 'carga.paisProcedencia.codigo');
    AddJsonStr(LRoot, 'carga.motivoSituacaoEspecial.codigo');
    AddStatus('');

    AddStatus('carga.frete');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'carga.frete.codigoMoedaNegociada');
    AddJsonFloat(LRoot, 'carga.frete.valorMoedaNegociada');
    AddJsonFloat(LRoot, 'carga.frete.valorTotalFrete');
    AddJsonFloat(LRoot, 'carga.frete.valorTotalFreteBRL');
    AddStatus('');

    AddStatus('carga.seguro');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'carga.seguro.codigoMoedaNegociada');
    AddJsonFloat(LRoot, 'carga.seguro.valorMoedaNegociada');
    AddJsonFloat(LRoot, 'carga.seguro.valorTotalSeguro');
    AddJsonFloat(LRoot, 'carga.seguro.valorTotalSeguroBRL');
    AddStatus('');

    AddStatus('tributos.mercadoria');
    AddStatus('------------------------------------------------------------');
    AddJsonFloat(LRoot, 'tributos.mercadoria.valorTotalLocalEmbarqueUSD');
    AddJsonFloat(LRoot, 'tributos.mercadoria.valorTotalLocalEmbarqueBRL');
    AddStatus('');

    AddStatus('RETORNO JSON ORIGINAL');
    AddStatus('------------------------------------------------------------');
    AddStatus(LRetorno);
  except
    on E: Exception do
    begin
      AddStatus('Erro ao consultar DUIMP.');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao consultar DUIMP:' + sLineBreak + E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

procedure TForm1.BTNImportadorClick(Sender: TObject);
var
  LNumeroDuimp: string;
  LVersaoDuimp: Integer;
  LEndpoint: string;
  LRetorno: string;
  LRoot: ISuperObject;
  LTipoImportador: string;
  LNI: string;
  LNome: string;
  LEndereco: string;

  function ApenasDigitosLocal(const ATexto: string): string;
  var
    I: Integer;
  begin
    Result := '';
    for I := 1 to Length(ATexto) do
      if ATexto[I] in ['0'..'9'] then
        Result := Result + ATexto[I];
  end;

  function ValorOuNaoRetornadoLocal(const AValor: string): string;
  begin
    Result := Trim(AValor);
    if Result = '' then
      Result := '<nao retornado>';
  end;

  procedure AddCampoOrigemLocal(const ATagXml, ACampoJson, AValor: string);
  begin
    AddStatus(ATagXml + ' <= ' + ACampoJson + ': ' + ValorOuNaoRetornadoLocal(AValor));
  end;

begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Clear;

  try
    GarantirAutenticado;

    LNumeroDuimp := NumeroDuimpInformado;
    LVersaoDuimp := VersaoDuimpInformada;

    if LNumeroDuimp = '' then
      raise Exception.Create('Informe o numero da DUIMP em EditNumeroDuimp.');

    if LVersaoDuimp <= 0 then
      raise Exception.Create('Informe a versao da DUIMP em EditVersaoDuimp.');

    LEndpoint :=
      'https://portalunico.siscomex.gov.br' +
      '/duimp-api/api/ext/duimp/' +
      LNumeroDuimp + '/' + IntToStr(LVersaoDuimp);

    AddStatus('DUIMP - IMPORTADOR / DETALHE DO INTERVENIENTE');
    AddStatus('------------------------------------------------------------');
    AddStatus('endpoint: ' + LEndpoint);
    AddStatus('numero informado: ' + LNumeroDuimp);
    AddStatus('versao informada: ' + IntToStr(LVersaoDuimp));
    AddStatus('');

    LRetorno := FClient.ConsultarDuimp(LNumeroDuimp, LVersaoDuimp);
    LRoot := SO(LRetorno);

    if not Assigned(LRoot) then
      raise Exception.Create('Retorno da DUIMP nao e um JSON valido.');

    LTipoImportador := JsonStr(LRoot, 'identificacao.importador.tipoImportador');
    LNI := ApenasDigitosLocal(JsonStr(LRoot, 'identificacao.importador.ni'));
    LNome := JsonStr(LRoot, 'identificacao.importador.nome');
    LEndereco := JsonStr(LRoot, 'identificacao.importador.endereco');

    AddStatus('identificacao.importador');
    AddStatus('------------------------------------------------------------');
    AddStatus('identificacao.importador.tipoImportador: ' + ValorOuNaoRetornadoLocal(LTipoImportador));
    AddStatus('identificacao.importador.ni: ' + ValorOuNaoRetornadoLocal(LNI));
    AddStatus('identificacao.importador.nome: ' + ValorOuNaoRetornadoLocal(LNome));
    AddStatus('identificacao.importador.endereco: ' + ValorOuNaoRetornadoLocal(LEndereco));
    AddStatus('');

    AddStatus('VALIDACAO DO NI DO IMPORTADOR');
    AddStatus('------------------------------------------------------------');
    if LNI = '' then
      AddStatus('identificacao.importador.ni: <nao retornado>')
    else if Length(LNI) = 14 then
      AddStatus('identificacao.importador.ni identificado como CNPJ com 14 digitos.')
    else if Length(LNI) = 11 then
      AddStatus('identificacao.importador.ni identificado como CPF com 11 digitos.')
    else
      AddStatus('identificacao.importador.ni retornou ' + IntToStr(Length(LNI)) + ' digitos; validar cadastro antes da NF-e.');
    AddStatus('');

    AddStatus('MAPEAMENTO PARA NF-e - tag <emit>');
    AddStatus('------------------------------------------------------------');

    if Length(LNI) = 14 then
      AddCampoOrigemLocal('<emit><CNPJ>', 'identificacao.importador.ni', LNI)
    else if Length(LNI) = 11 then
      AddCampoOrigemLocal('<emit><CPF>', 'identificacao.importador.ni', LNI)
    else
      AddCampoOrigemLocal('<emit><CNPJ>/<CPF>', 'identificacao.importador.ni', LNI);

    AddCampoOrigemLocal('<emit><xNome>', 'identificacao.importador.nome', LNome);
    AddCampoOrigemLocal('<emit><enderEmit> agregado', 'identificacao.importador.endereco', LEndereco);
    AddStatus('');

    AddStatus('CAMPOS DA tag <emit> NAO DETALHADOS PELA DUIMP GERAL');
    AddStatus('------------------------------------------------------------');
    AddStatus('<emit><xFant>: <nao retornado pela DUIMP geral>');
    AddStatus('<emit><enderEmit><xLgr>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><nro>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><xCpl>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><xBairro>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><cMun>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><xMun>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><UF>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><CEP>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><cPais>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><xPais>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><fone>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><IE>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><IEST>: preencher pelo cadastro fiscal do ERP/RFB quando aplicavel');
    AddStatus('<emit><IM>: preencher pelo cadastro fiscal do ERP/RFB quando aplicavel');
    AddStatus('<emit><CNAE>: preencher pelo cadastro fiscal do ERP/RFB quando aplicavel');
    AddStatus('<emit><CRT>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('');

    AddStatus('OBSERVACAO');
    AddStatus('------------------------------------------------------------');
    AddStatus('A DUIMP geral identifica o importador/interveniente e pode retornar nome/endereco agregado.');
    AddStatus('Para gerar XML NF-e valido, os campos cadastrais/fiscais obrigatorios da tag <emit>');
    AddStatus('devem ser completados e validados no cadastro fiscal do ERP/RFB antes da emissao.');
  except
    on E: Exception do
    begin
      AddStatus('Erro ao consultar dados detalhe do importador.');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao consultar dados detalhe do importador:' + sLineBreak + E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

procedure TForm1.BTNConsultaFreteClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  RetornoDuimp: string;
  RetornoValores: string;
  RetornoItens: string;
  ErroValores: string;
  StatusCodeValores: Integer;
  RootDuimp: ISuperObject;
  RootValores: ISuperObject;
  RootItens: ISuperObject;
  ArrItens: TSuperArray;
  I: Integer;
  TotalPesoLiquido: Double;
  TotalPesoBruto: Double;
  TotalFreteBRL: Double;
  TotalSeguroBRL: Double;
  TotalValorAduaneiroBRL: Double;
  ItensPesoLiquido: Double;
  ItensPesoBruto: Double;
  ItensFreteBRL: Double;
  ItensSeguroBRL: Double;
  ItensValorAduaneiroBRL: Double;
  MoedaFrete: string;
  ValorFreteMoeda: string;
  UnidadeDeclarada: string;
  TipoIdentificacaoCarga: string;
  IdentificacaoCarga: string;
  QuantidadeItens: Integer;
  ModalTransporte: string;
  TransportadorNI: string;
  TransportadorNome: string;
  TransportadorIE: string;
  TransportadorEndereco: string;
  TransportadorMunicipio: string;
  TransportadorUF: string;
  StatusObs: string;

  function OnlyDigitsLocal(const S: string): string;
  var
    J: Integer;
  begin
    Result := '';
    for J := 1 to Length(S) do
      if S[J] in ['0'..'9'] then
        Result := Result + S[J];
  end;

  function ValorOuNaoRetornadoLocal(const S: string): string;
  begin
    Result := Trim(S);
    if Result = '' then
      Result := '<nao retornado>';
  end;

  function ValorFloatTextoLocal(const V: Double; const Casas: Integer): string;
  begin
    if V = 0 then
    begin
      Result := '<nao retornado>';
      Exit;
    end;

    if Casas = 3 then
      Result := FormatFloat('0.000', V)
    else
      Result := FormatFloat('0.00', V);

    Result := StringReplace(Result, ',', '.', [rfReplaceAll]);
  end;

  function JsonStrAnyLocal(AObj: ISuperObject; const APaths: array of string): string;
  var
    J: Integer;
  begin
    Result := '';

    if not Assigned(AObj) then
      Exit;

    for J := Low(APaths) to High(APaths) do
    begin
      Result := JsonStr(AObj, APaths[J]);
      if Trim(Result) <> '' then
        Exit;
    end;
  end;

  function JsonFloatAnyLocal(AObj: ISuperObject; const APaths: array of string): Double;
  var
    J: Integer;
  begin
    Result := 0;

    if not Assigned(AObj) then
      Exit;

    for J := Low(APaths) to High(APaths) do
    begin
      Result := JsonFloat(AObj, APaths[J]);
      if Result <> 0 then
        Exit;
    end;
  end;

  function KeyMatchLocal(const AKey: string; const ATermos: array of string): Boolean;
  var
    J: Integer;
    K: string;
    T: string;
  begin
    Result := False;
    K := LowerCase(Trim(AKey));

    for J := Low(ATermos) to High(ATermos) do
    begin
      T := LowerCase(Trim(ATermos[J]));
      if K = T then
      begin
        Result := True;
        Exit;
      end;
    end;
  end;

  function FloatFromObjLocal(AObj: ISuperObject): Double;
  begin
    Result := 0;

    if not Assigned(AObj) then
      Exit;

    try
      if AObj.DataType in [stInt, stDouble] then
      begin
        Result := AObj.AsDouble;
        Exit;
      end;

      if AObj.DataType = stString then
      begin
        Result := StrToFloatDef(StringReplace(Trim(AObj.AsString), '.', DecimalSeparator, [rfReplaceAll]), 0);
        Exit;
      end;

      if AObj.DataType = stObject then
      begin
        Result := JsonFloatAnyLocal(AObj, [
          'valorBRL',
          'valorTotalBRL',
          'valorTotalFreteBRL',
          'valorFreteBRL',
          'valor',
          'valorTotal'
        ]);
      end;
    except
      Result := 0;
    end;
  end;

  function JsonFindFloatByKeyLocal(AObj: ISuperObject; const ATermos: array of string): Double;
  var
    Iter: TSuperObjectIter;
    Valor: ISuperObject;
    J: Integer;
  begin
    Result := 0;

    if not Assigned(AObj) then
      Exit;

    case AObj.DataType of
      stObject:
        begin
          if ObjectFindFirst(AObj, Iter) then
          begin
            try
              repeat
                Valor := Iter.val;

                if KeyMatchLocal(Iter.key, ATermos) then
                begin
                  Result := FloatFromObjLocal(Valor);
                  if Result <> 0 then
                    Exit;
                end;

                if Assigned(Valor) and (Valor.DataType in [stObject, stArray]) then
                begin
                  Result := JsonFindFloatByKeyLocal(Valor, ATermos);
                  if Result <> 0 then
                    Exit;
                end;
              until not ObjectFindNext(Iter);
            finally
              ObjectFindClose(Iter);
            end;
          end;
        end;

      stArray:
        begin
          for J := 0 to AObj.AsArray.Length - 1 do
          begin
            if Assigned(AObj.AsArray.O[J]) then
            begin
              Result := JsonFindFloatByKeyLocal(AObj.AsArray.O[J], ATermos);
              if Result <> 0 then
                Exit;
            end;
          end;
        end;
    end;
  end;

  function GetJsonArrayFromRootLocal(ARoot: ISuperObject): TSuperArray;
  begin
    Result := nil;

    if not Assigned(ARoot) then
      Exit;

    if ARoot.DataType = stArray then
    begin
      Result := ARoot.AsArray;
      Exit;
    end;

    try
      if Assigned(ARoot.A['itens']) then
      begin
        Result := ARoot.A['itens'];
        Exit;
      end;
    except
    end;

    try
      if Assigned(ARoot.A['listaItens']) then
      begin
        Result := ARoot.A['listaItens'];
        Exit;
      end;
    except
    end;

    try
      if Assigned(ARoot.A['content']) then
      begin
        Result := ARoot.A['content'];
        Exit;
      end;
    except
    end;
  end;

  function ItemPesoLiquidoLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'mercadoria.pesoLiquido',
      'caracterizacao.pesoLiquido',
      'caracterizacao.pesoLiqui',
      'pesoLiquido'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['pesoLiquido', 'pesoLiqui']);
  end;

  function ItemPesoBrutoLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'mercadoria.pesoBruto',
      'caracterizacao.pesoBruto',
      'pesoBruto'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['pesoBruto']);
  end;

  function ItemFreteBRLLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'condicaoVenda.frete.valorBRL',
      'condicaoVenda.frete.valorTotalBRL',
      'carga.frete.valorBRL',
      'frete.valorBRL',
      'frete.valorTotalBRL',
      'valorFreteBRL'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['valorFreteBRL', 'frete']);
  end;

  function ItemSeguroBRLLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'condicaoVenda.seguro.valorBRL',
      'condicaoVenda.seguro.valorTotalBRL',
      'seguro.valorBRL',
      'seguro.valorTotalBRL',
      'valorSeguroBRL'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['valorSeguroBRL', 'seguro']);
  end;

  function ItemValorAduaneiroBRLLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'tributos.mercadoria.valorAduaneiroBRL',
      'tributos.mercadoria.valorAduaneiro.valorBRL',
      'tributos.mercadoria.valorAduaneiro.valorTotalBRL',
      'mercadoria.valorAduaneiroBRL',
      'mercadoria.valorAduaneiro.valorBRL',
      'mercadoria.valorAduaneiro.valorTotalBRL',
      'valorAduaneiroBRL',
      'valorAduaneiro.valorBRL',
      'valorAduaneiro.valorTotalBRL'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['valorAduaneiroBRL', 'valorAduaneiro']);
  end;

begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := NumeroDuimpInformado;
    VersaoDuimp := VersaoDuimpInformada;

    if NumeroDuimp = '' then
      raise Exception.Create('Informe o numero da DUIMP em EditNumeroDuimp.');

    if VersaoDuimp <= 0 then
      raise Exception.Create('Informe a versao da DUIMP em EditVersaoDuimp.');

    AddStatus('Consultando carga, transito, peso e frete pela DUIMP...');
    AddStatus('DUIMP: ' + NumeroDuimp);
    AddStatus('Versao: ' + IntToStr(VersaoDuimp));
    AddStatus('');

    RetornoDuimp := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);
    RootDuimp := SO(RetornoDuimp);

    if not Assigned(RootDuimp) then
      raise Exception.Create('JSON invalido no retorno dos dados gerais da DUIMP.');

    RootValores := nil;
    RetornoValores := '';
    ErroValores := '';
    StatusCodeValores := 0;
    StatusObs := '';

    if FClient.TryGetJson(
      '/duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp) + '/valores-calculados',
      RetornoValores,
      StatusCodeValores,
      ErroValores
    ) then
    begin
      RootValores := SO(RetornoValores);

      if not Assigned(RootValores) then
      begin
        RootValores := nil;
        StatusObs := 'Valores calculados retornaram JSON invalido. A consulta seguira com dados gerais da DUIMP.';
        AddStatus(StatusObs);
        AddStatus('');
      end;
    end
    else
    begin
      StatusObs := 'Valores calculados nao disponiveis. HTTP status: ' + IntToStr(StatusCodeValores) + '. ' + ErroValores;
      AddStatus(StatusObs);
      AddStatus('');
    end;

    MoedaFrete := JsonStrAnyLocal(RootDuimp, [
      'carga.frete.codigoMoedaNegociada',
      'frete.codigoMoedaNegociada',
      'carga.frete.moeda.codigo',
      'carga.frete.moedaNegociada.codigo',
      'carga.codigoMoedaFrete'
    ]);

    ValorFreteMoeda := JsonStrAnyLocal(RootDuimp, [
      'carga.frete.valorMoedaNegociada',
      'frete.valorMoedaNegociada',
      'carga.frete.valorTotalMoedaNegociada',
      'carga.frete.valorNaMoedaNegociada'
    ]);

    TotalFreteBRL := JsonFloatAnyLocal(RootDuimp, [
      'carga.frete.valorTotalBRL',
      'carga.frete.valorTotalFreteBRL',
      'carga.frete.valorTotalFreteEmReal',
      'carga.frete.valorTotalFreteReal',
      'carga.valorFreteTotalBRL',
      'carga.valorTotalFreteBRL',
      'carga.valorTotalFrete'
    ]);

    if (TotalFreteBRL = 0) and Assigned(RootValores) then
      TotalFreteBRL := JsonFloatAnyLocal(RootValores, [
        'carga.frete.valorTotalBRL',
        'frete.valorTotalBRL',
        'carga.frete.valorTotalFreteBRL',
        'carga.frete.valorTotalFreteEmReal',
        'carga.valorFreteTotalBRL',
        'valorFreteTotalBRL',
        'valorTotalFreteBRL'
      ]);

    TotalSeguroBRL := JsonFloatAnyLocal(RootDuimp, [
      'carga.seguro.valorTotalSeguroBRL',
      'carga.seguro.valorTotalBRL',
      'seguro.valorTotalBRL',
      'valorSeguroTotalBRL'
    ]);

    if (TotalSeguroBRL = 0) and Assigned(RootValores) then
      TotalSeguroBRL := JsonFloatAnyLocal(RootValores, [
        'carga.seguro.valorTotalSeguroBRL',
        'carga.seguro.valorTotalBRL',
        'seguro.valorTotalBRL',
        'valorSeguroTotalBRL'
      ]);

    TotalValorAduaneiroBRL := JsonFloatAnyLocal(RootDuimp, [
      'tributos.mercadoria.valorAduaneiroBRL',
      'carga.valorAduaneiroBRL',
      'valorAduaneiroBRL'
    ]);

    TotalPesoLiquido := JsonFloatAnyLocal(RootDuimp, [
      'carga.pesoLiquido',
      'carga.dadosCarga.pesoLiquido',
      'carga.pesoLiquidoTotal'
    ]);

    TotalPesoBruto := JsonFloatAnyLocal(RootDuimp, [
      'carga.pesoBruto',
      'carga.dadosCarga.pesoBruto',
      'carga.pesoBrutoTotal'
    ]);

    ModalTransporte := JsonStrAnyLocal(RootDuimp, [
      'carga.modalTransporte',
      'carga.modalidadeTransporte',
      'carga.viaTransporte',
      'carga.dadosCarga.modalTransporte',
      'carga.dadosCarga.viaTransporte'
    ]);

    UnidadeDeclarada := JsonStrAnyLocal(RootDuimp, [
      'carga.unidadeDeclarada.codigo',
      'carga.unidadeDeclarada',
      'carga.unidadeCarga.codigo',
      'carga.unidadeCarga'
    ]);

    TipoIdentificacaoCarga := JsonStrAnyLocal(RootDuimp, [
      'carga.tipoIdentificacaoCarga',
      'carga.tipoIdentificacao',
      'carga.tipoCarga'
    ]);

    IdentificacaoCarga := JsonStrAnyLocal(RootDuimp, [
      'carga.identificacao',
      'carga.numeroConhecimento',
      'carga.conhecimentoCarga',
      'carga.conhecimentoCarga.numero',
      'carga.numeroCE',
      'carga.ceMercante'
    ]);

    QuantidadeItens := JsonInt(RootDuimp, 'quantidadeItens');

    TransportadorNI := OnlyDigitsLocal(JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.ni',
      'carga.transportador.cnpj',
      'carga.transportador.cpf',
      'carga.dadosTransportador.ni'
    ]));

    TransportadorNome := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.nome',
      'carga.transportador.nomeTransportador',
      'carga.dadosTransportador.nome'
    ]);

    TransportadorIE := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.ie',
      'carga.transportador.inscricaoEstadual',
      'carga.dadosTransportador.ie'
    ]);

    TransportadorEndereco := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.endereco',
      'carga.transportador.logradouro',
      'carga.dadosTransportador.endereco'
    ]);

    TransportadorMunicipio := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.municipio',
      'carga.transportador.nomeMunicipio',
      'carga.dadosTransportador.municipio'
    ]);

    TransportadorUF := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.uf',
      'carga.transportador.siglaUf',
      'carga.dadosTransportador.uf'
    ]);

    ItensPesoLiquido := 0;
    ItensPesoBruto := 0;
    ItensFreteBRL := 0;
    ItensSeguroBRL := 0;
    ItensValorAduaneiroBRL := 0;

    RetornoItens := FClient.ConsultarDuimpItens(NumeroDuimp, VersaoDuimp);
    RootItens := SO(RetornoItens);

    if not Assigned(RootItens) then
      raise Exception.Create('JSON invalido no retorno dos itens da DUIMP.');

    ArrItens := GetJsonArrayFromRootLocal(RootItens);

    if not Assigned(ArrItens) then
      raise Exception.Create('Nao foi encontrado array de itens no retorno da DUIMP.');

    if QuantidadeItens = 0 then
      QuantidadeItens := ArrItens.Length;

    for I := 0 to ArrItens.Length - 1 do
    begin
      if Assigned(ArrItens.O[I]) then
      begin
        ItensPesoLiquido := ItensPesoLiquido + ItemPesoLiquidoLocal(ArrItens.O[I]);
        ItensPesoBruto := ItensPesoBruto + ItemPesoBrutoLocal(ArrItens.O[I]);
        ItensFreteBRL := ItensFreteBRL + ItemFreteBRLLocal(ArrItens.O[I]);
        ItensSeguroBRL := ItensSeguroBRL + ItemSeguroBRLLocal(ArrItens.O[I]);
        ItensValorAduaneiroBRL := ItensValorAduaneiroBRL + ItemValorAduaneiroBRLLocal(ArrItens.O[I]);
      end;

      Application.ProcessMessages;
    end;

    { Consolida dados que existem nos itens, mas podem nao aparecer no bloco geral
      da DUIMP registrada. }
    if TotalPesoLiquido = 0 then
      TotalPesoLiquido := ItensPesoLiquido;

    if TotalPesoBruto = 0 then
      TotalPesoBruto := ItensPesoBruto;

    if TotalFreteBRL = 0 then
      TotalFreteBRL := ItensFreteBRL;

    if TotalSeguroBRL = 0 then
      TotalSeguroBRL := ItensSeguroBRL;

    if TotalValorAduaneiroBRL = 0 then
      TotalValorAduaneiroBRL := ItensValorAduaneiroBRL;

    AddStatus('DUIMP - CONSULTA DE FRETE / TRANSPORTE');
    AddStatus('------------------------------------------------------------');
    AddStatus('endpoint dados gerais: https://portalunico.siscomex.gov.br/duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp));
    AddStatus('endpoint itens: https://portalunico.siscomex.gov.br/duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp) + '/itens');
    AddStatus('endpoint valores calculados: https://portalunico.siscomex.gov.br/duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp) + '/valores-calculados');
    AddStatus('numero informado: ' + NumeroDuimp);
    AddStatus('versao informada: ' + IntToStr(VersaoDuimp));
    AddStatus('');

    AddStatus('carga.frete');
    AddStatus('------------------------------------------------------------');
    AddStatus('carga.frete.codigoMoedaNegociada: ' + ValorOuNaoRetornadoLocal(MoedaFrete));
    AddStatus('carga.frete.valorMoedaNegociada: ' + ValorOuNaoRetornadoLocal(ValorFreteMoeda));
    AddStatus('frete BRL consolidado pelos itens/valores calculados: ' + ValorFloatTextoLocal(TotalFreteBRL, 2));
    AddStatus('seguro BRL consolidado pelos itens/valores calculados: ' + ValorFloatTextoLocal(TotalSeguroBRL, 2));
    AddStatus('valor aduaneiro BRL consolidado pelos itens: ' + ValorFloatTextoLocal(TotalValorAduaneiroBRL, 2));
    AddStatus('');

    AddStatus('carga - identificacao');
    AddStatus('------------------------------------------------------------');
    AddStatus('carga.unidadeDeclarada.codigo: ' + ValorOuNaoRetornadoLocal(UnidadeDeclarada));
    AddStatus('carga.tipoIdentificacaoCarga: ' + ValorOuNaoRetornadoLocal(TipoIdentificacaoCarga));
    AddStatus('carga.identificacao: ' + ValorOuNaoRetornadoLocal(IdentificacaoCarga));
    AddStatus('quantidadeItens: ' + IntToStr(QuantidadeItens));
    AddStatus('');

    AddStatus('carga / volumes / pesos');
    AddStatus('------------------------------------------------------------');
    AddStatus('carga.modalTransporte: ' + ValorOuNaoRetornadoLocal(ModalTransporte));
    AddStatus('carga.quantidadeVolumes: <nao retornado>');
    AddStatus('peso liquido consolidado pelos itens: ' + ValorFloatTextoLocal(TotalPesoLiquido, 3));
    AddStatus('peso bruto consolidado: ' + ValorFloatTextoLocal(TotalPesoBruto, 3));
    AddStatus('');

    AddStatus('transportador, quando retornado no JSON');
    AddStatus('------------------------------------------------------------');
    AddStatus('carga.transportador.ni: ' + ValorOuNaoRetornadoLocal(TransportadorNI));
    AddStatus('carga.transportador.nome: ' + ValorOuNaoRetornadoLocal(TransportadorNome));
    AddStatus('carga.transportador.ie: ' + ValorOuNaoRetornadoLocal(TransportadorIE));
    AddStatus('carga.transportador.endereco: ' + ValorOuNaoRetornadoLocal(TransportadorEndereco));
    AddStatus('carga.transportador.municipio: ' + ValorOuNaoRetornadoLocal(TransportadorMunicipio));
    AddStatus('carga.transportador.uf: ' + ValorOuNaoRetornadoLocal(TransportadorUF));
    AddStatus('');

    AddStatus('MAPEAMENTO PARA NF-e - tag <transp>');
    AddStatus('------------------------------------------------------------');
    AddStatus('<transp>');
    AddStatus('  <modFrete>: <pendente: definir pelo ERP conforme modalidade fiscal da NF-e>');
    AddStatus('  <transporta>');

    if Length(TransportadorNI) = 14 then
      AddStatus('    <CNPJ> <= carga.transportador.ni: ' + TransportadorNI)
    else if Length(TransportadorNI) = 11 then
      AddStatus('    <CPF> <= carga.transportador.ni: ' + TransportadorNI)
    else
      AddStatus('    <CNPJ>/<CPF> <= carga.transportador.ni: <pendente: transportador nao retornado ou NI invalido>');

    AddStatus('    <xNome> <= carga.transportador.nome: ' + ValorOuNaoRetornadoLocal(TransportadorNome));
    AddStatus('    <IE> <= carga.transportador.ie: ' + ValorOuNaoRetornadoLocal(TransportadorIE));
    AddStatus('    <xEnder> <= carga.transportador.endereco: ' + ValorOuNaoRetornadoLocal(TransportadorEndereco));
    AddStatus('    <xMun> <= carga.transportador.municipio: ' + ValorOuNaoRetornadoLocal(TransportadorMunicipio));
    AddStatus('    <UF> <= carga.transportador.uf: ' + ValorOuNaoRetornadoLocal(TransportadorUF));
    AddStatus('  </transporta>');
    AddStatus('  <vol>');
    AddStatus('    <qVol> <= carga.quantidadeVolumes: <nao retornado>');
    AddStatus('    <pesoL> <= soma dos itens: ' + ValorFloatTextoLocal(TotalPesoLiquido, 3));
    AddStatus('    <pesoB> <= carga/itens: ' + ValorFloatTextoLocal(TotalPesoBruto, 3));
    AddStatus('  </vol>');
    AddStatus('</transp>');
    AddStatus('');

    AddStatus('VALORES DE FRETE PARA USO NO XML NF-e');
    AddStatus('------------------------------------------------------------');
    AddStatus('frete DUIMP localizado <= carga.frete.valorMoedaNegociada: ' + ValorOuNaoRetornadoLocal(ValorFreteMoeda) + ' ' + ValorOuNaoRetornadoLocal(MoedaFrete));
    AddStatus('<det><prod><vFrete> <= frete BRL consolidado/rateavel: ' + ValorFloatTextoLocal(TotalFreteBRL, 2));
    AddStatus('<total><ICMSTot><vFrete> <= somatorio dos itens/rateio do frete em BRL: ' + ValorFloatTextoLocal(TotalFreteBRL, 2));
    AddStatus('<det><prod><vSeg> <= seguro BRL consolidado/rateavel: ' + ValorFloatTextoLocal(TotalSeguroBRL, 2));
    AddStatus('valor aduaneiro BRL <= soma dos itens: ' + ValorFloatTextoLocal(TotalValorAduaneiroBRL, 2));
    AddStatus('moeda do frete DUIMP <= carga.frete.codigoMoedaNegociada: ' + ValorOuNaoRetornadoLocal(MoedaFrete));
    AddStatus('valor do frete na moeda negociada <= carga.frete.valorMoedaNegociada: ' + ValorOuNaoRetornadoLocal(ValorFreteMoeda));
    AddStatus('modalidade/via de transporte <= carga.modalTransporte: ' + ValorOuNaoRetornadoLocal(ModalTransporte));
    AddStatus('');

    AddStatus('OBSERVACAO');
    AddStatus('------------------------------------------------------------');
    AddStatus('Esta rotina usa a mesma estrategia do BTNFrete: consulta dados gerais, tenta valores calculados sem travar por HTTP 422, consulta itens e consolida valores retornados por item.');
    AddStatus('Quando /valores-calculados retorna DIMP-ER8505, a consulta segue normalmente usando dados gerais e itens da DUIMP.');
    AddStatus('A tag <transp> da NF-e nao recebe diretamente o valor do frete.');
    AddStatus('O valor do frete deve ser rateado nos itens em <det><prod><vFrete> e totalizado em <total><ICMSTot><vFrete>.');
    AddStatus('Quando a DUIMP nao retornar transportador, IE, endereco, municipio, UF ou volumes, preencher pelo ERP/cadastro logistico.');

    if StatusObs <> '' then
      AddStatus(StatusObs);

    if TotalPesoBruto = 0 then
      AddStatus('Atencao: peso bruto total nao foi retornado pela API de dados gerais/itens; no Portal Web ele pode aparecer na aba Carga.');

    if ModalTransporte = '' then
      AddStatus('Atencao: modalidade/via de transporte nao foi retornada na consulta geral DUIMP.');

    AddStatus('Nenhum valor fiscal foi fixado automaticamente.');
  except
    on E: Exception do
    begin
      AddStatus('');
      AddStatus('Erro ao consultar carga/frete pela DUIMP:');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao consultar carga/frete pela DUIMP:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

end.
