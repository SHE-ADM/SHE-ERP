unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  uPortalUnicoClientD7, SuperObject;

type
  TDuimpItemProdutoInfo = record
    NumeroItem: Integer;
    NcmDuimp: string;
    CodigoProduto: string;
    VersaoProduto: string;
    CpfCnpjRaiz: string;

    DescricaoDuimp: string;

    CodigoCatp: string;
    VersaoCatp: string;
    NcmCatp: string;
    DenominacaoCatp: string;
    DescricaoCatp: string;
    SituacaoCatp: string;
    ModalidadeCatp: string;

    StatusConsultaCatp: string;
  end;

  TArrayDuimpItemProdutoInfo = array of TDuimpItemProdutoInfo;

  TDuimpDIAdicaoInfo = record
    nAdicao: string;
    nSeqAdic: string;
    cExportador: string;
    cFabricante: string;
    NumeroItemDuimp: Integer;
    Ncm: string;
    CodigoProduto: string;
  end;

  TArrayDuimpDIAdicaoInfo = array of TDuimpDIAdicaoInfo;

  TDuimpDIInfo = record
    nDI: string;
    dDI: string;
    xLocDesemb: string;
    UFDesemb: string;
    dDesemb: string;
    tpViaTransp: Integer;
    tpIntermedio: Integer;
    CNPJ: string;
    UFTerceiro: string;
    Status: string;
    Adicoes: TArrayDuimpDIAdicaoInfo;
  end;

  TDuimpFreteItemInfo = record
    NumeroItemDuimp: Integer;
    Ncm: string;
    CodigoProduto: string;
    PesoLiquido: Double;
    PesoBruto: Double;
    ValorFreteMoeda: Double;
    ValorFreteBRL: Double;
    ValorSeguroMoeda: Double;
    ValorSeguroBRL: Double;
    ValorAduaneiroBRL: Double;
    Status: string;
  end;

  TArrayDuimpFreteItemInfo = array of TDuimpFreteItemInfo;

  TDuimpFreteInfo = record
    NumeroDuimp: string;
    VersaoDuimp: Integer;

    TipoIdentificacaoCarga: string;
    IdentificacaoCarga: string;
    ControleCarga: string;
    SituacaoCarga: string;

    ViaTransporteCodigo: Integer;
    ViaTransporteDescricao: string;
    PaisProcedencia: string;
    PaisEmbarque: string;

    LocalEmbarque: string;
    LocalDesembaraco: string;
    UFDesembaraco: string;
    URFDespacho: string;
    RecintoAduaneiro: string;

    PesoBruto: Double;
    PesoLiquido: Double;
    UnidadePeso: string;

    CodigoMoedaFrete: string;
    ValorFreteMoeda: Double;
    ValorFreteBRL: Double;

    CodigoMoedaSeguro: string;
    ValorSeguroMoeda: Double;
    ValorSeguroBRL: Double;

    ValorAduaneiroBRL: Double;

    ValorMercadoriaLocalEmbarqueUSD: Double;
    ValorMercadoriaLocalEmbarqueBRL: Double;
    ConhecimentoCarga: string;
    QuantidadeVolumes: string;
    TipoVolumes: string;
    MarcaVolume: string;
    NomeVeiculo: string;
    DataEntradaVeiculo: string;
    PresencaCarga: string;

    Status: string;

    Itens: TArrayDuimpFreteItemInfo;
  end;

  TForm1 = class(TForm)
    EditNumeroDuimp: TEdit;
    EditVersaoDuimp: TEdit;
    BTNAutentica: TButton;
    MemoRetorno: TMemo;
    EditNumeroItem: TEdit;
    BTNConsultaDUIMP: TButton;
    BTNConsultaItens: TButton;
    BTNConsultaDI: TButton;
    BTNFrete: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDUIMPClick(Sender: TObject);
    procedure BTNConsultaItensClick(Sender: TObject);
    procedure BTNConsultaDIClick(Sender: TObject);
    procedure BTNFreteClick(Sender: TObject);
  private
    FClient: TPortalUnicoClientD7;
    FDuimpItensProdutos: TArrayDuimpItemProdutoInfo;
    FDuimpDIInfo: TDuimpDIInfo;
    FDuimpFreteInfo: TDuimpFreteInfo;

    procedure GarantirAutenticado;
    procedure ExibirRetorno(const ATitulo, ARetorno: string);

    function GetNumeroDuimp: string;
    function GetVersaoDuimp: Integer;

    function JsonStr(AObj: ISuperObject; const APath: string): string;
    function JsonInt(AObj: ISuperObject; const APath: string): Integer;
    function JsonFloat(AObj: ISuperObject; const APath: string): Double;
    function JsonStrAny(AObj: ISuperObject; const APaths: array of string): string;
    function JsonIntAny(AObj: ISuperObject; const APaths: array of string): Integer;
    function JsonFloatAny(AObj: ISuperObject; const APaths: array of string): Double;
    function JsonKeyMatch(const AKey: string; const ATermos: array of string): Boolean;
    function JsonObjectResumo(AObj: ISuperObject): string;
    function JsonFindStrByKey(AObj: ISuperObject; const ATermos: array of string): string;
    function JsonFindFloatByKey(AObj: ISuperObject; const ATermos: array of string): Double;
    procedure AplicarFallbackFretePorBuscaRecursiva(ARootDuimp: ISuperObject; var AFrete: TDuimpFreteInfo);
    function ExtractInfoComplementarValue(const ATexto, ALabel: string): string;
    procedure ParseInformacaoComplementarFrete(const ATexto: string; var AFrete: TDuimpFreteInfo);

    function GetJsonArrayFromRoot(ARoot: ISuperObject): TSuperArray;
    function OnlyDigits(const AValue: string): string;
    function NormalizarCpfCnpjRaiz(const AValue: string): string;
    function ExtrairCpfCnpjRaizDoJsonGeral(ARoot: ISuperObject): string;
    function IsoDateOnly(const AValue: string): string;
    function MapTpViaTransp(const AValue: string): Integer;
    function MapTpIntermedio(const AValue: string): Integer;

    procedure LimparDuimpDIInfo(var ADI: TDuimpDIInfo);
    procedure ParseDuimpDIInfo(ARootDuimp: ISuperObject; AArrItens: TSuperArray; const ANumeroDuimp: string; var ADI: TDuimpDIInfo);
    procedure ParseDuimpDIAdicao(AObjItem: ISuperObject; const ASeqPadrao: Integer; var AAdicao: TDuimpDIAdicaoInfo);
    procedure ExibirDuimpDIInfoNoMemo(const ADI: TDuimpDIInfo);

    procedure LimparDuimpFreteInfo(var AFrete: TDuimpFreteInfo);
    procedure LimparDuimpFreteItemInfo(var AItem: TDuimpFreteItemInfo);
    procedure ParseDuimpFreteInfo(ARootDuimp: ISuperObject; ARootValores: ISuperObject; const ANumeroDuimp: string; const AVersaoDuimp: Integer; var AFrete: TDuimpFreteInfo);
    procedure ParseDuimpFreteItem(AObjItem: ISuperObject; const ASeqPadrao: Integer; var AItem: TDuimpFreteItemInfo);
    procedure ComplementarDuimpFreteItemValores(ARootItemValores: ISuperObject; var AItem: TDuimpFreteItemInfo);
    procedure ExibirDuimpFreteInfoNoMemo(const AFrete: TDuimpFreteInfo);
    procedure DumpJsonObjectPaths(AObj: ISuperObject; const APrefixo: string; ALines: TStrings);
    procedure ExibirDiagnosticoFreteJson(ARootDuimp: ISuperObject; AArrItens: TSuperArray);

    function IsErroDuimpValoresCalculadosRestrito(const AMsg: string): Boolean;

    function TryConsultarDuimpValoresCalculados(
      const ANumeroDuimp: string;
      const AVersaoDuimp: Integer;
      var ARetorno: string;
      var AStatus: string
    ): Boolean;




    procedure LimparDuimpItemProdutoInfo(var AInfo: TDuimpItemProdutoInfo);
    procedure ParseDuimpItemProduto(AObjItem: ISuperObject; const ACpfCnpjRaizPadrao: string; var AInfo: TDuimpItemProdutoInfo);
    procedure PreencherProdutoCatp(AObjProduto: ISuperObject; var AInfo: TDuimpItemProdutoInfo);
    procedure ConsultarProdutoCatpDoItem(var AInfo: TDuimpItemProdutoInfo);
    procedure ExibirItemProdutoNoMemo(const AInfo: TDuimpItemProdutoInfo);
  public
    function DuimpItemProdutoCount: Integer;
    function DuimpItemProdutoByIndex(const AIndex: Integer): TDuimpItemProdutoInfo;
    function DuimpDIInfo: TDuimpDIInfo;
    function DuimpFreteInfo: TDuimpFreteInfo;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FClient := nil;
  SetLength(FDuimpItensProdutos, 0);
  LimparDuimpDIInfo(FDuimpDIInfo);
  LimparDuimpFreteInfo(FDuimpFreteInfo);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(FClient) then
    FreeAndNil(FClient);

  SetLength(FDuimpItensProdutos, 0);
  SetLength(FDuimpDIInfo.Adicoes, 0);
  SetLength(FDuimpFreteInfo.Itens, 0);
end;

procedure TForm1.GarantirAutenticado;
begin
  if not Assigned(FClient) then
    raise Exception.Create('Cliente n√£o autenticado. Clique primeiro em Autenticar.');
end;

function TForm1.GetNumeroDuimp: string;
begin
  Result := Trim(EditNumeroDuimp.Text);

  if Result = '' then
    raise Exception.Create('Informe o n√∫mero da DUIMP.');
end;

function TForm1.GetVersaoDuimp: Integer;
begin
  Result := StrToIntDef(Trim(EditVersaoDuimp.Text), 0);

  if Result <= 0 then
    raise Exception.Create('Informe uma vers√£o v√°lida da DUIMP. Exemplo: 1');
end;

procedure TForm1.ExibirRetorno(const ATitulo, ARetorno: string);
begin
  MemoRetorno.Clear;
  MemoRetorno.Lines.Add(ATitulo);
  MemoRetorno.Lines.Add(StringOfChar('-', 80));
  MemoRetorno.Lines.Add(ARetorno);
end;

procedure TForm1.BTNAutenticaClick(Sender: TObject);
begin
  MemoRetorno.Clear;

  try
    if Assigned(FClient) then
      FreeAndNil(FClient);

    FClient := TPortalUnicoClientD7.Create(
      'portalunico.siscomex.gov.br',
      'IMPEXP',
      ''
    );

    FClient.Autenticar;

    MemoRetorno.Lines.Add('Autenticado com sucesso.');
    MemoRetorno.Lines.Add('CSRF expira em: ' + FClient.Session.CsrfExpiration);
    MemoRetorno.Lines.Add('');
    MemoRetorno.Lines.Add('Agora clique em Consultar DUIMP ou Consultar Itens.');
  except
    on E: Exception do
    begin
      if Assigned(FClient) then
        FreeAndNil(FClient);

      MemoRetorno.Lines.Add('Erro ao autenticar:');
      MemoRetorno.Lines.Add(E.Message);

      MessageDlg(
        'Erro ao autenticar no Portal √önico:' + sLineBreak +
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
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  Retorno: string;
begin
  MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := GetNumeroDuimp;
    VersaoDuimp := GetVersaoDuimp;

    MemoRetorno.Lines.Add('Consultando DUIMP...');
    MemoRetorno.Lines.Add('N√∫mero: ' + NumeroDuimp);
    MemoRetorno.Lines.Add('Vers√£o: ' + IntToStr(VersaoDuimp));
    MemoRetorno.Lines.Add('');

    Retorno := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);

    ExibirRetorno(
      'DUIMP CONSULTADA COM SUCESSO' + sLineBreak +
      'N√∫mero: ' + NumeroDuimp + sLineBreak +
      'Vers√£o: ' + IntToStr(VersaoDuimp) + sLineBreak +
      sLineBreak +
      'RETORNO JSON',
      Retorno
    );
  except
    on E: Exception do
    begin
      MemoRetorno.Clear;
      MemoRetorno.Lines.Add('Erro ao consultar DUIMP:');
      MemoRetorno.Lines.Add(E.Message);

      MessageDlg(
        'Erro ao consultar DUIMP:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

function TForm1.JsonStr(AObj: ISuperObject; const APath: string): string;
var
  V: ISuperObject;
begin
  Result := '';

  if not Assigned(AObj) then
    Exit;

  try
    V := AObj.O[APath];

    if Assigned(V) then
      Result := V.AsString;
  except
    Result := '';
  end;
end;

function TForm1.JsonInt(AObj: ISuperObject; const APath: string): Integer;
var
  V: ISuperObject;
begin
  Result := 0;

  if not Assigned(AObj) then
    Exit;

  try
    V := AObj.O[APath];

    if Assigned(V) then
      Result := V.AsInteger;
  except
    Result := 0;
  end;
end;

function TForm1.JsonFloat(AObj: ISuperObject; const APath: string): Double;
var
  V: ISuperObject;
begin
  Result := 0;

  if not Assigned(AObj) then
    Exit;

  try
    V := AObj.O[APath];

    if Assigned(V) then
      Result := V.AsDouble;
  except
    Result := 0;
  end;
end;

function TForm1.JsonStrAny(AObj: ISuperObject; const APaths: array of string): string;
var
  I: Integer;
begin
  Result := '';

  for I := Low(APaths) to High(APaths) do
  begin
    Result := JsonStr(AObj, APaths[I]);

    if Trim(Result) <> '' then
      Exit;
  end;
end;

function TForm1.JsonIntAny(AObj: ISuperObject; const APaths: array of string): Integer;
var
  I: Integer;
begin
  Result := 0;

  for I := Low(APaths) to High(APaths) do
  begin
    Result := JsonInt(AObj, APaths[I]);

    if Result <> 0 then
      Exit;
  end;
end;

function TForm1.JsonFloatAny(AObj: ISuperObject; const APaths: array of string): Double;
var
  I: Integer;
begin
  Result := 0;

  for I := Low(APaths) to High(APaths) do
  begin
    Result := JsonFloat(AObj, APaths[I]);

    if Result <> 0 then
      Exit;
  end;
end;


function TForm1.JsonKeyMatch(const AKey: string; const ATermos: array of string): Boolean;
var
  I: Integer;
  K: string;
begin
  Result := False;
  K := LowerCase(AKey);

  for I := Low(ATermos) to High(ATermos) do
  begin
    if Pos(LowerCase(ATermos[I]), K) > 0 then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

function TForm1.JsonObjectResumo(AObj: ISuperObject): string;
begin
  Result := '';

  if not Assigned(AObj) then
    Exit;

  if AObj.DataType <> stObject then
  begin
    try
      Result := AObj.AsString;
    except
      Result := '';
    end;

    Exit;
  end;

  Result := JsonStrAny(AObj, ['codigo', 'sigla', 'nome', 'descricao']);

  if Result = '' then
    Result := AObj.AsString;
end;

function TForm1.JsonFindStrByKey(
  AObj: ISuperObject;
  const ATermos: array of string
): string;
var
  Iter: TSuperObjectIter;
  Valor: ISuperObject;
  I: Integer;
begin
  Result := '';

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

              if Assigned(Valor) then
              begin
                if JsonKeyMatch(Iter.key, ATermos) then
                begin
                  Result := JsonObjectResumo(Valor);

                  if Trim(Result) <> '' then
                    Exit;
                end;

                if Valor.DataType in [stObject, stArray] then
                begin
                  Result := JsonFindStrByKey(Valor, ATermos);

                  if Trim(Result) <> '' then
                    Exit;
                end;
              end;
            until not ObjectFindNext(Iter);
          finally
            ObjectFindClose(Iter);
          end;
        end;
      end;

    stArray:
      begin
        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          if Assigned(AObj.AsArray.O[I]) then
          begin
            Result := JsonFindStrByKey(AObj.AsArray.O[I], ATermos);

            if Trim(Result) <> '' then
              Exit;
          end;
        end;
      end;
  end;
end;

function TForm1.JsonFindFloatByKey(
  AObj: ISuperObject;
  const ATermos: array of string
): Double;
var
  Iter: TSuperObjectIter;
  Valor: ISuperObject;
  I: Integer;
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

              if Assigned(Valor) then
              begin
                if JsonKeyMatch(Iter.key, ATermos) then
                begin
                  try
                    Result := Valor.AsDouble;
                  except
                    Result := 0;
                  end;

                  if Result <> 0 then
                    Exit;
                end;

                if Valor.DataType in [stObject, stArray] then
                begin
                  Result := JsonFindFloatByKey(Valor, ATermos);

                  if Result <> 0 then
                    Exit;
                end;
              end;
            until not ObjectFindNext(Iter);
          finally
            ObjectFindClose(Iter);
          end;
        end;
      end;

    stArray:
      begin
        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          if Assigned(AObj.AsArray.O[I]) then
          begin
            Result := JsonFindFloatByKey(AObj.AsArray.O[I], ATermos);

            if Result <> 0 then
              Exit;
          end;
        end;
      end;
  end;
end;

procedure TForm1.AplicarFallbackFretePorBuscaRecursiva(
  ARootDuimp: ISuperObject;
  var AFrete: TDuimpFreteInfo
);
begin
  { Fallback propositalmente conservador.
    Nao usar busca recursiva ampla para campos como localEmbarque, pesoBruto
    ou recinto, pois a API pode conter chaves parecidas com outro significado,
    por exemplo tributos.mercadoria.valorTotalLocalEmbarqueUSD. }

  if not Assigned(ARootDuimp) then
    Exit;

  if AFrete.ControleCarga = '' then
    AFrete.ControleCarga := JsonStr(ARootDuimp, 'situacao.controleCarga');

  if AFrete.SituacaoCarga = '' then
    AFrete.SituacaoCarga := JsonStr(ARootDuimp, 'situacao.situacaoDuimp');

  if AFrete.PaisProcedencia = '' then
    AFrete.PaisProcedencia := JsonStr(ARootDuimp, 'carga.paisProcedencia.codigo');

  if AFrete.TipoIdentificacaoCarga = '' then
    AFrete.TipoIdentificacaoCarga := JsonStr(ARootDuimp, 'carga.tipoIdentificacaoCarga');

  if AFrete.IdentificacaoCarga = '' then
    AFrete.IdentificacaoCarga := JsonStr(ARootDuimp, 'carga.identificacao');

  if AFrete.LocalDesembaraco = '' then
    AFrete.LocalDesembaraco := JsonStr(ARootDuimp, 'carga.unidadeDeclarada.codigo');

  if AFrete.URFDespacho = '' then
    AFrete.URFDespacho := JsonStr(ARootDuimp, 'carga.unidadeDeclarada.codigo');

  if AFrete.CodigoMoedaFrete = '' then
    AFrete.CodigoMoedaFrete := JsonStr(ARootDuimp, 'carga.frete.codigoMoedaNegociada');

  if AFrete.ValorFreteMoeda = 0 then
    AFrete.ValorFreteMoeda := JsonFloat(ARootDuimp, 'carga.frete.valorMoedaNegociada');

  if AFrete.CodigoMoedaSeguro = '' then
    AFrete.CodigoMoedaSeguro := JsonStr(ARootDuimp, 'carga.seguro.codigoMoedaNegociada');

  if AFrete.ValorSeguroMoeda = 0 then
    AFrete.ValorSeguroMoeda := JsonFloat(ARootDuimp, 'carga.seguro.valorMoedaNegociada');

  if (AFrete.UnidadePeso = '') and ((AFrete.PesoLiquido <> 0) or (AFrete.PesoBruto <> 0)) then
    AFrete.UnidadePeso := 'KG';
end;

function TForm1.ExtractInfoComplementarValue(
  const ATexto, ALabel: string
): string;
var
  SL: TStringList;
  I, P: Integer;
  Linha, LabelUpper: string;
begin
  Result := '';
  LabelUpper := UpperCase(ALabel);

  SL := TStringList.Create;
  try
    SL.Text := StringReplace(ATexto, #13#10, #10, [rfReplaceAll]);

    for I := 0 to SL.Count - 1 do
    begin
      Linha := Trim(SL[I]);

      if Pos(LabelUpper, UpperCase(Linha)) = 1 then
      begin
        P := Pos(':', Linha);

        if P > 0 then
          Result := Trim(Copy(Linha, P + 1, MaxInt))
        else
        begin
          P := Pos('...', Linha);
          if P > 0 then
            Result := Trim(Copy(Linha, P + 3, MaxInt));
        end;

        Exit;
      end;
    end;
  finally
    SL.Free;
  end;
end;

procedure TForm1.ParseInformacaoComplementarFrete(
  const ATexto: string;
  var AFrete: TDuimpFreteInfo
);
var
  Qtd: string;
begin
  if Trim(ATexto) = '' then
    Exit;

  AFrete.ConhecimentoCarga := ExtractInfoComplementarValue(ATexto, 'CONHECIMENTO DE CARGA');
  Qtd := ExtractInfoComplementarValue(ATexto, 'QUANTIDADE');
  AFrete.MarcaVolume := ExtractInfoComplementarValue(ATexto, 'MARCA DO VOLUME');
  AFrete.NomeVeiculo := ExtractInfoComplementarValue(ATexto, 'NOME DO VEICULO');
  AFrete.DataEntradaVeiculo := ExtractInfoComplementarValue(ATexto, 'DATA DA ENTRADA VEICULO');
  AFrete.PresencaCarga := OnlyDigits(ExtractInfoComplementarValue(ATexto, 'PRESENCA DE CARGA'));

  if Qtd <> '' then
  begin
    AFrete.QuantidadeVolumes := Trim(Copy(Qtd, 1, Pos(' ', Qtd + ' ') - 1));
    AFrete.TipoVolumes := Trim(Copy(Qtd, Length(AFrete.QuantidadeVolumes) + 1, MaxInt));
  end;
end;

function TForm1.GetJsonArrayFromRoot(ARoot: ISuperObject): TSuperArray;
begin
  Result := nil;

  if not Assigned(ARoot) then
    Exit;

  if ARoot.DataType = stArray then
  begin
    Result := ARoot.AsArray;
    Exit;
  end;

  if Assigned(ARoot.O['itens']) then
    Result := ARoot.O['itens'].AsArray
  else if Assigned(ARoot.O['listaItens']) then
    Result := ARoot.O['listaItens'].AsArray
  else if Assigned(ARoot.O['content']) then
    Result := ARoot.O['content'].AsArray
  else if Assigned(ARoot.O['resultado']) then
    Result := ARoot.O['resultado'].AsArray
  else if Assigned(ARoot.O['data']) then
    Result := ARoot.O['data'].AsArray;
end;

function TForm1.OnlyDigits(const AValue: string): string;
var
  I: Integer;
  C: Char;
begin
  Result := '';

  for I := 1 to Length(AValue) do
  begin
    C := AValue[I];

    if C in ['0'..'9'] then
      Result := Result + C;
  end;
end;

function TForm1.NormalizarCpfCnpjRaiz(const AValue: string): string;
var
  S: string;
begin
  S := OnlyDigits(AValue);

  Result := '';

  if Length(S) >= 14 then
    Result := Copy(S, 1, 8)
  else if Length(S) = 11 then
    Result := S
  else if Length(S) = 8 then
    Result := S;
end;

function TForm1.ExtrairCpfCnpjRaizDoJsonGeral(ARoot: ISuperObject): string;
begin
  Result := NormalizarCpfCnpjRaiz(
    JsonStrAny(
      ARoot,
      [
        'importador.ni',
        'importador.numeroIdentificacao',
        'importador.cpfCnpj',
        'importador.cpfCnpjRaiz',
        'identificacao.importador.ni',
        'identificacao.importador.cpfCnpj',
        'dadosImportador.ni',
        'dadosImportador.cpfCnpj',
        'declarante.importador.ni',
        'declarante.importador.cpfCnpj'
      ]
    )
  );
end;


function TForm1.IsoDateOnly(const AValue: string): string;
var
  S: string;
  P: Integer;
begin
  Result := '';
  S := Trim(AValue);

  if S = '' then
    Exit;

  P := Pos('T', S);
  if P > 0 then
    S := Copy(S, 1, P - 1);

  if Length(S) >= 10 then
    Result := Copy(S, 1, 10)
  else
    Result := S;
end;

function TForm1.MapTpViaTransp(const AValue: string): Integer;
var
  S: string;
begin
  S := UpperCase(Trim(AValue));
  Result := StrToIntDef(S, 0);

  if Result > 0 then
    Exit;

  S := StringReplace(S, '¡', 'A', [rfReplaceAll]);
  S := StringReplace(S, '…', 'E', [rfReplaceAll]);
  S := StringReplace(S, 'Õ', 'I', [rfReplaceAll]);
  S := StringReplace(S, '”', 'O', [rfReplaceAll]);
  S := StringReplace(S, '⁄', 'U', [rfReplaceAll]);
  S := StringReplace(S, '√', 'A', [rfReplaceAll]);
  S := StringReplace(S, '«', 'C', [rfReplaceAll]);

  if Pos('MARIT', S) > 0 then Result := 1
  else if Pos('FLUVIAL', S) > 0 then Result := 2
  else if Pos('LACUSTRE', S) > 0 then Result := 3
  else if Pos('AERE', S) > 0 then Result := 4
  else if Pos('POSTAL', S) > 0 then Result := 5
  else if Pos('FERRO', S) > 0 then Result := 6
  else if Pos('RODOV', S) > 0 then Result := 7
  else if Pos('CONDUTO', S) > 0 then Result := 8
  else if Pos('PROPRIO', S) > 0 then Result := 9
  else if Pos('FICTA', S) > 0 then Result := 10
  else if Pos('COURIER', S) > 0 then Result := 11
  else if Pos('MAOS', S) > 0 then Result := 12
  else if Pos('REBOQUE', S) > 0 then Result := 13;
end;

function TForm1.MapTpIntermedio(const AValue: string): Integer;
var
  S: string;
begin
  S := UpperCase(Trim(AValue));
  Result := StrToIntDef(S, 0);

  if Result > 0 then
    Exit;

  S := StringReplace(S, '¡', 'A', [rfReplaceAll]);
  S := StringReplace(S, '…', 'E', [rfReplaceAll]);
  S := StringReplace(S, 'Õ', 'I', [rfReplaceAll]);
  S := StringReplace(S, '”', 'O', [rfReplaceAll]);
  S := StringReplace(S, '⁄', 'U', [rfReplaceAll]);
  S := StringReplace(S, '√', 'A', [rfReplaceAll]);
  S := StringReplace(S, '«', 'C', [rfReplaceAll]);

  if (Pos('CONTA_PROPRIA', S) > 0) or
     (Pos('CONTA PROPRIA', S) > 0) or
     (Pos('PROPRIA', S) > 0) then
    Result := 1
  else if (Pos('CONTA_E_ORDEM', S) > 0) or
          (Pos('CONTA E ORDEM', S) > 0) or
          (Pos('ORDEM', S) > 0) then
    Result := 2
  else if Pos('ENCOMENDA', S) > 0 then
    Result := 3;
end;

procedure TForm1.LimparDuimpDIInfo(var ADI: TDuimpDIInfo);
begin
  ADI.nDI := '';
  ADI.dDI := '';
  ADI.xLocDesemb := '';
  ADI.UFDesemb := '';
  ADI.dDesemb := '';
  ADI.tpViaTransp := 0;
  ADI.tpIntermedio := 0;
  ADI.CNPJ := '';
  ADI.UFTerceiro := '';
  ADI.Status := '';
  SetLength(ADI.Adicoes, 0);
end;

procedure TForm1.ParseDuimpDIAdicao(
  AObjItem: ISuperObject;
  const ASeqPadrao: Integer;
  var AAdicao: TDuimpDIAdicaoInfo
);
begin
  AAdicao.nAdicao := '';
  AAdicao.nSeqAdic := '';
  AAdicao.cExportador := '';
  AAdicao.cFabricante := '';
  AAdicao.NumeroItemDuimp := 0;
  AAdicao.Ncm := '';
  AAdicao.CodigoProduto := '';

  if not Assigned(AObjItem) then
    Exit;

  AAdicao.NumeroItemDuimp := JsonIntAny(
    AObjItem,
    [
      'numeroItem',
      'identificacao.numeroItem',
      'item.numero',
      'item.numeroItem'
    ]
  );

  AAdicao.Ncm := JsonStrAny(
    AObjItem,
    [
      'produto.ncm',
      'produto.codigoNcm',
      'mercadoria.ncm',
      'dadosMercadoria.ncm',
      'classificacaoFiscal.ncm',
      'ncm'
    ]
  );

  AAdicao.CodigoProduto := JsonStrAny(
    AObjItem,
    [
      'produto.codigo',
      'produto.codigoProduto',
      'produto.codigoCatalogo',
      'produto.codigoProdutoCatalogo',
      'mercadoria.codigoProduto',
      'dadosMercadoria.codigoProduto',
      'codigoProduto'
    ]
  );

  AAdicao.nAdicao := JsonStrAny(
    AObjItem,
    [
      'adicao.numero',
      'adicao.nAdicao',
      'dadosAdicao.numero',
      'dadosAdicao.nAdicao',
      'numeroAdicao',
      'nAdicao'
    ]
  );

  if AAdicao.nAdicao = '' then
  begin
    if ASeqPadrao > 0 then
      AAdicao.nAdicao := IntToStr(ASeqPadrao)
    else if AAdicao.NumeroItemDuimp > 0 then
      AAdicao.nAdicao := IntToStr(AAdicao.NumeroItemDuimp)
    else
      AAdicao.nAdicao := '1';
  end;

  AAdicao.nSeqAdic := JsonStrAny(
    AObjItem,
    [
      'adicao.numeroSequencial',
      'adicao.nSeqAdic',
      'dadosAdicao.numeroSequencial',
      'dadosAdicao.nSeqAdic',
      'numeroSequencialAdicao',
      'nSeqAdic'
    ]
  );

  if AAdicao.nSeqAdic = '' then
  begin
    if AAdicao.NumeroItemDuimp > 0 then
      AAdicao.nSeqAdic := IntToStr(AAdicao.NumeroItemDuimp)
    else
      AAdicao.nSeqAdic := IntToStr(ASeqPadrao);
  end;

  AAdicao.cExportador := JsonStrAny(
    AObjItem,
    [
      'exportador.codigo',
      'exportador.codigoInterno',
      'exportador.tin',
      'exportador.niOperador',
      'dadosExportador.codigo',
      'dadosExportador.codigoInterno',
      'cExportador'
    ]
  );

  AAdicao.cFabricante := JsonStrAny(
    AObjItem,
    [
      'fabricante.codigo',
      'fabricante.codigoInterno',
      'fabricante.tin',
      'fabricante.niOperador',
      'fabricante.produtor.codigo',
      'dadosFabricante.codigo',
      'dadosFabricante.codigoInterno',
      'cFabricante'
    ]
  );
end;

procedure TForm1.ParseDuimpDIInfo(
  ARootDuimp: ISuperObject;
  AArrItens: TSuperArray;
  const ANumeroDuimp: string;
  var ADI: TDuimpDIInfo
);
var
  I: Integer;
  S: string;
begin
  LimparDuimpDIInfo(ADI);

  ADI.nDI := Trim(ANumeroDuimp);

  if Assigned(ARootDuimp) then
  begin
    S := JsonStrAny(
      ARootDuimp,
      [
        'identificacao.numero',
        'numero',
        'numeroDuimp'
      ]
    );

    if Trim(S) <> '' then
      ADI.nDI := Trim(S);

    ADI.dDI := IsoDateOnly(
      JsonStrAny(
        ARootDuimp,
        [
          'identificacao.dataRegistro',
          'dataRegistro',
          'registro.dataRegistro',
          'dadosGerais.dataRegistro',
          'situacao.dataRegistro',
          'historicoRegistro.dataRegistro'
        ]
      )
    );

    ADI.xLocDesemb := JsonStrAny(
      ARootDuimp,
      [
        'desembaraco.local',
        'desembaraco.localDesembaraco',
        'desembaraco.xLocDesemb',
        'localDesembaraco',
        'xLocDesemb',
        'localizacao.local',
        'localizacao.recinto',
        'localizacao.recinto.nome',
        'recinto.nome',
        'unidadeDespacho.nome',
        'urfDespacho.nome'
      ]
    );

    ADI.UFDesemb := JsonStrAny(
      ARootDuimp,
      [
        'desembaraco.uf',
        'desembaraco.UFDesemb',
        'ufDesembaraco',
        'UFDesemb',
        'localizacao.uf',
        'recinto.uf',
        'unidadeDespacho.uf',
        'urfDespacho.uf'
      ]
    );

    ADI.dDesemb := IsoDateOnly(
      JsonStrAny(
        ARootDuimp,
        [
          'desembaraco.data',
          'desembaraco.dataDesembaraco',
          'desembaraco.dDesemb',
          'dataDesembaraco',
          'dDesemb',
          'situacao.dataDesembaraco',
          'historicoDesembaraco.dataEvento'
        ]
      )
    );

    ADI.tpViaTransp := MapTpViaTransp(
      JsonStrAny(
        ARootDuimp,
        [
          'carga.viaTransporte.codigo',
          'carga.viaTransporte',
          'viaTransporte.codigo',
          'viaTransporte',
          'transporte.viaTransporte',
          'tpViaTransp'
        ]
      )
    );

    ADI.tpIntermedio := MapTpIntermedio(
      JsonStrAny(
        ARootDuimp,
        [
          'identificacao.tipoImportador',
          'tipoImportador',
          'importador.tipoImportador',
          'caracterizacaoImportacao.tipoImportador',
          'caracterizacaoImportacao.formaImportacao',
          'formaImportacao',
          'tpIntermedio'
        ]
      )
    );

    ADI.CNPJ := OnlyDigits(
      JsonStrAny(
        ARootDuimp,
        [
          'adquirente.cnpj',
          'adquirente.ni',
          'encomendante.cnpj',
          'encomendante.ni',
          'terceiro.cnpj',
          'terceiro.ni',
          'CNPJ'
        ]
      )
    );

    ADI.UFTerceiro := JsonStrAny(
      ARootDuimp,
      [
        'adquirente.uf',
        'encomendante.uf',
        'terceiro.uf',
        'UFTerceiro'
      ]
    );
  end;

  if Assigned(AArrItens) then
  begin
    SetLength(ADI.Adicoes, AArrItens.Length);

    for I := 0 to AArrItens.Length - 1 do
      ParseDuimpDIAdicao(AArrItens.O[I], I + 1, ADI.Adicoes[I]);
  end;

  ADI.Status := 'Dados montados a partir dos dados gerais e itens da DUIMP.';

  if ADI.dDI = '' then
    ADI.Status := ADI.Status + ' AtenÁ„o: dDI n„o encontrado no JSON retornado.';

  if ADI.dDesemb = '' then
    ADI.Status := ADI.Status + ' AtenÁ„o: dDesemb n„o encontrado no JSON retornado.';

  if ADI.xLocDesemb = '' then
    ADI.Status := ADI.Status + ' AtenÁ„o: xLocDesemb n„o encontrado no JSON retornado.';

  if ADI.UFDesemb = '' then
    ADI.Status := ADI.Status + ' AtenÁ„o: UFDesemb n„o encontrado no JSON retornado.';

  if ADI.tpViaTransp = 0 then
    ADI.Status := ADI.Status + ' AtenÁ„o: tpViaTransp n„o encontrado/mapeado.';

  if ADI.tpIntermedio = 0 then
    ADI.Status := ADI.Status + ' AtenÁ„o: tpIntermedio n„o encontrado/mapeado.';
end;

procedure TForm1.ExibirDuimpDIInfoNoMemo(const ADI: TDuimpDIInfo);
var
  I: Integer;
begin
  MemoRetorno.Clear;
  MemoRetorno.Lines.Add('DADOS PARA GRUPO DI / NF-e');
  MemoRetorno.Lines.Add(StringOfChar('-', 80));
  MemoRetorno.Lines.Add('nDI............: ' + ADI.nDI);
  MemoRetorno.Lines.Add('dDI............: ' + ADI.dDI);
  MemoRetorno.Lines.Add('xLocDesemb.....: ' + ADI.xLocDesemb);
  MemoRetorno.Lines.Add('UFDesemb.......: ' + ADI.UFDesemb);
  MemoRetorno.Lines.Add('dDesemb........: ' + ADI.dDesemb);
  MemoRetorno.Lines.Add('tpViaTransp....: ' + IntToStr(ADI.tpViaTransp));
  MemoRetorno.Lines.Add('tpIntermedio...: ' + IntToStr(ADI.tpIntermedio));
  MemoRetorno.Lines.Add('CNPJ...........: ' + ADI.CNPJ);
  MemoRetorno.Lines.Add('UFTerceiro.....: ' + ADI.UFTerceiro);
  MemoRetorno.Lines.Add('Status.........: ' + ADI.Status);
  MemoRetorno.Lines.Add('');

  MemoRetorno.Lines.Add('ADI«’ES / ITENS');
  MemoRetorno.Lines.Add(StringOfChar('-', 80));

  if Length(ADI.Adicoes) = 0 then
    MemoRetorno.Lines.Add('Nenhuma adiÁ„o/item localizado.');

  for I := 0 to High(ADI.Adicoes) do
  begin
    MemoRetorno.Lines.Add('Õndice..........: ' + IntToStr(I + 1));
    MemoRetorno.Lines.Add('Item DUIMP......: ' + IntToStr(ADI.Adicoes[I].NumeroItemDuimp));
    MemoRetorno.Lines.Add('nAdicao........: ' + ADI.Adicoes[I].nAdicao);
    MemoRetorno.Lines.Add('nSeqAdic.......: ' + ADI.Adicoes[I].nSeqAdic);
    MemoRetorno.Lines.Add('cExportador....: ' + ADI.Adicoes[I].cExportador);
    MemoRetorno.Lines.Add('cFabricante....: ' + ADI.Adicoes[I].cFabricante);
    MemoRetorno.Lines.Add('NCM............: ' + ADI.Adicoes[I].Ncm);
    MemoRetorno.Lines.Add('Cod. Produto...: ' + ADI.Adicoes[I].CodigoProduto);
    MemoRetorno.Lines.Add('');
  end;
end;


procedure TForm1.LimparDuimpFreteItemInfo(var AItem: TDuimpFreteItemInfo);
begin
  AItem.NumeroItemDuimp := 0;
  AItem.Ncm := '';
  AItem.CodigoProduto := '';
  AItem.PesoLiquido := 0;
  AItem.PesoBruto := 0;
  AItem.ValorFreteMoeda := 0;
  AItem.ValorFreteBRL := 0;
  AItem.ValorSeguroMoeda := 0;
  AItem.ValorSeguroBRL := 0;
  AItem.ValorAduaneiroBRL := 0;
  AItem.Status := '';
end;

procedure TForm1.LimparDuimpFreteInfo(var AFrete: TDuimpFreteInfo);
begin
  AFrete.NumeroDuimp := '';
  AFrete.VersaoDuimp := 0;
  AFrete.TipoIdentificacaoCarga := '';
  AFrete.IdentificacaoCarga := '';
  AFrete.ControleCarga := '';
  AFrete.SituacaoCarga := '';
  AFrete.ViaTransporteCodigo := 0;
  AFrete.ViaTransporteDescricao := '';
  AFrete.PaisProcedencia := '';
  AFrete.PaisEmbarque := '';
  AFrete.LocalEmbarque := '';
  AFrete.LocalDesembaraco := '';
  AFrete.UFDesembaraco := '';
  AFrete.URFDespacho := '';
  AFrete.RecintoAduaneiro := '';
  AFrete.PesoBruto := 0;
  AFrete.PesoLiquido := 0;
  AFrete.UnidadePeso := '';
  AFrete.CodigoMoedaFrete := '';
  AFrete.ValorFreteMoeda := 0;
  AFrete.ValorFreteBRL := 0;
  AFrete.CodigoMoedaSeguro := '';
  AFrete.ValorSeguroMoeda := 0;
  AFrete.ValorSeguroBRL := 0;
  AFrete.ValorAduaneiroBRL := 0;
  AFrete.Status := '';
  SetLength(AFrete.Itens, 0);
end;

procedure TForm1.ParseDuimpFreteItem(
  AObjItem: ISuperObject;
  const ASeqPadrao: Integer;
  var AItem: TDuimpFreteItemInfo
);
begin
  LimparDuimpFreteItemInfo(AItem);

  if not Assigned(AObjItem) then
    Exit;

  AItem.NumeroItemDuimp := JsonIntAny(
    AObjItem,
    [
      'numeroItem',
      'identificacao.numeroItem',
      'item.numero',
      'item.numeroItem'
    ]
  );

  if AItem.NumeroItemDuimp <= 0 then
    AItem.NumeroItemDuimp := ASeqPadrao;

  AItem.Ncm := JsonStrAny(
    AObjItem,
    [
      'produto.ncm',
      'produto.codigoNcm',
      'mercadoria.ncm',
      'dadosMercadoria.ncm',
      'classificacaoFiscal.ncm',
      'ncm'
    ]
  );

  AItem.CodigoProduto := JsonStrAny(
    AObjItem,
    [
      'produto.codigo',
      'produto.codigoProduto',
      'produto.codigoCatalogo',
      'produto.codigoProdutoCatalogo',
      'mercadoria.codigoProduto',
      'dadosMercadoria.codigoProduto',
      'codigoProduto'
    ]
  );

  AItem.PesoLiquido := JsonFloatAny(
    AObjItem,
    [
      'mercadoria.pesoLiquido',
      'dadosMercadoria.pesoLiquido',
      'produto.pesoLiquido',
      'pesoLiquido'
    ]
  );

  AItem.PesoBruto := JsonFloatAny(
    AObjItem,
    [
      'mercadoria.pesoBruto',
      'dadosMercadoria.pesoBruto',
      'produto.pesoBruto',
      'pesoBruto'
    ]
  );

  AItem.ValorFreteMoeda := JsonFloatAny(
    AObjItem,
    [
      'condicaoVenda.frete.valorMoedaNegociada',
      'condicaoVenda.frete.valor',
      'condicaoVenda.valorFrete',
      'frete.valorMoedaNegociada',
      'frete.valor'
    ]
  );

  AItem.ValorSeguroMoeda := JsonFloatAny(
    AObjItem,
    [
      'condicaoVenda.seguro.valorMoedaNegociada',
      'condicaoVenda.seguro.valor',
      'condicaoVenda.valorSeguro',
      'seguro.valorMoedaNegociada',
      'seguro.valor'
    ]
  );

  { Estes valores ja aparecem no retorno do item da DUIMP registrada.
    Nao dependem do endpoint de valores-calculados, que pode retornar 422. }
  AItem.ValorFreteBRL := JsonFloatAny(
    AObjItem,
    [
      'condicaoVenda.frete.valorBRL',
      'condicaoVenda.frete.valorTotalBRL',
      'frete.valorBRL',
      'frete.valorTotalBRL'
    ]
  );

  AItem.ValorSeguroBRL := JsonFloatAny(
    AObjItem,
    [
      'condicaoVenda.seguro.valorBRL',
      'condicaoVenda.seguro.valorTotalBRL',
      'seguro.valorBRL',
      'seguro.valorTotalBRL'
    ]
  );

  AItem.ValorAduaneiroBRL := JsonFloatAny(
    AObjItem,
    [
      'tributos.mercadoria.valorAduaneiroBRL',
      'mercadoria.valorAduaneiroBRL',
      'valorAduaneiroBRL'
    ]
  );

  AItem.Status := 'Item montado a partir do retorno de itens da DUIMP.';
end;

procedure TForm1.ComplementarDuimpFreteItemValores(
  ARootItemValores: ISuperObject;
  var AItem: TDuimpFreteItemInfo
);
begin
  if not Assigned(ARootItemValores) then
    Exit;

  AItem.ValorFreteBRL := JsonFloatAny(
    ARootItemValores,
    [
      'condicaoVenda.frete.valorTotalBRL',
      'condicaoVenda.frete.valorBRL',
      'frete.valorTotalBRL',
      'frete.valorBRL',
      'valoresCalculados.frete.valorTotalBRL'
    ]
  );

  AItem.ValorSeguroBRL := JsonFloatAny(
    ARootItemValores,
    [
      'condicaoVenda.seguro.valorTotalBRL',
      'condicaoVenda.seguro.valorBRL',
      'seguro.valorTotalBRL',
      'seguro.valorBRL',
      'valoresCalculados.seguro.valorTotalBRL'
    ]
  );

  AItem.ValorAduaneiroBRL := JsonFloatAny(
    ARootItemValores,
    [
      'valorAduaneiro.valorTotalBRL',
      'valorAduaneiro.valorBRL',
      'mercadoria.valorAduaneiroBRL',
      'mercadoria.valorAduaneiro.valorTotalBRL',
      'valoresCalculados.valorAduaneiro.valorTotalBRL'
    ]
  );

  if AItem.Status <> '' then
    AItem.Status := AItem.Status + ' Valores calculados do item consultados.'
  else
    AItem.Status := 'Valores calculados do item consultados.';
end;

procedure TForm1.ParseDuimpFreteInfo(
  ARootDuimp: ISuperObject;
  ARootValores: ISuperObject;
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer;
  var AFrete: TDuimpFreteInfo
);
var
  S: string;
begin
  LimparDuimpFreteInfo(AFrete);

  AFrete.NumeroDuimp := ANumeroDuimp;
  AFrete.VersaoDuimp := AVersaoDuimp;

  if not Assigned(ARootDuimp) then
  begin
    AFrete.Status := 'JSON de dados gerais da DUIMP nao informado.';
    Exit;
  end;

  AFrete.TipoIdentificacaoCarga := JsonStrAny(
    ARootDuimp,
    [
      'carga.tipoIdentificacaoCarga',
      'carga.tipo',
      'tipoIdentificacaoCarga'
    ]
  );

  AFrete.IdentificacaoCarga := JsonStrAny(
    ARootDuimp,
    [
      'carga.identificacao',
      'carga.identificacaoCarga',
      'carga.numero',
      'carga.ceMercante',
      'carga.ruc',
      'identificacaoCarga'
    ]
  );

  AFrete.ControleCarga := JsonStrAny(
    ARootDuimp,
    [
      'situacao.controleCarga',
      'carga.controleCarga',
      'carga.controle',
      'controleCarga',
      'carga.situacaoControleCarga'
    ]
  );

  AFrete.SituacaoCarga := JsonStrAny(
    ARootDuimp,
    [
      'situacao.situacaoDuimp',
      'carga.situacao',
      'carga.situacaoCarga',
      'situacaoCarga'
    ]
  );

  S := JsonStrAny(
    ARootDuimp,
    [
      'carga.viaTransporte.codigo',
      'carga.viaTransporte.descricao',
      'carga.viaTransporte',
      'dadosCarga.viaTransporte.codigo',
      'dadosCarga.viaTransporte.descricao',
      'dadosCarga.viaTransporte',
      'transporte.viaTransporte.codigo',
      'transporte.viaTransporte.descricao',
      'transporte.viaTransporte',
      'dadosTransporte.viaTransporte.codigo',
      'dadosTransporte.viaTransporte.descricao',
      'dadosTransporte.viaTransporte',
      'viaTransporte.codigo',
      'viaTransporte.descricao',
      'viaTransporte',
      'tpViaTransp'
    ]
  );

  AFrete.ViaTransporteCodigo := MapTpViaTransp(S);
  AFrete.ViaTransporteDescricao := S;

  if AFrete.ViaTransporteDescricao = '' then
    AFrete.ViaTransporteDescricao := JsonStrAny(
      ARootDuimp,
      [
        'carga.viaTransporte.nome',
        'dadosCarga.viaTransporte.nome',
        'transporte.viaTransporte.nome',
        'viaTransporte.nome'
      ]
    );

  { Fallback seguro para carga marÌtima: no retorno desta DUIMP registrada,
    a API de dados gerais informa carga.tipoIdentificacaoCarga = CE,
    mas n„o informa viaTransporte. Para NF-e, CE neste contexto È tratado
    como conhecimento de carga marÌtimo. }
  if (AFrete.ViaTransporteCodigo = 0) and
     (SameText(AFrete.TipoIdentificacaoCarga, 'CE')) then
  begin
    AFrete.ViaTransporteCodigo := 1;
    AFrete.ViaTransporteDescricao := 'MARITIMA';
  end;

  AFrete.PaisProcedencia := JsonStrAny(
    ARootDuimp,
    [
      'carga.paisProcedencia.codigo',
      'carga.paisProcedencia.sigla',
      'dadosCarga.paisProcedencia.codigo',
      'dadosCarga.paisProcedencia.sigla',
      'paisProcedencia.codigo',
      'paisProcedencia.sigla',
      'procedencia.pais.codigo',
      'procedencia.pais.sigla',
      'procedencia.codigoPais',
      'carga.paisProcedencia',
      'dadosCarga.paisProcedencia',
      'paisProcedencia',
      'procedencia.pais'
    ]
  );

  AFrete.PaisEmbarque := JsonStrAny(
    ARootDuimp,
    [
      'carga.paisEmbarque.codigo',
      'carga.paisEmbarque.sigla',
      'dadosCarga.paisEmbarque.codigo',
      'dadosCarga.paisEmbarque.sigla',
      'paisEmbarque.codigo',
      'paisEmbarque.sigla',
      'embarque.pais.codigo',
      'embarque.pais.sigla',
      'localEmbarque.pais.codigo',
      'localEmbarque.pais.sigla',
      'carga.paisEmbarque',
      'dadosCarga.paisEmbarque',
      'paisEmbarque',
      'embarque.pais',
      'localEmbarque.pais'
    ]
  );

  { Local de embarque fisico nao deve ser lido por busca ampla.
    No JSON real desta DUIMP existe tributos.mercadoria.valorTotalLocalEmbarqueUSD,
    que e VMLE, nao local fisico. Mantem em branco se a API nao trouxer campo explicito. }
  AFrete.LocalEmbarque := '';

  AFrete.LocalDesembaraco := JsonStrAny(
    ARootDuimp,
    [
      'carga.unidadeDeclarada.codigo',
      'despacho.localDesembaraco.nome',
      'despacho.localDesembaraco.descricao',
      'despacho.localDesembaraco',
      'despacho.localDesemb.nome',
      'despacho.localDesemb',
      'desembaraco.local.nome',
      'desembaraco.local.descricao',
      'desembaraco.local',
      'desembaraco.localDesembaraco.nome',
      'desembaraco.localDesembaraco.descricao',
      'desembaraco.localDesembaraco',
      'localizacao.local.nome',
      'localizacao.local.descricao',
      'localizacao.local',
      'localizacao.recinto.nome',
      'localizacao.recinto.descricao',
      'unidadeDespacho.codigo',
      'unidadeDespacho.nome',
      'unidadeDespacho.descricao',
      'unidadeEntradaDescarga.codigo',
      'unidadeEntradaDescarga.nome',
      'unidadeEntradaDescarga.descricao',
      'unidadeDestinoFinalConhecimentoCarga.codigo',
      'unidadeDestinoFinalConhecimentoCarga.nome',
      'unidadeDestinoFinalConhecimentoCarga.descricao',
      'dadosDesembaraco.local.nome',
      'dadosDesembaraco.local.descricao',
      'dadosDesembaraco.local',
      'dadosCarga.localDesembaraco.nome',
      'dadosCarga.localDesembaraco',
      'carga.localDesembaraco.nome',
      'carga.localDesembaraco',
      'recinto.nome',
      'localDesembaraco',
      'xLocDesemb'
    ]
  );

  AFrete.UFDesembaraco := JsonStrAny(
    ARootDuimp,
    [
      'despacho.ufDesembaraco',
      'despacho.ufDesemb',
      'desembaraco.uf',
      'desembaraco.UFDesemb',
      'localizacao.uf',
      'localizacao.recinto.uf',
      'dadosDesembaraco.uf',
      'dadosCarga.ufDesembaraco',
      'carga.ufDesembaraco',
      'recinto.uf',
      'unidadeDespacho.uf',
      'ufDesembaraco',
      'UFDesemb'
    ]
  );

  AFrete.URFDespacho := JsonStrAny(
    ARootDuimp,
    [
      'carga.unidadeDeclarada.codigo',
      'despacho.urfDespacho.codigo',
      'despacho.urfDespacho.nome',
      'despacho.urf.codigo',
      'despacho.urf.nome',
      'localizacao.urfDespacho.codigo',
      'localizacao.urfDespacho.nome',
      'dadosDesembaraco.urf.codigo',
      'dadosDesembaraco.urf.nome',
      'unidadeDespacho.codigo',
      'unidadeDespacho.nome',
      'urfDespacho.codigo',
      'urfDespacho.nome',
      'despacho.urf'
    ]
  );

  AFrete.RecintoAduaneiro := JsonStrAny(
    ARootDuimp,
    [
      'despacho.recintoAduaneiro.codigo',
      'despacho.recintoAduaneiro.nome',
      'despacho.recinto.codigo',
      'despacho.recinto.nome',
      'localizacao.recintoAduaneiro.codigo',
      'localizacao.recintoAduaneiro.nome',
      'localizacao.recinto.codigo',
      'localizacao.recinto.nome',
      'dadosDesembaraco.recinto.codigo',
      'dadosDesembaraco.recinto.nome',
      'recintoAduaneiro.codigo',
      'recintoAduaneiro.nome',
      'recinto.codigo',
      'recinto.nome',
      'despacho.recinto'
    ]
  );

  AFrete.PesoBruto := JsonFloatAny(
    ARootDuimp,
    [
      'carga.pesoBruto',
      'dadosCarga.pesoBruto',
      'carga.pesoBrutoTotal',
      'dadosCarga.pesoBrutoTotal',
      'carga.pesoTotalBruto',
      'dadosCarga.pesoTotalBruto',
      'pesoBruto',
      'pesoBrutoTotal',
      'pesoTotalBruto',
      'resumo.pesoBruto',
      'dadosResumo.pesoBruto',
      'transporte.pesoBruto',
      'mercadoria.pesoBruto'
    ]
  );

  AFrete.PesoLiquido := JsonFloatAny(
    ARootDuimp,
    [
      'carga.pesoLiquido',
      'dadosCarga.pesoLiquido',
      'carga.pesoLiquidoTotal',
      'dadosCarga.pesoLiquidoTotal',
      'carga.pesoTotalLiquido',
      'dadosCarga.pesoTotalLiquido',
      'pesoLiquido',
      'pesoLiquidoTotal',
      'pesoTotalLiquido',
      'resumo.pesoLiquido',
      'dadosResumo.pesoLiquido',
      'transporte.pesoLiquido',
      'mercadoria.pesoLiquido'
    ]
  );

  AFrete.UnidadePeso := JsonStrAny(
    ARootDuimp,
    [
      'carga.unidadePeso.codigo',
      'carga.unidadePeso',
      'dadosCarga.unidadePeso.codigo',
      'dadosCarga.unidadePeso',
      'unidadePeso.codigo',
      'unidadePeso',
      'unidadeMedidaPeso',
      'transporte.unidadePeso.codigo',
      'transporte.unidadePeso'
    ]
  );

  AFrete.CodigoMoedaFrete := JsonStrAny(
    ARootDuimp,
    [
      'frete.codigoMoedaNegociada',
      'frete.moeda',
      'frete.codigoMoeda',
      'carga.frete.codigoMoedaNegociada'
    ]
  );

  AFrete.ValorFreteMoeda := JsonFloatAny(
    ARootDuimp,
    [
      'frete.valorMoedaNegociada',
      'frete.valor',
      'frete.valorTotal',
      'carga.frete.valorMoedaNegociada'
    ]
  );

  AFrete.CodigoMoedaSeguro := JsonStrAny(
    ARootDuimp,
    [
      'seguro.codigoMoedaNegociada',
      'seguro.moeda',
      'seguro.codigoMoeda'
    ]
  );

  AFrete.ValorSeguroMoeda := JsonFloatAny(
    ARootDuimp,
    [
      'seguro.valorMoedaNegociada',
      'seguro.valor',
      'seguro.valorTotal',
      'carga.seguro.valorMoedaNegociada'
    ]
  );

  AFrete.ValorMercadoriaLocalEmbarqueUSD := JsonFloatAny(
    ARootDuimp,
    [
      'tributos.mercadoria.valorTotalLocalEmbarqueUSD',
      'mercadoria.valorTotalLocalEmbarqueUSD'
    ]
  );

  AFrete.ValorMercadoriaLocalEmbarqueBRL := JsonFloatAny(
    ARootDuimp,
    [
      'tributos.mercadoria.valorTotalLocalEmbarqueBRL',
      'mercadoria.valorTotalLocalEmbarqueBRL'
    ]
  );

  ParseInformacaoComplementarFrete(
    JsonStr(ARootDuimp, 'identificacao.informacaoComplementar'),
    AFrete
  );

  if Assigned(ARootValores) then
  begin
    AFrete.ValorFreteBRL := JsonFloatAny(
      ARootValores,
      [
        'frete.valorTotalBRL',
        'frete.valorBRL',
        'valoresCalculados.frete.valorTotalBRL',
        'carga.frete.valorTotalBRL'
      ]
    );

    AFrete.ValorSeguroBRL := JsonFloatAny(
      ARootValores,
      [
        'seguro.valorTotalBRL',
        'seguro.valorBRL',
        'valoresCalculados.seguro.valorTotalBRL',
        'carga.seguro.valorTotalBRL'
      ]
    );

    AFrete.ValorAduaneiroBRL := JsonFloatAny(
      ARootValores,
      [
        'valorAduaneiro.valorTotalBRL',
        'valorAduaneiro.valorBRL',
        'valoresCalculados.valorAduaneiro.valorTotalBRL',
        'mercadoriaLocalEmbarque.valorAduaneiroBRL'
      ]
    );
  end;

  if AFrete.ValorFreteBRL = 0 then
    AFrete.ValorFreteBRL := JsonFloatAny(ARootDuimp, ['frete.valorTotalBRL', 'frete.valorBRL']);

  if AFrete.ValorSeguroBRL = 0 then
    AFrete.ValorSeguroBRL := JsonFloatAny(ARootDuimp, ['seguro.valorTotalBRL', 'seguro.valorBRL']);

  AplicarFallbackFretePorBuscaRecursiva(ARootDuimp, AFrete);

  AFrete.Status := 'Dados de carga/frete montados principalmente a partir da consulta geral da DUIMP e dos itens.';

  if AFrete.IdentificacaoCarga = '' then
    AFrete.Status := AFrete.Status + ' Atencao: identificacao da carga nao encontrada.';

  if AFrete.ViaTransporteCodigo = 0 then
    AFrete.Status := AFrete.Status + ' Atencao: via de transporte nao encontrada/mapeada.';

  if (AFrete.ValorFreteMoeda = 0) and (AFrete.ValorFreteBRL = 0) then
    AFrete.Status := AFrete.Status + ' Atencao: valor de frete nao encontrado.';

  if (SameText(AFrete.TipoIdentificacaoCarga, 'CE')) and
     (AFrete.ViaTransporteCodigo = 1) then
    AFrete.Status := AFrete.Status + ' Via de transporte definida como MARITIMA pelo tipo de identificacao de carga CE.';
end;

procedure TForm1.ExibirDuimpFreteInfoNoMemo(const AFrete: TDuimpFreteInfo);
begin
  MemoRetorno.Clear;
  MemoRetorno.Lines.Add('DADOS DE CARGA, TRANSITO E FRETE - DUIMP/NF-e');
  MemoRetorno.Lines.Add(StringOfChar('-', 80));
  MemoRetorno.Lines.Add('DUIMP................: ' + AFrete.NumeroDuimp);
  MemoRetorno.Lines.Add('Versao...............: ' + IntToStr(AFrete.VersaoDuimp));
  MemoRetorno.Lines.Add('Tipo Ident. Carga....: ' + AFrete.TipoIdentificacaoCarga);
  MemoRetorno.Lines.Add('Identificacao Carga..: ' + AFrete.IdentificacaoCarga);
  MemoRetorno.Lines.Add('Controle Carga.......: ' + AFrete.ControleCarga);
  MemoRetorno.Lines.Add('Situacao Carga.......: ' + AFrete.SituacaoCarga);
  MemoRetorno.Lines.Add('Via Transporte Cod...: ' + IntToStr(AFrete.ViaTransporteCodigo));
  MemoRetorno.Lines.Add('Via Transporte Desc..: ' + AFrete.ViaTransporteDescricao);
  MemoRetorno.Lines.Add('Pais Procedencia.....: ' + AFrete.PaisProcedencia);
  MemoRetorno.Lines.Add('Pais Embarque........: ' + AFrete.PaisEmbarque);
  MemoRetorno.Lines.Add('Local Embarque.......: ' + AFrete.LocalEmbarque);
  MemoRetorno.Lines.Add('Local Desembaraco....: ' + AFrete.LocalDesembaraco);
  MemoRetorno.Lines.Add('UF Desembaraco.......: ' + AFrete.UFDesembaraco);
  MemoRetorno.Lines.Add('URF Despacho.........: ' + AFrete.URFDespacho);
  MemoRetorno.Lines.Add('Recinto Aduaneiro....: ' + AFrete.RecintoAduaneiro);
  MemoRetorno.Lines.Add('Peso Bruto...........: ' + FloatToStr(AFrete.PesoBruto));
  MemoRetorno.Lines.Add('Peso Liquido.........: ' + FloatToStr(AFrete.PesoLiquido));
  MemoRetorno.Lines.Add('Unidade Peso.........: ' + AFrete.UnidadePeso);
  MemoRetorno.Lines.Add('Moeda Frete..........: ' + AFrete.CodigoMoedaFrete);
  MemoRetorno.Lines.Add('Valor Frete Moeda....: ' + FloatToStr(AFrete.ValorFreteMoeda));
  MemoRetorno.Lines.Add('Valor Frete BRL......: ' + FloatToStr(AFrete.ValorFreteBRL));
  MemoRetorno.Lines.Add('Moeda Seguro.........: ' + AFrete.CodigoMoedaSeguro);
  MemoRetorno.Lines.Add('Valor Seguro Moeda...: ' + FloatToStr(AFrete.ValorSeguroMoeda));
  MemoRetorno.Lines.Add('Valor Seguro BRL.....: ' + FloatToStr(AFrete.ValorSeguroBRL));
  MemoRetorno.Lines.Add('Valor Aduaneiro BRL..: ' + FloatToStr(AFrete.ValorAduaneiroBRL));
  MemoRetorno.Lines.Add('VMLE USD.............: ' + FloatToStr(AFrete.ValorMercadoriaLocalEmbarqueUSD));
  MemoRetorno.Lines.Add('VMLE BRL.............: ' + FloatToStr(AFrete.ValorMercadoriaLocalEmbarqueBRL));
  MemoRetorno.Lines.Add('Conhecimento Carga...: ' + AFrete.ConhecimentoCarga);
  MemoRetorno.Lines.Add('Quantidade Volumes...: ' + AFrete.QuantidadeVolumes);
  MemoRetorno.Lines.Add('Tipo Volumes.........: ' + AFrete.TipoVolumes);
  MemoRetorno.Lines.Add('Marca Volume.........: ' + AFrete.MarcaVolume);
  MemoRetorno.Lines.Add('Nome Veiculo.........: ' + AFrete.NomeVeiculo);
  MemoRetorno.Lines.Add('Data Entrada Veiculo.: ' + AFrete.DataEntradaVeiculo);
  MemoRetorno.Lines.Add('Presenca Carga.......: ' + AFrete.PresencaCarga);
  MemoRetorno.Lines.Add('Status...............: ' + AFrete.Status);
  MemoRetorno.Lines.Add('');
end;

function TForm1.DuimpFreteInfo: TDuimpFreteInfo;
begin
  Result := FDuimpFreteInfo;
end;

function TForm1.DuimpDIInfo: TDuimpDIInfo;
begin
  Result := FDuimpDIInfo;
end;

function TForm1.DuimpItemProdutoCount: Integer;
begin
  Result := Length(FDuimpItensProdutos);
end;

function TForm1.DuimpItemProdutoByIndex(const AIndex: Integer): TDuimpItemProdutoInfo;
begin
  if (AIndex < 0) or (AIndex >= Length(FDuimpItensProdutos)) then
    raise Exception.Create('Indice de item DUIMP invalido.');

  Result := FDuimpItensProdutos[AIndex];
end;


procedure TForm1.LimparDuimpItemProdutoInfo(var AInfo: TDuimpItemProdutoInfo);
begin
  AInfo.NumeroItem := 0;
  AInfo.NcmDuimp := '';
  AInfo.CodigoProduto := '';
  AInfo.VersaoProduto := '';
  AInfo.CpfCnpjRaiz := '';
  AInfo.DescricaoDuimp := '';
  AInfo.CodigoCatp := '';
  AInfo.VersaoCatp := '';
  AInfo.NcmCatp := '';
  AInfo.DenominacaoCatp := '';
  AInfo.DescricaoCatp := '';
  AInfo.SituacaoCatp := '';
  AInfo.ModalidadeCatp := '';
  AInfo.StatusConsultaCatp := '';
end;

procedure TForm1.ParseDuimpItemProduto(AObjItem: ISuperObject; const ACpfCnpjRaizPadrao: string; var AInfo: TDuimpItemProdutoInfo);
begin
  LimparDuimpItemProdutoInfo(AInfo);

  if not Assigned(AObjItem) then
    Exit;

  AInfo.NumeroItem := JsonIntAny(
    AObjItem,
    [
      'numeroItem',
      'identificacao.numeroItem',
      'item.numero',
      'item.numeroItem'
    ]
  );

  AInfo.NcmDuimp := JsonStrAny(
    AObjItem,
    [
      'produto.ncm',
      'produto.codigoNcm',
      'mercadoria.ncm',
      'dadosMercadoria.ncm',
      'classificacaoFiscal.ncm',
      'ncm'
    ]
  );

  AInfo.CodigoProduto := JsonStrAny(
    AObjItem,
    [
      'produto.codigo',
      'produto.codigoProduto',
      'produto.codigoCatalogo',
      'produto.codigoProdutoCatalogo',
      'mercadoria.codigoProduto',
      'dadosMercadoria.codigoProduto',
      'codigoProduto'
    ]
  );

  AInfo.VersaoProduto := JsonStrAny(
    AObjItem,
    [
      'produto.versao',
      'produto.versaoProduto',
      'produto.versaoCatalogo',
      'mercadoria.versaoProduto',
      'dadosMercadoria.versaoProduto',
      'versaoProduto'
    ]
  );

  AInfo.CpfCnpjRaiz := NormalizarCpfCnpjRaiz(
    JsonStrAny(
      AObjItem,
      [
        'produto.cpfCnpjRaiz',
        'produto.niResponsavel',
        'produto.cnpjRaiz',
        'mercadoria.cpfCnpjRaiz',
        'dadosMercadoria.cpfCnpjRaiz',
        'cpfCnpjRaiz'
      ]
    )
  );

  if AInfo.CpfCnpjRaiz = '' then
    AInfo.CpfCnpjRaiz := ACpfCnpjRaizPadrao;

  AInfo.DescricaoDuimp := JsonStrAny(
    AObjItem,
    [
      'produto.descricao',
      'produto.descricaoProduto',
      'produto.detalhamento',
      'produto.detalhamentoProduto',
      'mercadoria.descricao',
      'mercadoria.descricaoMercadoria',
      'dadosMercadoria.descricao',
      'dadosMercadoria.descricaoMercadoria',
      'descricaoProduto',
      'descricaoMercadoria',
      'descricao'
    ]
  );
end;

procedure TForm1.PreencherProdutoCatp(AObjProduto: ISuperObject; var AInfo: TDuimpItemProdutoInfo);
begin
  if not Assigned(AObjProduto) then
    Exit;

  AInfo.CodigoCatp := JsonStr(AObjProduto, 'codigo');
  AInfo.VersaoCatp := JsonStr(AObjProduto, 'versao');
  AInfo.NcmCatp := JsonStr(AObjProduto, 'ncm');
  AInfo.DenominacaoCatp := JsonStr(AObjProduto, 'denominacao');
  AInfo.DescricaoCatp := JsonStr(AObjProduto, 'descricao');
  AInfo.SituacaoCatp := JsonStr(AObjProduto, 'situacao');
  AInfo.ModalidadeCatp := JsonStr(AObjProduto, 'modalidade');
end;

procedure TForm1.ConsultarProdutoCatpDoItem(var AInfo: TDuimpItemProdutoInfo);
var
  Retorno: string;
  Root: ISuperObject;
  Arr: TSuperArray;
begin
  AInfo.StatusConsultaCatp := '';

  if Trim(AInfo.CpfCnpjRaiz) = '' then
  begin
    AInfo.StatusConsultaCatp := 'N√£o consultado: CPF/CNPJ raiz n√£o encontrado no item/DUIMP.';
    Exit;
  end;

  if Trim(AInfo.CodigoProduto) = '' then
  begin
    AInfo.StatusConsultaCatp := 'N√£o consultado: c√≥digo do produto n√£o encontrado no item da DUIMP.';
    Exit;
  end;

  try
    if Trim(AInfo.VersaoProduto) <> '' then
    begin
      Retorno := FClient.ConsultarCatpProdutoDetalhe(
        AInfo.CpfCnpjRaiz,
        AInfo.CodigoProduto,
        AInfo.VersaoProduto
      );
    end
    else
    begin
      Retorno := FClient.ConsultarCatpProdutosPorCodigo(
        AInfo.CpfCnpjRaiz,
        AInfo.CodigoProduto
      );
    end;

    Root := SO(Retorno);

    if not Assigned(Root) then
    begin
      AInfo.StatusConsultaCatp := 'CATP retornou JSON inv√°lido.';
      Exit;
    end;

    if Root.DataType = stArray then
    begin
      Arr := Root.AsArray;

      if Assigned(Arr) and (Arr.Length > 0) then
        PreencherProdutoCatp(Arr.O[0], AInfo)
      else
        AInfo.StatusConsultaCatp := 'CATP retornou lista vazia para o produto.';
    end
    else
    begin
      PreencherProdutoCatp(Root, AInfo);
    end;

    if AInfo.StatusConsultaCatp = '' then
      AInfo.StatusConsultaCatp := 'CATP consultado com sucesso.';
  except
    on E: Exception do
    begin
      if Trim(AInfo.VersaoProduto) <> '' then
      begin
        try
          Retorno := FClient.ConsultarCatpProdutosPorCodigo(
            AInfo.CpfCnpjRaiz,
            AInfo.CodigoProduto
          );

          Root := SO(Retorno);

          if Assigned(Root) and (Root.DataType = stArray) then
          begin
            Arr := Root.AsArray;

            if Assigned(Arr) and (Arr.Length > 0) then
            begin
              PreencherProdutoCatp(Arr.O[0], AInfo);
              AInfo.StatusConsultaCatp := 'CATP consultado por fallback /ext/produto?cpfCnpjRaiz=&codigo=.';
              Exit;
            end;
          end;
        except
          { Mant√©m o erro original abaixo }
        end;
      end;

      AInfo.StatusConsultaCatp := 'Erro ao consultar CATP: ' + E.Message;
    end;
  end;
end;

procedure TForm1.ExibirItemProdutoNoMemo(const AInfo: TDuimpItemProdutoInfo);
begin
  MemoRetorno.Lines.Add('ITEM DUIMP');
  MemoRetorno.Lines.Add(StringOfChar('-', 80));
  MemoRetorno.Lines.Add('Item................: ' + IntToStr(AInfo.NumeroItem));
  MemoRetorno.Lines.Add('NCM DUIMP...........: ' + AInfo.NcmDuimp);
  MemoRetorno.Lines.Add('C√≥digo Produto......: ' + AInfo.CodigoProduto);
  MemoRetorno.Lines.Add('Vers√£o Produto......: ' + AInfo.VersaoProduto);
  MemoRetorno.Lines.Add('CPF/CNPJ Raiz.......: ' + AInfo.CpfCnpjRaiz);
  MemoRetorno.Lines.Add('Descri√ß√£o na DUIMP..: ' + AInfo.DescricaoDuimp);
  MemoRetorno.Lines.Add('');

  MemoRetorno.Lines.Add('CAT√ÅLOGO DE PRODUTOS / CATP');
  MemoRetorno.Lines.Add(StringOfChar('-', 80));
  MemoRetorno.Lines.Add('Status..............: ' + AInfo.StatusConsultaCatp);
  MemoRetorno.Lines.Add('C√≥digo CATP.........: ' + AInfo.CodigoCatp);
  MemoRetorno.Lines.Add('Vers√£o CATP.........: ' + AInfo.VersaoCatp);
  MemoRetorno.Lines.Add('NCM CATP............: ' + AInfo.NcmCatp);
  MemoRetorno.Lines.Add('Situa√ß√£o CATP.......: ' + AInfo.SituacaoCatp);
  MemoRetorno.Lines.Add('Modalidade CATP.....: ' + AInfo.ModalidadeCatp);
  MemoRetorno.Lines.Add('Denomina√ß√£o CATP....: ' + AInfo.DenominacaoCatp);
  MemoRetorno.Lines.Add('Descri√ß√£o CATP......: ' + AInfo.DescricaoCatp);
  MemoRetorno.Lines.Add('');
  MemoRetorno.Lines.Add(StringOfChar('=', 80));
  MemoRetorno.Lines.Add('');
end;

procedure TForm1.BTNConsultaItensClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  RetornoDuimp: string;
  RetornoItens: string;
  RootDuimp: ISuperObject;
  RootItens: ISuperObject;
  ArrItens: TSuperArray;
  I: Integer;
  TotalPesoLiquido: Double;
  TotalFreteBRL: Double;
  TotalSeguroBRL: Double;
  TotalValorAduaneiroBRL: Double;
  CpfCnpjRaizPadrao: string;
  Info: TDuimpItemProdutoInfo;
begin
  MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := GetNumeroDuimp;
    VersaoDuimp := GetVersaoDuimp;

    MemoRetorno.Lines.Add('Consultando DUIMP e itens...');
    MemoRetorno.Lines.Add('DUIMP: ' + NumeroDuimp);
    MemoRetorno.Lines.Add('Vers√£o: ' + IntToStr(VersaoDuimp));
    MemoRetorno.Lines.Add('');

    { Consulta dados gerais para tentar obter CPF/CNPJ raiz do importador/respons√°vel }
    RetornoDuimp := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);
    RootDuimp := SO(RetornoDuimp);

    CpfCnpjRaizPadrao := '';
    if Assigned(RootDuimp) then
      CpfCnpjRaizPadrao := ExtrairCpfCnpjRaizDoJsonGeral(RootDuimp);

    MemoRetorno.Lines.Add('CPF/CNPJ raiz padr√£o identificado: ' + CpfCnpjRaizPadrao);
    MemoRetorno.Lines.Add('');

    RetornoItens := FClient.ConsultarDuimpItens(NumeroDuimp, VersaoDuimp);
    RootItens := SO(RetornoItens);

    if not Assigned(RootItens) then
      raise Exception.Create('JSON inv√°lido no retorno dos itens da DUIMP.');

    ArrItens := GetJsonArrayFromRoot(RootItens);

    if not Assigned(ArrItens) then
    begin
      MemoRetorno.Lines.Add('N√£o foi encontrado array de itens no retorno da DUIMP.');
      MemoRetorno.Lines.Add('');
      MemoRetorno.Lines.Add(RetornoItens);
      Exit;
    end;

    MemoRetorno.Lines.Add('Quantidade de itens encontrados: ' + IntToStr(ArrItens.Length));
    MemoRetorno.Lines.Add('');

    { Limpa e reserva a variavel global de records para uso posterior }
    SetLength(FDuimpItensProdutos, ArrItens.Length);

    MemoRetorno.Lines.Add(StringOfChar('=', 80));
    MemoRetorno.Lines.Add('');

    for I := 0 to ArrItens.Length - 1 do
    begin
      ParseDuimpItemProduto(ArrItens.O[I], CpfCnpjRaizPadrao, Info);
      ConsultarProdutoCatpDoItem(Info);

      { Guarda o record completo para reutilizacao em outras rotinas }
      FDuimpItensProdutos[I] := Info;

      ExibirItemProdutoNoMemo(FDuimpItensProdutos[I]);
      Application.ProcessMessages;
    end;

    MemoRetorno.Lines.Add('Consulta de itens finalizada.');
  except
    on E: Exception do
    begin
      MemoRetorno.Lines.Add('');
      MemoRetorno.Lines.Add('Erro ao consultar itens da DUIMP:');
      MemoRetorno.Lines.Add(E.Message);

      MessageDlg(
        'Erro ao consultar itens da DUIMP:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;


procedure TForm1.BTNConsultaDIClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  RetornoDuimp: string;
  RetornoItens: string;
  RootDuimp: ISuperObject;
  RootItens: ISuperObject;
  ArrItens: TSuperArray;
begin
  MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := GetNumeroDuimp;
    VersaoDuimp := GetVersaoDuimp;

    MemoRetorno.Lines.Add('Consultando dados de DI/NF-e pela DUIMP...');
    MemoRetorno.Lines.Add('DUIMP: ' + NumeroDuimp);
    MemoRetorno.Lines.Add('Vers„o: ' + IntToStr(VersaoDuimp));
    MemoRetorno.Lines.Add('');

    RetornoDuimp := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);
    RootDuimp := SO(RetornoDuimp);

    if not Assigned(RootDuimp) then
      raise Exception.Create('JSON inv·lido no retorno dos dados gerais da DUIMP.');

    RetornoItens := FClient.ConsultarDuimpItens(NumeroDuimp, VersaoDuimp);
    RootItens := SO(RetornoItens);

    if not Assigned(RootItens) then
      raise Exception.Create('JSON inv·lido no retorno dos itens da DUIMP.');

    ArrItens := GetJsonArrayFromRoot(RootItens);

    if not Assigned(ArrItens) then
      raise Exception.Create('N„o foi encontrado array de itens no retorno da DUIMP.');

    ParseDuimpDIInfo(
      RootDuimp,
      ArrItens,
      NumeroDuimp,
      FDuimpDIInfo
    );

    ExibirDuimpDIInfoNoMemo(FDuimpDIInfo);
  except
    on E: Exception do
    begin
      MemoRetorno.Lines.Add('');
      MemoRetorno.Lines.Add('Erro ao consultar dados DI/NF-e pela DUIMP:');
      MemoRetorno.Lines.Add(E.Message);

      MessageDlg(
        'Erro ao consultar dados DI/NF-e pela DUIMP:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;



procedure TForm1.DumpJsonObjectPaths(
  AObj: ISuperObject;
  const APrefixo: string;
  ALines: TStrings
);
var
  Iter: TSuperObjectIter;
  NomeCampo: string;
  NovoPrefixo: string;
  Valor: ISuperObject;
  I: Integer;
begin
  if not Assigned(AObj) then
    Exit;

  case AObj.DataType of
    stObject:
      begin
        if ObjectFindFirst(AObj, Iter) then
        begin
          try
            repeat
              NomeCampo := Iter.key;
              Valor := Iter.val;

              if APrefixo = '' then
                NovoPrefixo := NomeCampo
              else
                NovoPrefixo := APrefixo + '.' + NomeCampo;

              if Assigned(Valor) then
              begin
                case Valor.DataType of
                  stObject:
                    DumpJsonObjectPaths(Valor, NovoPrefixo, ALines);

                  stArray:
                    begin
                      ALines.Add(NovoPrefixo + ' = [array]');

                      for I := 0 to Valor.AsArray.Length - 1 do
                      begin
                        if Assigned(Valor.AsArray.O[I]) then
                          DumpJsonObjectPaths(
                            Valor.AsArray.O[I],
                            NovoPrefixo + '[' + IntToStr(I) + ']',
                            ALines
                          );
                      end;
                    end;
                else
                  ALines.Add(NovoPrefixo + ' = ' + Valor.AsString);
                end;
              end;
            until not ObjectFindNext(Iter);
          finally
            ObjectFindClose(Iter);
          end;
        end;
      end;

    stArray:
      begin
        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          if Assigned(AObj.AsArray.O[I]) then
            DumpJsonObjectPaths(
              AObj.AsArray.O[I],
              APrefixo + '[' + IntToStr(I) + ']',
              ALines
            );
        end;
      end;
  else
    begin
      if APrefixo <> '' then
        ALines.Add(APrefixo + ' = ' + AObj.AsString);
    end;
  end;
end;

procedure TForm1.ExibirDiagnosticoFreteJson(
  ARootDuimp: ISuperObject;
  AArrItens: TSuperArray
);
begin
  MemoRetorno.Lines.Add('');
  MemoRetorno.Lines.Add('DIAGNOSTICO DEFINITIVO - CAMPOS REAIS DO JSON');
  MemoRetorno.Lines.Add(StringOfChar('-', 80));
  MemoRetorno.Lines.Add('Use este bloco para localizar os nomes reais de peso, local, recinto, via, carga e transporte.');
  MemoRetorno.Lines.Add('Procure por termos como: peso, carga, desemb, recinto, urf, via, transporte, frete.');
  MemoRetorno.Lines.Add('');

  MemoRetorno.Lines.Add('--- DUMP JSON DUIMP - DADOS GERAIS ---');
  if Assigned(ARootDuimp) then
    DumpJsonObjectPaths(ARootDuimp, '', MemoRetorno.Lines)
  else
    MemoRetorno.Lines.Add('RootDuimp nao atribuido.');
  MemoRetorno.Lines.Add('--- FIM DUMP JSON DUIMP - DADOS GERAIS ---');
  MemoRetorno.Lines.Add('');

  MemoRetorno.Lines.Add('--- DUMP JSON DUIMP - PRIMEIRO ITEM ---');
  if Assigned(AArrItens) and (AArrItens.Length > 0) and Assigned(AArrItens.O[0]) then
    DumpJsonObjectPaths(AArrItens.O[0], '', MemoRetorno.Lines)
  else
    MemoRetorno.Lines.Add('Array de itens vazio ou nao localizado.');
  MemoRetorno.Lines.Add('--- FIM DUMP JSON DUIMP - PRIMEIRO ITEM ---');
end;

function TForm1.IsErroDuimpValoresCalculadosRestrito(const AMsg: string): Boolean;
var
  S: string;
begin
  S := UpperCase(AMsg);

  Result :=
    (Pos('DIMP-ER8505', S) > 0) or
    (Pos('RESTRITA A VERS', S) > 0) or
    (Pos('DUIMP EM ELABORA', S) > 0) or
    (Pos('DESEMBARACADA_CARGA_ENTREGUE', S) > 0);
end;

function TForm1.TryConsultarDuimpValoresCalculados(
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer;
  var ARetorno: string;
  var AStatus: string
): Boolean;
begin
  Result := False;
  ARetorno := '';
  AStatus := '';

  try
    ARetorno := FClient.ConsultarDuimpValoresCalculados(
      ANumeroDuimp,
      AVersaoDuimp
    );

    Result := True;
    AStatus := 'Valores calculados da DUIMP consultados com sucesso.';
  except
    on E: Exception do
    begin
      if IsErroDuimpValoresCalculadosRestrito(E.Message) then
      begin
        AStatus :=
          'Valores calculados da DUIMP nao disponiveis para esta situacao. ' +
          'A API permite este servico apenas para DUIMP em elaboracao. ' +
          'A consulta continuara com os dados gerais da DUIMP.';
        Result := False;
        Exit;
      end;

      raise;
    end;
  end;
end;

procedure TForm1.BTNFreteClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  RetornoDuimp: string;
  RetornoValores: string;
  RetornoItens: string;
  StatusValores: string;
  RootDuimp: ISuperObject;
  RootValores: ISuperObject;
  RootItens: ISuperObject;
  ArrItens: TSuperArray;
  I: Integer;
  TotalPesoLiquido: Double;
  TotalFreteBRL: Double;
  TotalSeguroBRL: Double;
  TotalValorAduaneiroBRL: Double;
begin
  MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := GetNumeroDuimp;
    VersaoDuimp := GetVersaoDuimp;

    MemoRetorno.Lines.Add('Consultando carga, transito, peso e frete pela DUIMP...');
    MemoRetorno.Lines.Add('DUIMP: ' + NumeroDuimp);
    MemoRetorno.Lines.Add('Versao: ' + IntToStr(VersaoDuimp));
    MemoRetorno.Lines.Add('');

    RetornoDuimp := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);
    RootDuimp := SO(RetornoDuimp);

    if not Assigned(RootDuimp) then
      raise Exception.Create('JSON invalido no retorno dos dados gerais da DUIMP.');

    RootValores := nil;
    RetornoValores := '';
    StatusValores := '';

    if TryConsultarDuimpValoresCalculados(
      NumeroDuimp,
      VersaoDuimp,
      RetornoValores,
      StatusValores
    ) then
    begin
      RootValores := SO(RetornoValores);

      if not Assigned(RootValores) then
      begin
        RootValores := nil;
        StatusValores := 'Valores calculados retornaram JSON invalido. A consulta seguira com dados gerais da DUIMP.';
        MemoRetorno.Lines.Add(StatusValores);
        MemoRetorno.Lines.Add('');
      end;
    end
    else
    begin
      MemoRetorno.Lines.Add(StatusValores);
      MemoRetorno.Lines.Add('');
    end;

    ParseDuimpFreteInfo(
      RootDuimp,
      RootValores,
      NumeroDuimp,
      VersaoDuimp,
      FDuimpFreteInfo
    );

    if (StatusValores <> '') and (not Assigned(RootValores)) then
    begin
      if FDuimpFreteInfo.Status <> '' then
        FDuimpFreteInfo.Status := FDuimpFreteInfo.Status + sLineBreak;

      FDuimpFreteInfo.Status := FDuimpFreteInfo.Status + StatusValores;
    end;

    RetornoItens := FClient.ConsultarDuimpItens(NumeroDuimp, VersaoDuimp);
    RootItens := SO(RetornoItens);

    if not Assigned(RootItens) then
      raise Exception.Create('JSON invalido no retorno dos itens da DUIMP.');

    ArrItens := GetJsonArrayFromRoot(RootItens);

    if not Assigned(ArrItens) then
      raise Exception.Create('Nao foi encontrado array de itens no retorno da DUIMP.');

    SetLength(FDuimpFreteInfo.Itens, ArrItens.Length);

    for I := 0 to ArrItens.Length - 1 do
    begin
      ParseDuimpFreteItem(
        ArrItens.O[I],
        I + 1,
        FDuimpFreteInfo.Itens[I]
      );

      Application.ProcessMessages;
    end;

    { Consolida dados que existem nos itens, mas nao aparecem no bloco geral
      da DUIMP registrada. }
    TotalPesoLiquido := 0;
    TotalFreteBRL := 0;
    TotalSeguroBRL := 0;
    TotalValorAduaneiroBRL := 0;

    for I := 0 to High(FDuimpFreteInfo.Itens) do
    begin
      TotalPesoLiquido := TotalPesoLiquido + FDuimpFreteInfo.Itens[I].PesoLiquido;
      TotalFreteBRL := TotalFreteBRL + FDuimpFreteInfo.Itens[I].ValorFreteBRL;
      TotalSeguroBRL := TotalSeguroBRL + FDuimpFreteInfo.Itens[I].ValorSeguroBRL;
      TotalValorAduaneiroBRL := TotalValorAduaneiroBRL + FDuimpFreteInfo.Itens[I].ValorAduaneiroBRL;
    end;

    if FDuimpFreteInfo.PesoLiquido = 0 then
      FDuimpFreteInfo.PesoLiquido := TotalPesoLiquido;

    if FDuimpFreteInfo.ValorFreteBRL = 0 then
      FDuimpFreteInfo.ValorFreteBRL := TotalFreteBRL;

    if FDuimpFreteInfo.ValorSeguroBRL = 0 then
      FDuimpFreteInfo.ValorSeguroBRL := TotalSeguroBRL;

    if FDuimpFreteInfo.ValorAduaneiroBRL = 0 then
      FDuimpFreteInfo.ValorAduaneiroBRL := TotalValorAduaneiroBRL;

    if (FDuimpFreteInfo.UnidadePeso = '') and (FDuimpFreteInfo.PesoLiquido <> 0) then
      FDuimpFreteInfo.UnidadePeso := 'KG';

    if (FDuimpFreteInfo.PresencaCarga = '') and (FDuimpFreteInfo.IdentificacaoCarga <> '') then
      FDuimpFreteInfo.PresencaCarga := FDuimpFreteInfo.IdentificacaoCarga;

    if FDuimpFreteInfo.PesoBruto = 0 then
      FDuimpFreteInfo.Status := FDuimpFreteInfo.Status +
        ' Atencao: peso bruto total nao foi retornado pela API de dados gerais/itens; no Portal Web ele aparece na aba Carga.';

    if FDuimpFreteInfo.LocalEmbarque = '' then
      FDuimpFreteInfo.Status := FDuimpFreteInfo.Status +
        ' Atencao: local de embarque nao foi retornado na consulta geral DUIMP; nao foi usado VMLE como local.';

    ExibirDuimpFreteInfoNoMemo(FDuimpFreteInfo);
  except
    on E: Exception do
    begin
      MemoRetorno.Lines.Add('');
      MemoRetorno.Lines.Add('Erro ao consultar carga/frete pela DUIMP:');
      MemoRetorno.Lines.Add(E.Message);

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
