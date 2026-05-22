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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDUIMPClick(Sender: TObject);
    procedure BTNImportadorClick(Sender: TObject);
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

end.
