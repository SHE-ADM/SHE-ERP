unit uDuimpNFeItensCompletoD7;

interface

uses
  SysUtils, Classes, SuperObject;

type
  TDuimpNFeImpostoBasico = record
    CST: string;
    vBC: Double;
    pAliq: Double;
    vImp: Double;
  end;

  TDuimpNFeIPI = record
    CST: string;
    cEnq: string;
    vBC: Double;
    pIPI: Double;
    vIPI: Double;
  end;

  TDuimpNFeICMS = record
    Orig: Integer;
    CST: string;
    modBC: Integer;
    vBC: Double;
    pICMS: Double;
    vICMS: Double;
    vBCFCP: Double;
    pFCP: Double;
    vFCP: Double;
  end;

  TDuimpNFeDI = record
    nDI: string;
    dDI: string;
    xLocDesemb: string;
    UFDesemb: string;
    dDesemb: string;
    tpViaTransp: Integer;
    vAFRMM: Double;
    tpIntermedio: Integer;
    CNPJ: string;
    UFTerceiro: string;
    cExportador: string;
    nAdicao: Integer;
    nSeqAdic: Integer;
    cFabricante: string;
    vDescDI: Double;
    nDraw: string;
  end;

  TDuimpNFeItemCompleto = record
    NumeroItemDuimp: Integer;
    CodigoProduto: string;
    VersaoProduto: string;
    CpfCnpjRaiz: string;

    cProd: string;
    cEAN: string;
    xProd: string;
    NCM: string;
    CEST: string;
    CFOP: string;
    uCom: string;
    qCom: Double;
    vUnCom: Double;
    vProd: Double;
    cEANTrib: string;
    uTrib: string;
    qTrib: Double;
    vUnTrib: Double;
    vFrete: Double;
    vSeg: Double;
    vDesc: Double;
    vOutro: Double;
    indTot: Integer;

    PesoLiquido: Double;
    PesoBruto: Double;
    ValorAduaneiroBRL: Double;
    ValorLocalEmbarqueBRL: Double;
    ValorLocalEmbarqueUSD: Double;

    DI: TDuimpNFeDI;
    II: TDuimpNFeImpostoBasico;
    IPI: TDuimpNFeIPI;
    PIS: TDuimpNFeImpostoBasico;
    COFINS: TDuimpNFeImpostoBasico;
    ICMS: TDuimpNFeICMS;

    StatusValidacao: string;
  end;

  TArrayDuimpNFeItemCompleto = array of TDuimpNFeItemCompleto;

  TDuimpNFeParametrosFiscais = record
    CFOP: string;
    OrigemMercadoria: Integer;
    CSTICMS: string;
    AliqICMS: Double;
    CSTIPI: string;
    EnqIPI: string;
    AliqIPI: Double;
    CSTPIS: string;
    AliqPIS: Double;
    CSTCOFINS: string;
    AliqCOFINS: Double;
  end;

function DuimpParametrosFiscaisPadraoSP: TDuimpNFeParametrosFiscais; { COMPAT: retorna vazio/zero; sem valores fiscais fixos }

procedure MontarDuimpItensNFeCompleto(
  const AJsonDuimpGeral: string;
  const AJsonItens: string;
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer;
  const AParams: TDuimpNFeParametrosFiscais;
  var AItens: TArrayDuimpNFeItemCompleto
);

function DuimpItensNFeResumo(const AItens: TArrayDuimpNFeItemCompleto): string;
function DuimpItensNFePreviewDetXML(const AItens: TArrayDuimpNFeItemCompleto): string;
function DuimpItensNFeValidacao(const AItens: TArrayDuimpNFeItemCompleto): string;

procedure RecalcularTributosNFeImportacaoItem(
  var AItem: TDuimpNFeItemCompleto;
  const AParams: TDuimpNFeParametrosFiscais
);

procedure AplicarValoresCalculadosDuimpNoItemNFe(
  const AJsonValoresItem: string;
  const AParams: TDuimpNFeParametrosFiscais;
  var AItem: TDuimpNFeItemCompleto
);

procedure AplicarValoresCalculadosDuimpNosItensNFe(
  const AJsonValores: string;
  const AParams: TDuimpNFeParametrosFiscais;
  var AItens: TArrayDuimpNFeItemCompleto
);


function ExtrairVAfrmmTotalDuimpJson(const AJson: string): Double;
function ExtrairVAfrmmTotalDuimpTexto(const ATexto: string): Double;
function ExtrairPercentualICMSDuimpJson(const AJson: string): Double;

procedure AplicarPercentualICMSNosItensNFe(
  const APercentualICMS: Double;
  var AItens: TArrayDuimpNFeItemCompleto
);


procedure AplicarVAfrmmTotalNosItensNFe(
  const AValorAFRMM: Double;
  var AItens: TArrayDuimpNFeItemCompleto
);

procedure AplicarVAfrmmJsonNosItensNFe(
  const AJsonAFRMM: string;
  var AItens: TArrayDuimpNFeItemCompleto
);

implementation

function ParseFloatFlexLocal(const S: string): Double; forward;
function JsonFloatAny(AObj: ISuperObject; const APaths: array of string): Double; forward;
function JsonResumoLocal(AObj: ISuperObject): string; forward;
function JsonFindFloatByKeyLocal(AObj: ISuperObject; const ATermos: array of string): Double; forward;
procedure ValidarItem(var AItem: TDuimpNFeItemCompleto); forward;
procedure AplicarTributosCalculadosListaNoItem(AObjItem: ISuperObject; var AItem: TDuimpNFeItemCompleto); forward;

function TrimText(const S: string): string;
begin
  Result := Trim(S);
end;

function NormalizeJsonText(const S: string): string;
var
  T: string;
begin
  T := Trim(S);

  if SameText(T, 'null') or
     SameText(T, 'nil') or
     SameText(T, 'undefined') then
    Result := ''
  else
    Result := T;
end;

function JsonKeyMatchLocal(const AKey: string; const ATermos: array of string): Boolean;
var
  I: Integer;
  K: string;
begin
  Result := False;
  K := UpperCase(Trim(AKey));

  for I := Low(ATermos) to High(ATermos) do
  begin
    if Pos(UpperCase(Trim(ATermos[I])), K) > 0 then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

function JsonTermExactMatchLocal(const ATexto: string; const ATermos: array of string): Boolean;
var
  I: Integer;
  T: string;
begin
  Result := False;
  T := UpperCase(Trim(ATexto));

  for I := Low(ATermos) to High(ATermos) do
  begin
    if T = UpperCase(Trim(ATermos[I])) then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

function JsonFindFloatByExactKeyLocal(AObj: ISuperObject; const ATermos: array of string): Double;
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
                if JsonTermExactMatchLocal(Iter.key, ATermos) then
                begin
                  try
                    if Valor.DataType in [stInt, stDouble] then
                      Result := Valor.AsDouble
                    else if Valor.DataType = stString then
                      Result := ParseFloatFlexLocal(NormalizeJsonText(Valor.AsString))
                    else if Valor.DataType = stObject then
                      Result := JsonFindFloatByKeyLocal(Valor, [
                        'valorPago',
                        'valorTributo',
                        'valorCalculado',
                        'valorDevido',
                        'valor',
                        'valorBRL',
                        'amount'
                      ]);
                  except
                    Result := 0;
                  end;

                  if Result <> 0 then
                    Exit;
                end;

                if Valor.DataType in [stObject, stArray] then
                begin
                  Result := JsonFindFloatByExactKeyLocal(Valor, ATermos);

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
            Result := JsonFindFloatByExactKeyLocal(AObj.AsArray.O[I], ATermos);

            if Result <> 0 then
              Exit;
          end;
        end;
      end;
  end;
end;

function JsonObjectDirectContainsExactTextLocal(AObj: ISuperObject; const ALabels: array of string): Boolean;
var
  Iter: TSuperObjectIter;
  Valor: ISuperObject;
begin
  Result := False;

  if not Assigned(AObj) or (AObj.DataType <> stObject) then
    Exit;

  if ObjectFindFirst(AObj, Iter) then
  begin
    try
      repeat
        Valor := Iter.val;

        if Assigned(Valor) and (Valor.DataType in [stString, stInt, stDouble]) then
        begin
          if JsonTermExactMatchLocal(JsonResumoLocal(Valor), ALabels) then
          begin
            Result := True;
            Exit;
          end;
        end;
      until not ObjectFindNext(Iter);
    finally
      ObjectFindClose(Iter);
    end;
  end;
end;

function JsonFindFloatByExactNeighborLabelLocal(
  AObj: ISuperObject;
  const ALabels: array of string;
  const AValueKeys: array of string
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
        if JsonObjectDirectContainsExactTextLocal(AObj, ALabels) then
        begin
          Result := JsonFindFloatByKeyLocal(AObj, AValueKeys);
          if Result <> 0 then
            Exit;
        end;

        if ObjectFindFirst(AObj, Iter) then
        begin
          try
            repeat
              Valor := Iter.val;

              if Assigned(Valor) and (Valor.DataType in [stObject, stArray]) then
              begin
                Result := JsonFindFloatByExactNeighborLabelLocal(Valor, ALabels, AValueKeys);

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
        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          Result := JsonFindFloatByExactNeighborLabelLocal(AObj.AsArray.O[I], ALabels, AValueKeys);

          if Result <> 0 then
            Exit;
        end;
      end;
  end;
end;

function JsonResumoLocal(AObj: ISuperObject): string;
begin
  Result := '';

  if not Assigned(AObj) then
    Exit;

  try
    case AObj.DataType of
      stNull: Result := '';
      stString, stInt, stDouble, stBoolean: Result := NormalizeJsonText(AObj.AsString);
    else
      Result := NormalizeJsonText(AObj.AsString);
    end;
  except
    Result := '';
  end;
end;

function JsonFindStrByKeyLocal(AObj: ISuperObject; const ATermos: array of string): string;
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
                if JsonKeyMatchLocal(Iter.key, ATermos) then
                begin
                  Result := JsonResumoLocal(Valor);

                  if Trim(Result) <> '' then
                    Exit;
                end;

                if Valor.DataType in [stObject, stArray] then
                begin
                  Result := JsonFindStrByKeyLocal(Valor, ATermos);

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
            Result := JsonFindStrByKeyLocal(AObj.AsArray.O[I], ATermos);

            if Trim(Result) <> '' then
              Exit;
          end;
        end;
      end;
  end;
end;

function JsonFindFloatByKeyLocal(AObj: ISuperObject; const ATermos: array of string): Double;
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
                if JsonKeyMatchLocal(Iter.key, ATermos) then
                begin
                  try
                    if Valor.DataType in [stInt, stDouble] then
                      Result := Valor.AsDouble
                    else if Valor.DataType = stString then
                      Result := ParseFloatFlexLocal(NormalizeJsonText(Valor.AsString))
                    else if Valor.DataType = stObject then
                      Result := JsonFindFloatByKeyLocal(Valor, ['valor', 'quantidade', 'amount']);
                  except
                    Result := 0;
                  end;

                  if Result <> 0 then
                    Exit;
                end;

                if Valor.DataType in [stObject, stArray] then
                begin
                  Result := JsonFindFloatByKeyLocal(Valor, ATermos);

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
            Result := JsonFindFloatByKeyLocal(AObj.AsArray.O[I], ATermos);

            if Result <> 0 then
              Exit;
          end;
        end;
      end;
  end;
end;


function ParseFloatFlexLocal(const S: string): Double;
var
  T: string;
  I: Integer;
  PontoCount: Integer;
  VirgCount: Integer;
  PosUltPonto: Integer;
  PosUltVirg: Integer;
  DecSep: Char;
begin
  Result := 0;
  T := Trim(S);

  if T = '' then
    Exit;

  T := StringReplace(T, 'R$', '', [rfReplaceAll, rfIgnoreCase]);
  T := StringReplace(T, ' ', '', [rfReplaceAll]);
  T := StringReplace(T, #9, '', [rfReplaceAll]);

  PontoCount := 0;
  VirgCount := 0;
  PosUltPonto := 0;
  PosUltVirg := 0;

  for I := 1 to Length(T) do
  begin
    if T[I] = '.' then
    begin
      Inc(PontoCount);
      PosUltPonto := I;
    end
    else if T[I] = ',' then
    begin
      Inc(VirgCount);
      PosUltVirg := I;
    end;
  end;

  if (PontoCount > 0) and (VirgCount > 0) then
  begin
    if PosUltVirg > PosUltPonto then
    begin
      T := StringReplace(T, '.', '', [rfReplaceAll]);
      T := StringReplace(T, ',', DecimalSeparator, [rfReplaceAll]);
    end
    else
    begin
      T := StringReplace(T, ',', '', [rfReplaceAll]);
      T := StringReplace(T, '.', DecimalSeparator, [rfReplaceAll]);
    end;
  end
  else if VirgCount > 0 then
  begin
    T := StringReplace(T, ',', DecimalSeparator, [rfReplaceAll]);
  end
  else if PontoCount > 0 then
  begin
    if PontoCount = 1 then
      T := StringReplace(T, '.', DecimalSeparator, [rfReplaceAll])
    else
    begin
      { Mantem somente o ultimo ponto como separador decimal. }
      DecSep := DecimalSeparator;
      for I := Length(T) downto 1 do
      begin
        if T[I] = '.' then
        begin
          T[I] := DecSep;
          Break;
        end;
      end;
      T := StringReplace(T, '.', '', [rfReplaceAll]);
    end;
  end;

  Result := StrToFloatDef(T, 0);
end;

function ExtractNumberAfterLabelLocal(const ATexto, ALabel: string): Double;
var
  S: string;
  U: string;
  L: string;
  P: Integer;
  I: Integer;
  Num: string;
  Started: Boolean;
begin
  Result := 0;
  S := Trim(ATexto);
  L := UpperCase(Trim(ALabel));

  if (S = '') or (L = '') then
    Exit;

  U := UpperCase(S);
  P := Pos(L, U);

  if P <= 0 then
    Exit;

  I := P + Length(L);
  Num := '';
  Started := False;

  while I <= Length(S) do
  begin
    if S[I] in ['0'..'9', '.', ','] then
    begin
      Num := Num + S[I];
      Started := True;
    end
    else if Started then
      Break;

    Inc(I);
  end;

  Result := ParseFloatFlexLocal(Num);
end;

function JsonFindFloatInStringsByLabelLocal(AObj: ISuperObject; const ALabels: array of string): Double;
var
  Iter: TSuperObjectIter;
  Valor: ISuperObject;
  I: Integer;
begin
  Result := 0;

  if not Assigned(AObj) then
    Exit;

  case AObj.DataType of
    stString:
      begin
        for I := Low(ALabels) to High(ALabels) do
        begin
          Result := ExtractNumberAfterLabelLocal(AObj.AsString, ALabels[I]);

          if Result <> 0 then
            Exit;
        end;
      end;

    stObject:
      begin
        if ObjectFindFirst(AObj, Iter) then
        begin
          try
            repeat
              Valor := Iter.val;

              if Assigned(Valor) then
              begin
                Result := JsonFindFloatInStringsByLabelLocal(Valor, ALabels);

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
        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          Result := JsonFindFloatInStringsByLabelLocal(AObj.AsArray.O[I], ALabels);

          if Result <> 0 then
            Exit;
        end;
      end;
  end;
end;


function JsonObjectDirectContainsTextLocal(AObj: ISuperObject; const ALabels: array of string): Boolean;
var
  Iter: TSuperObjectIter;
  Valor: ISuperObject;
  I: Integer;
  S: string;
begin
  Result := False;

  if not Assigned(AObj) or (AObj.DataType <> stObject) then
    Exit;

  if ObjectFindFirst(AObj, Iter) then
  begin
    try
      repeat
        Valor := Iter.val;
        if Assigned(Valor) and (Valor.DataType in [stString, stInt, stDouble]) then
        begin
          S := UpperCase(JsonResumoLocal(Valor));
          for I := Low(ALabels) to High(ALabels) do
          begin
            if Pos(UpperCase(ALabels[I]), S) > 0 then
            begin
              Result := True;
              Exit;
            end;
          end;
        end;
      until not ObjectFindNext(Iter);
    finally
      ObjectFindClose(Iter);
    end;
  end;
end;

function JsonFindFloatByNeighborLabelLocal(
  AObj: ISuperObject;
  const ALabels: array of string;
  const AValueKeys: array of string
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
        if JsonObjectDirectContainsTextLocal(AObj, ALabels) then
        begin
          Result := JsonFindFloatByKeyLocal(AObj, AValueKeys);
          if Result <> 0 then
            Exit;
        end;

        if ObjectFindFirst(AObj, Iter) then
        begin
          try
            repeat
              Valor := Iter.val;
              if Assigned(Valor) and (Valor.DataType in [stObject, stArray]) then
              begin
                Result := JsonFindFloatByNeighborLabelLocal(Valor, ALabels, AValueKeys);
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
        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          Result := JsonFindFloatByNeighborLabelLocal(AObj.AsArray.O[I], ALabels, AValueKeys);
          if Result <> 0 then
            Exit;
        end;
      end;
  end;
end;

function ExtrairVAfrmmTotalDuimpObj(AObj: ISuperObject): Double;
begin
  Result := 0;

  if not Assigned(AObj) then
    Exit;

  { Busca exata solicitada: termo/chave exatamente igual a "Afrmm". }
  Result := JsonFindFloatByExactKeyLocal(AObj, [
    'Afrmm'
  ]);

  if Result <> 0 then
    Exit;

  { Busca exata solicitada: valor/rotulo exatamente igual a "Afrmm",
    usando os campos de valor existentes no mesmo objeto. }
  Result := JsonFindFloatByExactNeighborLabelLocal(AObj, [
    'Afrmm'
  ], [
    'valorPago',
    'valorTributo',
    'valorCalculado',
    'valorDevido',
    'valorAfrmmPago',
    'valorAFRMMPago',
    'valorAfrmmDevido',
    'valorAFRMMDevido',
    'valorAfrmmDevido',
    'valorAFRMMDevido',
    'valorAfrmm',
    'valorAFRMM',
    'valor',
    'valorBRL',
    'amount'
  ]);

  if Result <> 0 then
    Exit;

  Result := JsonFloatAny(AObj, [
    'DI.vAFRMM',
    'di.vAFRMM',
    'vAFRMM',
    'vAfrmm',
    'valorAFRMM',
    'valorAfrmm',
    'valorAFRMM',
    'valorAfrmmPago',
    'valorAFRMMPago',
    'valorAfrmmTumPago',
    'valorAFRMMTUMPago',
    'afrmmTumPago',
    'AFRMMTUMPago',
    'valorAfrmmBRL',
    'valorAFRMMBRL',
    'valorAfrmmDevidoBRL',
    'valorAFRMMDevidoBRL',
    'valorFRMM',
    'valorFrmm',
    'valorFrmmBRL',
    'valorAfrmmTum',
    'valorAfrmmPago',
    'valorAfrmmTumPago',
    'valorAFRMMPago',
    'valorAFRMMTUMPago',
    'afrmmPago',
    'afrmmTumPago',
    'valorAFRMMTUM',
    'valorAFRMMTum',
    'afrmmTum',
    'afrmmTUM',
    'AFRMMTUM',
    'valorTum',
    'valorTUM',
    'TUM',
    'declaracao.valorAfrmmTum',
    'declaracao.valorAfrmmPago',
    'declaracao.valorAfrmmDevido',
    'declaracao.valorAfrmm',
    'declaracao.valorAfrmmTumPago',
    'dadosPagamento.valorAfrmmPago',
    'dadosPagamento.valorAfrmmDevido',
    'dadosPagamento.valorAfrmm',
    'dadosPagamento.valorAfrmmTumPago',
    'pagamentos.valorAfrmmPago',
    'pagamentos.valorAfrmmDevido',
    'pagamentos.valorAfrmm',
    'pagamentos.valorAfrmmTumPago',
    'carga.frete.valorAfrmm',
    'carga.frete.valorAfrmm.valor',
    'carga.frete.valorAFRMM',
    'carga.frete.valorAFRMM.valor',
    'carga.frete.valorAfrmmPago',
    'carga.frete.valorAfrmmDevido',
    'carga.frete.valorAfrmmTum',
    'carga.frete.valorAfrmmTumPago',
    'carga.frete.valorAfrmmTumPago.valor',
    'carga.frete.valorAFRMMTUMPago',
    'carga.frete.valorAFRMMTUMPago.valor',
    'carga.frete.afrmmTumPago.valor',
    'declaracao.afrmmTum',
    'declaracao.valorAFRMMTUM',
    'dadosDeclaracao.valorAfrmmTum',
    'dadosDeclaracao.afrmmTum',
    'tributosEstaduais.valorAfrmmTum',
    'tributosEstaduais.afrmmTum',
    'icms.valorAfrmmTum',
    'icms.afrmmTum',
    'dadosComplementares.afrmm.valor',
    'dadosComplementares.afrmm.valorBRL',
    'dadosComplementares.afrmm.valorDevido',
    'dadosComplementares.frmm.valor',
    'dadosComplementares.frmm.valorBRL',
    'dadosComplementares.frmm.valorDevido',
    'afrmm.valor',
    'afrmm.valorBRL',
    'afrmm.valorDevido',
    'afrmm.valorPago',
    'afrmm.valorAfrmmPago',
    'afrmm.valorAfrmmDevido',
    'frmm.valor',
    'frmm.valorBRL',
    'frmm.valorDevido',
    'carga.afrmm.valor',
    'carga.afrmm.valorBRL',
    'carga.frmm.valor',
    'carga.frmm.valorBRL'
  ]);

  if Result <> 0 then
    Exit;

  Result := JsonFindFloatByKeyLocal(AObj, [
    'vAFRMM',
    'vAfrmm',
    'AFRMM',
    'Afrmm',
    'valorAFRMM',
    'valorAfrmm',
    'valorAFRMM',
    'valorAfrmmPago',
    'valorAFRMMPago',
    'valorAfrmmTumPago',
    'valorAFRMMTUMPago',
    'afrmmPago',
    'afrmmTumPago',
    'valorAfrmmBRL',
    'valorAFRMMBRL',
    'valorAfrmmDevidoBRL',
    'valorAFRMMDevidoBRL',
    'FRMM',
    'Frmm',
    'valorFRMM',
    'valorFrmm',
    'valorFrmmBRL',
    'valorAfrmmTum',
    'valorAFRMMTUM',
    'valorAFRMMTum',
    'afrmmTum',
    'afrmmTUM',
    'AFRMMTUM',
    'valorTum',
    'valorTUM',
    'TUM'
  ]);

  if Result <> 0 then
    Exit;

  { Estrutura comum em retornos oficiais: objeto com nomeTributo/descricaoTributo = AFRMM
    e valorPago/valorTributo/valorCalculado no mesmo objeto. }
  Result := JsonFindFloatByNeighborLabelLocal(AObj, [
    'AFRMM/TUM',
    'AFRMM',
    'Afrmm',
    'FRMM'
  ], [
    'valorPago',
    'valorTributo',
    'valorCalculado',
    'valorDevido',
    'valor',
    'amount'
  ]);

  if Result <> 0 then
    Exit;

  { Alguns retornos trazem AFRMM somente em texto de informacoes complementares. }
  Result := JsonFindFloatInStringsByLabelLocal(AObj, [
    'AFRMM',
    'Afrmm',
    'VAFRMM',
    'V. AFRMM',
    'VALOR AFRMM',
    'AFRMM/TUM PAGO',
    'AFRMM / TUM PAGO',
    'AFRMM TUM PAGO',
    'AFRMM PAGO',
    'VALOR AFRMM PAGO',
    'AFRMM / TUM',
    'AFRMM/TUM',
    'AFRMM TUM',
    'VALOR AFRMM / TUM',
    'VALOR AFRMM/TUM',
    'FRMM',
    'VALOR FRMM'
  ]);
end;

function ExtrairVAfrmmTotalDuimpJson(const AJson: string): Double;
var
  Obj: ISuperObject;
begin
  Result := 0;

  if Trim(AJson) = '' then
    Exit;

  Obj := SO(AJson);

  if not Assigned(Obj) then
    Exit;

  Result := ExtrairVAfrmmTotalDuimpObj(Obj);
end;

function ExtrairVAfrmmTotalDuimpTexto(const ATexto: string): Double;
var
  Obj: ISuperObject;
begin
  Result := 0;

  if Trim(ATexto) = '' then
    Exit;

  { Primeiro tenta interpretar como JSON. }
  try
    Obj := SO(ATexto);
    if Assigned(Obj) then
    begin
      Result := ExtrairVAfrmmTotalDuimpObj(Obj);
      if Result <> 0 then
        Exit;
    end;
  except
    Obj := nil;
  end;

  { Depois tenta texto livre, igual ao exibido pelo Portal. }
  Result := ExtractNumberAfterLabelLocal(ATexto, 'AFRMM/TUM pago');
  if Result <> 0 then Exit;

  Result := ExtractNumberAfterLabelLocal(ATexto, 'AFRMM / TUM pago');
  if Result <> 0 then Exit;

  Result := ExtractNumberAfterLabelLocal(ATexto, 'AFRMM TUM pago');
  if Result <> 0 then Exit;

  Result := ExtractNumberAfterLabelLocal(ATexto, 'AFRMM pago');
  if Result <> 0 then Exit;

  Result := ExtractNumberAfterLabelLocal(ATexto, 'Valor AFRMM pago');
  if Result <> 0 then Exit;

  Result := ExtractNumberAfterLabelLocal(ATexto, 'AFRMM/TUM');
  if Result <> 0 then Exit;

  Result := ExtractNumberAfterLabelLocal(ATexto, 'AFRMM / TUM');
  if Result <> 0 then Exit;

  Result := ExtractNumberAfterLabelLocal(ATexto, 'AFRMM');
  if Result <> 0 then Exit;

  Result := ExtractNumberAfterLabelLocal(ATexto, 'Afrmm');
end;

function ExtrairPercentualICMSDuimpObj(AObj: ISuperObject): Double;
begin
  Result := 0;

  if not Assigned(AObj) then
    Exit;

  Result := JsonFloatAny(AObj, [
    'icms.aliquota',
    'icms.aliquotaICMS',
    'icms.aliquotaIcms',
    'icms.percentual',
    'icms.percentualICMS',
    'icms.percentualIcms',
    'icms.pICMS',
    'declaracao.icms.aliquota',
    'declaracao.icms.aliquotaICMS',
    'declaracao.icms.percentual',
    'declaracao.aliquotaICMS',
    'declaracao.aliquotaIcms',
    'tributosEstaduais.icms.aliquota',
    'tributosEstaduais.icms.percentual',
    'tributosEstaduais.aliquotaICMS',
    'dadosIcms.aliquota',
    'dadosIcms.percentual',
    'dadosICMS.aliquota',
    'dadosICMS.percentual',
    'valorAliquotaICMS',
    'percentualICMS',
    'aliquotaICMS',
    'pICMS'
  ]);

  if Result <> 0 then
    Exit;

  Result := JsonFindFloatByKeyLocal(AObj, [
    'aliquotaICMS',
    'aliquotaIcms',
    'percentualICMS',
    'percentualIcms',
    'pICMS',
    'aliquotaInterna',
    'aliquotaEstado',
    'aliquotaUF'
  ]);

  if Result <> 0 then
    Exit;

  Result := JsonFindFloatByNeighborLabelLocal(AObj, [
    'ICMS',
    'ICMS DEVIDO',
    'TRIBUTO ESTADUAL'
  ], [
    'aliquota',
    'aliquotaICMS',
    'percentual',
    'percentualICMS',
    'pICMS'
  ]);
end;

function ExtrairPercentualICMSDuimpJson(const AJson: string): Double;
var
  Obj: ISuperObject;
begin
  Result := 0;

  if Trim(AJson) = '' then
    Exit;

  try
    Obj := SO(AJson);
  except
    Obj := nil;
  end;

  if not Assigned(Obj) then
    Exit;

  Result := ExtrairPercentualICMSDuimpObj(Obj);
end;

procedure AplicarPercentualICMSNosItensNFe(
  const APercentualICMS: Double;
  var AItens: TArrayDuimpNFeItemCompleto
);
var
  I: Integer;
begin
  if Length(AItens) <= 0 then
    Exit;

  if APercentualICMS <= 0 then
    Exit;

  for I := 0 to High(AItens) do
    AItens[I].ICMS.pICMS := APercentualICMS;
end;

procedure AplicarVAfrmmTotalNosItensNFe(
  const AValorAFRMM: Double;
  var AItens: TArrayDuimpNFeItemCompleto
);
var
  I: Integer;
begin
  if Length(AItens) = 0 then
    Exit;

  {
    Regra final para NF-e de importacao DUIMP:
    - se o AFRMM/TUM pago for maior que zero, grava o valor total apenas no
      primeiro item;
    - os demais itens sempre ficam com 0.00;
    - se o valor vier zero, todos os itens ficam explicitamente com 0.00.
  }
  if AValorAFRMM > 0 then
    AItens[0].DI.vAFRMM := AValorAFRMM
  else
    AItens[0].DI.vAFRMM := 0;

  for I := 1 to High(AItens) do
    AItens[I].DI.vAFRMM := 0;
end;

procedure AplicarVAfrmmJsonNosItensNFe(
  const AJsonAFRMM: string;
  var AItens: TArrayDuimpNFeItemCompleto
);
var
  ValorAFRMM: Double;
begin
  ValorAFRMM := ExtrairVAfrmmTotalDuimpJson(AJsonAFRMM);
  AplicarVAfrmmTotalNosItensNFe(ValorAFRMM, AItens);
end;


function OnlyDigits(const S: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9'] then
      Result := Result + S[I];
end;

function XmlEscape(const S: string): string;
begin
  Result := S;
  Result := StringReplace(Result, '&', '&amp;', [rfReplaceAll]);
  Result := StringReplace(Result, '<', '&lt;', [rfReplaceAll]);
  Result := StringReplace(Result, '>', '&gt;', [rfReplaceAll]);
  Result := StringReplace(Result, '"', '&quot;', [rfReplaceAll]);
  Result := StringReplace(Result, '''', '&apos;', [rfReplaceAll]);
end;

function NFeFloat(const AValue: Double; const ADecimals: Integer): string;
begin
  Result := FormatFloat('0.' + StringOfChar('0', ADecimals), AValue);
  Result := StringReplace(Result, ',', '.', [rfReplaceAll]);
end;

function NFeDateOnly(const S: string): string;
begin
  Result := Trim(S);
  if Length(Result) >= 10 then
    Result := Copy(Result, 1, 10);
end;

function ObjPath(AObj: ISuperObject; const APath: string): ISuperObject;
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

function JsonStr(AObj: ISuperObject; const APath: string): string;
var
  V: ISuperObject;
begin
  Result := '';
  V := ObjPath(AObj, APath);
  if not Assigned(V) then
    Exit;
  try
    if V.DataType = stNull then
      Result := ''
    else
      Result := NormalizeJsonText(V.AsString);
  except
    Result := '';
  end;
end;

function JsonInt(AObj: ISuperObject; const APath: string): Integer;
var
  V: ISuperObject;
begin
  Result := 0;
  V := ObjPath(AObj, APath);
  if not Assigned(V) then
    Exit;
  try
    Result := V.AsInteger;
  except
    Result := 0;
  end;
end;

function JsonFloat(AObj: ISuperObject; const APath: string): Double;
var
  V: ISuperObject;
  S: string;
begin
  Result := 0;
  V := ObjPath(AObj, APath);
  if not Assigned(V) then
    Exit;
  try
    if V.DataType in [stInt, stDouble] then
      Result := V.AsDouble
    else if V.DataType = stString then
    begin
      S := NormalizeJsonText(V.AsString);
      Result := ParseFloatFlexLocal(S);
    end
    else if V.DataType = stObject then
      Result := JsonFindFloatByKeyLocal(V, ['valor', 'quantidade', 'amount']);
  except
    Result := 0;
  end;
end;

function JsonStrAny(AObj: ISuperObject; const APaths: array of string): string;
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

function JsonIntAny(AObj: ISuperObject; const APaths: array of string): Integer;
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

function JsonFloatAny(AObj: ISuperObject; const APaths: array of string): Double;
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


function JsonArrayAnyLocal(AObj: ISuperObject; const APaths: array of string): TSuperArray;
var
  I: Integer;
  V: ISuperObject;
begin
  Result := nil;

  if not Assigned(AObj) then
    Exit;

  if AObj.DataType = stArray then
  begin
    Result := AObj.AsArray;
    Exit;
  end;

  for I := Low(APaths) to High(APaths) do
  begin
    V := ObjPath(AObj, APaths[I]);
    if Assigned(V) and (V.DataType = stArray) then
    begin
      Result := V.AsArray;
      Exit;
    end;
  end;
end;

function JsonTributoTipoMatchLocal(AObj: ISuperObject; const ATipoTributo: string): Boolean;
var
  T: string;
  Tipo: string;
begin
  Result := False;

  if not Assigned(AObj) then
    Exit;

  Tipo := UpperCase(Trim(ATipoTributo));

  T := UpperCase(Trim(JsonStrAny(AObj, [
    'tipo',
    'tipoTributo',
    'codigoTributo',
    'tributo.codigo',
    'tributo.sigla',
    'tributo.nome',
    'descricaoTributo',
    'nomeTributo',
    'descricao',
    'nome'
  ])));

  if T = '' then
    Exit;

  if Tipo = 'II' then
    Result := (T = 'II') or (Pos('IMPORTACAO', T) > 0) or (Pos('IMPORTA��O', T) > 0)
  else if Tipo = 'ICMS' then
    Result := Pos('ICMS', T) > 0
  else if Tipo = 'IPI' then
    Result := Pos('IPI', T) > 0
  else if Tipo = 'PIS' then
    Result := Pos('PIS', T) > 0
  else if Tipo = 'COFINS' then
    Result := Pos('COFINS', T) > 0
  else
    Result := Pos(Tipo, T) > 0;
end;

function JsonTributoFloatLocal(AObj: ISuperObject; const APaths: array of string): Double;
begin
  Result := JsonFloatAny(AObj, APaths);

  if Result = 0 then
    Result := JsonFindFloatByKeyLocal(AObj, APaths);
end;

function ArredondarMoedaLocal(const AValor: Double): Double;
begin
  { Delphi 7: arredondamento financeiro positivo/negativo para 2 casas.
    Usado somente em fallback quando base e aliquota ja existem. }
  if AValor >= 0 then
    Result := Int(AValor * 100 + 0.5) / 100
  else
    Result := -Int(Abs(AValor) * 100 + 0.5) / 100;
end;

function MesmoValorMoedaLocal(const A, B: Double): Boolean;
begin
  Result := Abs(A - B) < 0.0001;
end;

function ValorTributoPorBaseAliquotaLocal(
  const AValorAtual: Double;
  const ABase: Double;
  const APercentual: Double
): Double;
var
  ValorCalculado: Double;
begin
  Result := AValorAtual;

  { Corrige somente quando o valor veio zerado ou quando o parser capturou
    indevidamente o percentual no campo de valor. Nao sobrescreve valores
    reais retornados pelo endpoint. }
  if (ABase <= 0) or (APercentual <= 0) then
    Exit;

  if (Result <> 0) and not MesmoValorMoedaLocal(Result, APercentual) then
    Exit;

  ValorCalculado := ArredondarMoedaLocal(ABase * APercentual / 100);
  if ValorCalculado > 0 then
    Result := ValorCalculado;
end;

procedure AplicarCalculoTributosFederaisPorBaseAliquotaLocal(var AItem: TDuimpNFeItemCompleto);
begin
  AItem.II.vImp := ValorTributoPorBaseAliquotaLocal(AItem.II.vImp, AItem.II.vBC, AItem.II.pAliq);
  AItem.IPI.vIPI := ValorTributoPorBaseAliquotaLocal(AItem.IPI.vIPI, AItem.IPI.vBC, AItem.IPI.pIPI);
  AItem.PIS.vImp := ValorTributoPorBaseAliquotaLocal(AItem.PIS.vImp, AItem.PIS.vBC, AItem.PIS.pAliq);
  AItem.COFINS.vImp := ValorTributoPorBaseAliquotaLocal(AItem.COFINS.vImp, AItem.COFINS.vBC, AItem.COFINS.pAliq);
end;

procedure AplicarBasePISCOFINSPorValorAduaneiroLocal(var AItem: TDuimpNFeItemCompleto);
begin
  { PIS/COFINS-Importacao: quando a base especifica nao vier no endpoint,
    usar somente valor aduaneiro real/derivado dos componentes reais do item.
    Nao copiar vProd automaticamente para nao mascarar diferenca entre
    valor da mercadoria e valor aduaneiro. }
  if AItem.ValorAduaneiroBRL <= 0 then
    Exit;

  if AItem.PIS.vBC = 0 then
    AItem.PIS.vBC := AItem.ValorAduaneiroBRL;

  if AItem.COFINS.vBC = 0 then
    AItem.COFINS.vBC := AItem.ValorAduaneiroBRL;
end;

procedure AplicarCalculoPISCOFINSLocal(
  var AItem: TDuimpNFeItemCompleto;
  const AParams: TDuimpNFeParametrosFiscais
);
begin
  { Fallback seguro para vPIS/vCOFINS:
    1) nao sobrescreve valores retornados pelos endpoints;
    2) usa base real retornada ou fallback para valor aduaneiro real;
    3) usa aliquota real retornada, TTCE/ERP em AParams quando informada;
    4) se faltar base ou aliquota, mantem zerado/pendente. }
  AplicarBasePISCOFINSPorValorAduaneiroLocal(AItem);

  if (AItem.PIS.pAliq = 0) and (AParams.AliqPIS > 0) then
    AItem.PIS.pAliq := AParams.AliqPIS;

  if (AItem.COFINS.pAliq = 0) and (AParams.AliqCOFINS > 0) then
    AItem.COFINS.pAliq := AParams.AliqCOFINS;

  AItem.PIS.vImp := ValorTributoPorBaseAliquotaLocal(AItem.PIS.vImp, AItem.PIS.vBC, AItem.PIS.pAliq);
  AItem.COFINS.vImp := ValorTributoPorBaseAliquotaLocal(AItem.COFINS.vImp, AItem.COFINS.vBC, AItem.COFINS.pAliq);
end;

procedure AplicarTributoCalculadoNoItem(
  AObjTributo: ISuperObject;
  const ATipoTributo: string;
  var AItem: TDuimpNFeItemCompleto
);
var
  VBC: Double;
  PAliq: Double;
  VImp: Double;
begin
  if not JsonTributoTipoMatchLocal(AObjTributo, ATipoTributo) then
    Exit;

  VBC := JsonTributoFloatLocal(AObjTributo, [
    'memoriaCalculo.baseCalculoBRL',
    'memoriaCalculo.baseCalculoReduzidaBRL',
    'memoriaCalculo.baseCalculoEspecificaBRL',
    'valorBaseCalculo',
    'valorBaseCalculoBRL',
    'baseCalculo',
    'baseCalculoBRL',
    'valorBC',
    'vBC'
  ]);

  PAliq := JsonTributoFloatLocal(AObjTributo, [
    'memoriaCalculo.valorAliquota',
    'memoriaCalculo.valorAliquotaReduzida',
    'memoriaCalculo.valorAliquotaEspecifica',
    'aliquotaAdValorem',
    'aliquotaAplicada',
    'aliquota',
    'percentualAliquota',
    'percentual',
    'pAliq',
    'pIPI',
    'pPIS',
    'pCOFINS'
  ]);

  VImp := JsonFloatAny(AObjTributo, [
    'valoresBRL.aRecolher',
    'valoresBRL.devido',
    'valoresBRL.calculado',
    'valoresBRL.recolhido',
    'valorARecolher',
    'valorCalculado',
    'valorDevido',
    'valorDevidoBRL',
    'valorPago',
    'valorTributo',
    'valorTributoBRL',
    'vII',
    'vIPI',
    'vPIS',
    'vCOFINS'
  ]);

  if VImp = 0 then
    VImp := JsonFindFloatByExactKeyLocal(AObjTributo, [
      'aRecolher',
      'devido',
      'calculado',
      'recolhido',
      'valorARecolher',
      'valorCalculado',
      'valorDevido',
      'valorDevidoBRL',
      'valorPago',
      'valorTributo',
      'valorTributoBRL',
      'vII',
      'vIPI',
      'vPIS',
      'vCOFINS'
    ]);

  if SameText(ATipoTributo, 'ICMS') then
  begin
    if (AItem.ICMS.vBC = 0) and (VBC > 0) then
      AItem.ICMS.vBC := VBC;
    if (AItem.ICMS.pICMS = 0) and (PAliq > 0) then
      AItem.ICMS.pICMS := PAliq;
    if (AItem.ICMS.vICMS = 0) and (VImp > 0) then
      AItem.ICMS.vICMS := VImp;

    if (AItem.ICMS.pICMS = 0) and (AItem.ICMS.vBC > 0) and (AItem.ICMS.vICMS > 0) then
      AItem.ICMS.pICMS := (AItem.ICMS.vICMS / AItem.ICMS.vBC) * 100;
  end
  else if SameText(ATipoTributo, 'II') then
  begin
    if (AItem.II.vBC = 0) and (VBC > 0) then
      AItem.II.vBC := VBC;
    if (AItem.II.pAliq = 0) and (PAliq > 0) then
      AItem.II.pAliq := PAliq;
    if (AItem.II.vImp = 0) and (VImp > 0) then
      AItem.II.vImp := VImp;
  end
  else if SameText(ATipoTributo, 'IPI') then
  begin
    if (AItem.IPI.vBC = 0) and (VBC > 0) then
      AItem.IPI.vBC := VBC;
    if (AItem.IPI.pIPI = 0) and (PAliq > 0) then
      AItem.IPI.pIPI := PAliq;
    if (AItem.IPI.vIPI = 0) and (VImp > 0) then
      AItem.IPI.vIPI := VImp;

    if (AItem.IPI.pIPI = 0) and (AItem.IPI.vBC > 0) and (AItem.IPI.vIPI > 0) then
      AItem.IPI.pIPI := (AItem.IPI.vIPI / AItem.IPI.vBC) * 100;
  end
  else if SameText(ATipoTributo, 'PIS') then
  begin
    if (AItem.PIS.vBC = 0) and (VBC > 0) then
      AItem.PIS.vBC := VBC;
    if (AItem.PIS.pAliq = 0) and (PAliq > 0) then
      AItem.PIS.pAliq := PAliq;
    if (AItem.PIS.vImp = 0) and (VImp > 0) then
      AItem.PIS.vImp := VImp;

    if (AItem.PIS.pAliq = 0) and (AItem.PIS.vBC > 0) and (AItem.PIS.vImp > 0) then
      AItem.PIS.pAliq := (AItem.PIS.vImp / AItem.PIS.vBC) * 100;
  end
  else if SameText(ATipoTributo, 'COFINS') then
  begin
    if (AItem.COFINS.vBC = 0) and (VBC > 0) then
      AItem.COFINS.vBC := VBC;
    if (AItem.COFINS.pAliq = 0) and (PAliq > 0) then
      AItem.COFINS.pAliq := PAliq;
    if (AItem.COFINS.vImp = 0) and (VImp > 0) then
      AItem.COFINS.vImp := VImp;

    if (AItem.COFINS.pAliq = 0) and (AItem.COFINS.vBC > 0) and (AItem.COFINS.vImp > 0) then
      AItem.COFINS.pAliq := (AItem.COFINS.vImp / AItem.COFINS.vBC) * 100;
  end;
end;

procedure AplicarTributosCalculadosArrayNoItem(
  AArr: TSuperArray;
  var AItem: TDuimpNFeItemCompleto
);
var
  I: Integer;
  Tributo: ISuperObject;
begin
  if not Assigned(AArr) then
    Exit;

  for I := 0 to AArr.Length - 1 do
  begin
    Tributo := AArr.O[I];
    if Assigned(Tributo) then
    begin
      AplicarTributoCalculadoNoItem(Tributo, 'ICMS', AItem);
      AplicarTributoCalculadoNoItem(Tributo, 'II', AItem);
      AplicarTributoCalculadoNoItem(Tributo, 'IPI', AItem);
      AplicarTributoCalculadoNoItem(Tributo, 'PIS', AItem);
      AplicarTributoCalculadoNoItem(Tributo, 'COFINS', AItem);
    end;
  end;
end;

procedure AplicarTributosCalculadosListaNoItem(AObjItem: ISuperObject; var AItem: TDuimpNFeItemCompleto);
var
  Arr: TSuperArray;
begin
  if not Assigned(AObjItem) then
    Exit;

  Arr := JsonArrayAnyLocal(AObjItem, [
    'tributos.tributosCalculados',
    'tributos.mercadoria.tributosCalculados',
    'tributos.listaTributosCalculados',
    'tributos.listaTributos',
    'tributos.lista',
    'listaTributosCalculados',
    'listaTributos',
    'tributosCalculados',
    'pagamentos',
    'dadosPagamento'
  ]);

  AplicarTributosCalculadosArrayNoItem(Arr, AItem);
end;

function GetJsonArrayFromRoot(ARoot: ISuperObject): TSuperArray;
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

procedure LimparItem(var AItem: TDuimpNFeItemCompleto);
begin
  FillChar(AItem, SizeOf(AItem), 0);
  AItem.ICMS.modBC := -1; { -1 = nao informado; permite modBC=0 quando vier do ERP }
  AItem.cEAN := 'SEM GTIN';
  AItem.cEANTrib := 'SEM GTIN';
  AItem.uCom := 'UN';
  AItem.uTrib := 'UN';
  AItem.indTot := 1;
end;

function DuimpParametrosFiscaisPadraoSP: TDuimpNFeParametrosFiscais;
begin
  { Mantido apenas por compatibilidade com chamadas existentes.
    Nao retorna CFOP, CST, origem, aliquotas ou enquadramento pre-estabelecidos.
    Em producao, preencher TDuimpNFeParametrosFiscais pelo ERP/regra fiscal real. }
  FillChar(Result, SizeOf(Result), 0);
end;

function CalcUnitario(const AValor, AQtd: Double): Double;
begin
  Result := 0;
  if AQtd > 0 then
    Result := AValor / AQtd;
end;

procedure CarregarCabecalhoDI(
  ARootGeral: ISuperObject;
  const ANumeroDuimp: string;
  var AItem: TDuimpNFeItemCompleto
);
var
  Local: string;
begin
  AItem.DI.nDI := ANumeroDuimp;

  AItem.DI.dDI := NFeDateOnly(JsonStrAny(ARootGeral, [
    'dataRegistro',
    'identificacao.dataRegistro',
    'declaracao.dataRegistro',
    'dadosGerais.dataRegistro'
  ]));

  AItem.DI.dDesemb := NFeDateOnly(JsonStrAny(ARootGeral, [
    'desembaraco.data',
    'desembaraco.dataDesembaraco',
    'desembaraco.dDesemb',
    'dataDesembaraco',
    'dDesemb',
    'situacao.dataDesembaraco',
    'historicoDesembaraco.dataEvento',
    'dadosGerais.dataDesembaraco'
  ]));

  if AItem.DI.dDesemb = '' then
    AItem.DI.dDesemb := AItem.DI.dDI;

  AItem.DI.UFDesemb := JsonStrAny(ARootGeral, [
    'despacho.ufDesembaraco',
    'despacho.ufDesemb',
    'carga.unidadeDeclarada.uf',
    'desembaraco.uf',
    'desembaraco.UFDesemb',
    'ufDesembaraco',
    'UFDesemb',
    'localDesembaraco.uf',
    'localizacao.uf',
    'recinto.uf',
    'unidadeDespacho.uf',
    'urfDespacho.uf'
  ]);

  { Sem fallback fixo para UFDesemb. }

  Local := JsonStrAny(ARootGeral, [
    'despacho.localDesembaraco.nome',
    'despacho.localDesembaraco.descricao',
    'despacho.localDesembaraco',
    'desembaraco.local.nome',
    'desembaraco.local.descricao',
    'desembaraco.local',
    'desembaraco.localDesembaraco.nome',
    'desembaraco.localDesembaraco.descricao',
    'desembaraco.localDesembaraco',
    'carga.unidadeDeclarada.nome',
    'carga.unidadeDeclarada.codigo',
    'localDesembaraco.nome',
    'localizacao.local',
    'recinto.nome',
    'unidadeDespacho.nome',
    'urfDespacho.codigo'
  ]);

  { Sem fallback fixo para local de desembaraco. }

  AItem.DI.xLocDesemb := Local;

  AItem.DI.CNPJ := OnlyDigits(JsonStrAny(ARootGeral, [
    'importador.numeroIdentificacao',
    'importador.cnpj',
    'importador.cpfCnpj',
    'declarante.numeroIdentificacao'
  ]));

  AItem.DI.UFTerceiro := JsonStrAny(ARootGeral, [
    'adquirente.uf',
    'terceiro.uf',
    'ufTerceiro'
  ]);

  AItem.DI.vAFRMM := ExtrairVAfrmmTotalDuimpObj(ARootGeral);
end;

procedure CarregarProduto(AObjItem: ISuperObject; var AItem: TDuimpNFeItemCompleto);
begin
  AItem.NumeroItemDuimp := JsonIntAny(AObjItem, [
    'numeroItem',
    'identificacao.numeroItem',
    'numeroItemDuimp',
    'item.numero',
    'item',
    'numero'
  ]);

  AItem.CodigoProduto := JsonStrAny(AObjItem, [
    'produto.codigo',
    'mercadoria.produto.codigo',
    'mercadoria.codigoProduto',
    'catalogoProduto.codigo',
    'codigoProduto'
  ]);

  AItem.VersaoProduto := JsonStrAny(AObjItem, [
    'produto.versao',
    'mercadoria.produto.versao',
    'mercadoria.versaoProduto',
    'catalogoProduto.versao',
    'versaoProduto'
  ]);

  AItem.CpfCnpjRaiz := OnlyDigits(JsonStrAny(AObjItem, [
    'produto.cpfCnpjRaiz',
    'produto.niResponsavel',
    'produto.niResponsavel.numero',
    'produto.niResponsavel.cpfCnpjRaiz',
    'catalogoProduto.cpfCnpjRaiz',
    'catalogoProduto.niResponsavel',
    'niResponsavel',
    'cpfCnpjRaiz'
  ]));

  AItem.cProd := AItem.CodigoProduto;
  if AItem.cProd = '' then
    AItem.cProd := IntToStr(AItem.NumeroItemDuimp);

  AItem.xProd := JsonStrAny(AObjItem, [
    'mercadoria.descricao',
    'mercadoria.descricaoCompleta',
    'produto.denominacao',
    'produto.descricao',
    'catalogoProduto.denominacao',
    'catalogoProduto.descricao',
    'descricaoMercadoria',
    'descricaoComplementar',
    'descricao'
  ]);

  if AItem.xProd = '' then
    AItem.xProd := JsonFindStrByKeyLocal(AObjItem, ['denominacao', 'descricao']);

  AItem.NCM := OnlyDigits(JsonStrAny(AObjItem, [
    'mercadoria.ncm',
    'ncm',
    'produto.ncm',
    'catalogoProduto.ncm'
  ]));

  { Sem descricao fixa: xProd deve vir da DUIMP/CATP/ERP. }

  AItem.CEST := OnlyDigits(JsonStrAny(AObjItem, [
    'mercadoria.cest',
    'produto.cest',
    'cest'
  ]));

  AItem.uCom := JsonStrAny(AObjItem, [
    'mercadoria.unidadeComercializada.codigo',
    'mercadoria.unidadeMedida.codigo',
    'unidadeComercial.codigo',
    'unidade.codigo'
  ]);
  if AItem.uCom = '' then
    AItem.uCom := 'UN';

  AItem.uTrib := AItem.uCom;

  AItem.qCom := JsonFloatAny(AObjItem, [
    'mercadoria.quantidadeComercializada.valor',
    'mercadoria.quantidadeComercializada.quantidade',
    'mercadoria.quantidadeComercializada',
    'mercadoria.quantidadeUnidadeComercializada',
    'mercadoria.quantidadeComercial',
    'mercadoria.quantidade.valor',
    'mercadoria.quantidade.quantidade',
    'mercadoria.quantidade',
    'quantidadeComercializada.valor',
    'quantidadeComercializada.quantidade',
    'quantidadeComercializada',
    'quantidadeUnidadeComercializada',
    'quantidadeComercial',
    'quantidade.valor',
    'quantidade.quantidade',
    'quantidade'
  ]);

  if AItem.qCom = 0 then
    AItem.qCom := JsonFloatAny(AObjItem, [
      'mercadoria.quantidadeEstatistica.valor',
      'mercadoria.quantidadeEstatistica.quantidade',
      'mercadoria.quantidadeEstatistica',
      'quantidadeEstatistica.valor',
      'quantidadeEstatistica.quantidade',
      'quantidadeEstatistica'
    ]);

  if AItem.qCom = 0 then
    AItem.qCom := JsonFindFloatByKeyLocal(AObjItem, ['quantidadeComercializada', 'quantidadeComercial', 'quantidadeEstatistica']);

  AItem.qTrib := AItem.qCom;

  AItem.PesoLiquido := JsonFloatAny(AObjItem, [
    'mercadoria.pesoLiquido',
    'pesoLiquido'
  ]);

  AItem.PesoBruto := JsonFloatAny(AObjItem, [
    'mercadoria.pesoBruto',
    'pesoBruto'
  ]);
end;

procedure CarregarValores(AObjItem: ISuperObject; var AItem: TDuimpNFeItemCompleto);
begin
  {
    ATENCAO:
    No retorno da DUIMP registrada, alguns valores podem vir em nomes diferentes
    conforme o endpoint/versao do payload. Por isso esta rotina tenta primeiro os
    caminhos diretos conhecidos e depois faz fallback recursivo por chaves.

    Regra principal para NF-e:
    - vProd deve representar o valor da mercadoria no local de embarque em BRL;
    - quando nao vier explicitamente, pode ser inferido como:
        valorAduaneiroBRL - freteBRL - seguroBRL
      pois valor aduaneiro normalmente consolida mercadoria + frete + seguro.
  }

  AItem.ValorAduaneiroBRL := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.valorAduaneiroBRL',
    'tributos.mercadoria.valorAduaneiro.valorBRL',
    'tributos.mercadoria.valorAduaneiro.valorTotalBRL',
    'mercadoria.valorAduaneiroBRL',
    'mercadoria.valorAduaneiro.valorBRL',
    'mercadoria.valorAduaneiro.valorTotalBRL',
    'valorAduaneiroBRL',
    'valorAduaneiro.valorBRL',
    'valorAduaneiro.valorTotalBRL',
    'valoresCalculados.valorAduaneiro.valorBRL',
    'valoresCalculados.valorAduaneiro.valorTotalBRL'
  ]);

  if AItem.ValorAduaneiroBRL = 0 then
    AItem.ValorAduaneiroBRL := JsonFindFloatByKeyLocal(AObjItem, [
      'valorAduaneiroBRL',
      'valorAduaneiro'
    ]);

  AItem.ValorLocalEmbarqueBRL := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.valorTotalLocalEmbarqueBRL',
    'tributos.mercadoria.valorLocalEmbarqueBRL',
    'tributos.mercadoria.valorMercadoriaLocalEmbarqueBRL',
    'mercadoria.valorTotalLocalEmbarqueBRL',
    'mercadoria.valorLocalEmbarqueBRL',
    'mercadoria.valorMercadoriaLocalEmbarqueBRL',
    'mercadoriaLocalEmbarque.valorBRL',
    'mercadoriaLocalEmbarque.valorTotalBRL',
    'condicaoVenda.valorBRL',
    'condicaoVenda.valorTotalBRL',
    'condicaoVenda.valorMercadoriaBRL',
    'condicaoVenda.valorMercadoria.valorBRL',
    'valorTotalLocalEmbarqueBRL',
    'valorLocalEmbarqueBRL',
    'valorMercadoriaLocalEmbarqueBRL',
    'valorMercadoriaBRL',
    'valorTotalMercadoriaBRL',
    'vProd'
  ]);

  if AItem.ValorLocalEmbarqueBRL = 0 then
    AItem.ValorLocalEmbarqueBRL := JsonFindFloatByKeyLocal(AObjItem, [
      'valorTotalLocalEmbarqueBRL',
      'valorLocalEmbarqueBRL',
      'valorMercadoriaLocalEmbarqueBRL',
      'valorMercadoriaBRL',
      'valorTotalMercadoriaBRL',
      'valorMercadoria'
    ]);

  AItem.ValorLocalEmbarqueUSD := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.valorTotalLocalEmbarqueUSD',
    'tributos.mercadoria.valorLocalEmbarqueUSD',
    'mercadoria.valorTotalLocalEmbarqueUSD',
    'mercadoria.valorLocalEmbarqueUSD',
    'mercadoriaLocalEmbarque.valorUSD',
    'mercadoriaLocalEmbarque.valorTotalUSD',
    'valorTotalLocalEmbarqueUSD',
    'valorLocalEmbarqueUSD'
  ]);

  AItem.vFrete := JsonFloatAny(AObjItem, [
    'condicaoVenda.frete.valorBRL',
    'condicaoVenda.frete.valorTotalBRL',
    'carga.frete.valorBRL',
    'frete.valorBRL',
    'frete.valorTotalBRL',
    'valorFreteBRL'
  ]);

  if AItem.vFrete = 0 then
    AItem.vFrete := JsonFindFloatByKeyLocal(AObjItem, [
      'valorFreteBRL',
      'frete'
    ]);

  AItem.vSeg := JsonFloatAny(AObjItem, [
    'condicaoVenda.seguro.valorBRL',
    'condicaoVenda.seguro.valorTotalBRL',
    'seguro.valorBRL',
    'seguro.valorTotalBRL',
    'valorSeguroBRL'
  ]);

  AItem.vDesc := JsonFloatAny(AObjItem, [
    'condicaoVenda.desconto.valorBRL',
    'desconto.valorBRL',
    'valorDescontoBRL'
  ]);

  AItem.vOutro := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.despesasAduaneiras.valorBRL',
    'tributos.mercadoria.despesasAduaneiras.valorTotalBRL',
    'tributos.mercadoria.valorDespesasAduaneirasBRL',
    'tributos.mercadoria.valorOutrasDespesasAduaneirasBRL',
    'mercadoria.despesasAduaneiras.valorBRL',
    'mercadoria.despesasAduaneiras.valorTotalBRL',
    'despesasAduaneiras.valorBRL',
    'despesasAduaneiras.valorTotalBRL',
    'outrasDespesasAduaneiras.valorBRL',
    'outrasDespesasAduaneiras.valorTotalBRL',
    'taxaSiscomex.valorBRL',
    'taxaSiscomex.valorTotalBRL',
    'taxaUtilizacaoSiscomex.valorBRL',
    'taxaUtilizacaoSiscomex.valorTotalBRL',
    'despesaAduaneira.valorBRL',
    'despesaAduaneira.valorTotalBRL',
    'valorTaxaSiscomexBRL',
    'valorTaxaUtilizacaoSiscomexBRL',
    'valorSiscomexBRL',
    'valorDespesasAduaneirasBRL',
    'valorDespesaAduaneiraBRL',
    'valorOutrasDespesasAduaneirasBRL',
    'valorOutrasDespesasBRL',
    'vOutro'
  ]);

  if AItem.vOutro = 0 then
    AItem.vOutro := JsonFindFloatByKeyLocal(AObjItem, [
      'valorDespesasAduaneirasBRL',
      'valorDespesaAduaneiraBRL',
      'valorOutrasDespesasAduaneirasBRL',
      'valorTaxaSiscomexBRL',
      'valorTaxaUtilizacaoSiscomexBRL',
      'valorSiscomexBRL',
      'taxaSiscomex',
      'taxaUtilizacaoSiscomex',
      'vOutro'
    ]);

  AItem.vProd := AItem.ValorLocalEmbarqueBRL;

  if (AItem.vProd = 0) and (AItem.ValorAduaneiroBRL > 0) then
    AItem.vProd := AItem.ValorAduaneiroBRL - AItem.vFrete - AItem.vSeg;

  {
    Ultimo fallback: se nao foi possivel separar o valor da mercadoria, mas o
    valor aduaneiro existe, usa o proprio valor aduaneiro para impedir XML sem
    vProd. Essa situacao deve ser sinalizada depois na conciliacao fiscal.
  }
  if (AItem.vProd = 0) and (AItem.ValorAduaneiroBRL > 0) then
    AItem.vProd := AItem.ValorAduaneiroBRL;

  if AItem.vProd < 0 then
    AItem.vProd := 0;

  { Valor aduaneiro derivado somente quando os componentes reais do endpoint
    ja foram encontrados. Nao usa valor fiscal fixo. }
  if (AItem.ValorAduaneiroBRL = 0) and
     ((AItem.vProd > 0) or (AItem.vFrete > 0) or (AItem.vSeg > 0)) then
    AItem.ValorAduaneiroBRL := AItem.vProd + AItem.vFrete + AItem.vSeg;

  AItem.vUnCom := CalcUnitario(AItem.vProd, AItem.qCom);
  AItem.vUnTrib := CalcUnitario(AItem.vProd, AItem.qTrib);
end;

procedure CarregarAdicao(AObjItem: ISuperObject; const ASeqPadrao: Integer; var AItem: TDuimpNFeItemCompleto);
var
  ObjTexto: ISuperObject;
begin
  AItem.DI.nAdicao := JsonIntAny(AObjItem, [
    'adicao.numero',
    'numeroAdicao',
    'nAdicao'
  ]);
  if AItem.DI.nAdicao = 0 then
    AItem.DI.nAdicao := ASeqPadrao;

  AItem.DI.nSeqAdic := JsonIntAny(AObjItem, [
    'adicao.numeroSequencial',
    'numeroSequencialAdicao',
    'nSeqAdic'
  ]);
  if AItem.DI.nSeqAdic = 0 then
    AItem.DI.nSeqAdic := 1;

  AItem.DI.cFabricante := JsonStrAny(AObjItem, [
    'fabricante.codigo',
    'mercadoria.fabricante.codigo',
    'produto.fabricante.codigo',
    'cFabricante'
  ]);

  AItem.DI.cExportador := JsonStrAny(AObjItem, [
    'exportador.codigo',
    'exportador.nome',
    'fornecedor.codigo',
    'fornecedor.nome',
    'cExportador'
  ]);

  if AItem.DI.cFabricante = '' then
    AItem.DI.cFabricante := JsonFindStrByKeyLocal(AObjItem, ['fabricante']);

  { Alguns retornos da DUIMP trazem fabricante como objeto JSON.
    Para a NF-e, cFabricante deve receber apenas o codigo, nunca o objeto inteiro. }
  if (Pos('{', AItem.DI.cFabricante) > 0) and (Pos('}', AItem.DI.cFabricante) > 0) then
  begin
    ObjTexto := nil;
    try
      ObjTexto := SO(AItem.DI.cFabricante);
      if Assigned(ObjTexto) then
      begin
        if Trim(ObjTexto.S['codigo']) <> '' then
          AItem.DI.cFabricante := Trim(ObjTexto.S['codigo'])
        else if Trim(ObjTexto.S['nome']) <> '' then
          AItem.DI.cFabricante := Trim(ObjTexto.S['nome']);
      end;
    except
    end;
  end;

  if AItem.DI.cFabricante = '' then
    AItem.DI.cFabricante := 'NAO INFORMADO';

  if AItem.DI.cExportador = '' then
    AItem.DI.cExportador := JsonFindStrByKeyLocal(AObjItem, ['exportador', 'fornecedor']);

  if AItem.DI.cExportador = '' then
    AItem.DI.cExportador := 'NAO INFORMADO';

  AItem.DI.vDescDI := AItem.vDesc;

  AItem.DI.nDraw := JsonStrAny(AObjItem, [
    'drawback.numeroAtoConcessorio',
    'nDraw'
  ]);
end;

procedure CarregarImpostosFederais(AObjItem: ISuperObject; var AItem: TDuimpNFeItemCompleto);
begin
  { II }
  AItem.II.vBC := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.ii.baseCalculo',
    'tributos.mercadoria.ii.baseCalculoBRL',
    'tributos.mercadoria.ii.valorBaseCalculo',
    'tributos.ii.baseCalculo',
    'tributos.ii.baseCalculoBRL',
    'tributos.impostoImportacao.baseCalculo',
    'tributos.impostoImportacao.baseCalculoBRL',
    'impostos.ii.vBC',
    'impostos.impostoImportacao.vBC',
    'ii.baseCalculo',
    'impostoImportacao.baseCalculo'
  ]);

  if AItem.II.vBC = 0 then
    AItem.II.vBC := JsonFindFloatByKeyLocal(AObjItem, ['baseCalculoII', 'baseCalculoImpostoImportacao']);


  AItem.II.pAliq := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.ii.aliquota',
    'tributos.mercadoria.ii.aliquotaAdValorem',
    'tributos.ii.aliquotaAdValorem',
    'tributos.ii.aliquota',
    'tributos.impostoImportacao.aliquotaAdValorem',
    'tributos.impostoImportacao.aliquota',
    'impostos.ii.pAliq',
    'ii.aliquota'
  ]);

  AItem.II.vImp := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.ii.valorARecolher',
    'tributos.mercadoria.ii.valorDevido',
    'tributos.mercadoria.ii.valorCalculado',
    'tributos.mercadoria.ii.valor',
    'tributos.ii.valorDevido',
    'tributos.ii.valorDevidoBRL',
    'tributos.ii.valor',
    'tributos.impostoImportacao.valorDevido',
    'tributos.impostoImportacao.valorDevidoBRL',
    'tributos.impostoImportacao.valor',
    'impostos.ii.vII',
    'ii.valorDevido',
    'ii.valor'
  ]);

  if AItem.II.vImp = 0 then
    AItem.II.vImp := JsonFindFloatByKeyLocal(AObjItem, ['valorII', 'valorImpostoImportacao']);

  { IPI }
  if AItem.IPI.CST = '' then
    AItem.IPI.CST := JsonStrAny(AObjItem, [
      'tributos.mercadoria.ipi.cst',
      'tributos.ipi.cst',
      'ipi.cst',
      'impostos.ipi.CST'
    ]);

  if AItem.IPI.cEnq = '' then
    AItem.IPI.cEnq := JsonStrAny(AObjItem, [
      'tributos.mercadoria.ipi.cEnq',
      'tributos.ipi.cEnq',
      'ipi.cEnq',
      'impostos.ipi.cEnq'
    ]);

  AItem.IPI.vBC := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.ipi.baseCalculo',
    'tributos.mercadoria.ipi.baseCalculoBRL',
    'tributos.mercadoria.ipi.valorBaseCalculo',
    'tributos.ipi.baseCalculo',
    'tributos.ipi.baseCalculoBRL',
    'tributos.ipi.vBC',
    'impostos.ipi.vBC',
    'ipi.baseCalculo',
    'ipi.vBC'
  ]);

  if AItem.IPI.vBC = 0 then
    AItem.IPI.vBC := JsonFindFloatByKeyLocal(AObjItem, ['baseCalculoIPI', 'vBCIPI']);

  AItem.IPI.pIPI := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.ipi.aliquota',
    'tributos.mercadoria.ipi.aliquotaAdValorem',
    'tributos.mercadoria.ipi.percentual',
    'tributos.ipi.aliquota',
    'tributos.ipi.aliquotaAdValorem',
    'tributos.ipi.pIPI',
    'impostos.ipi.pIPI',
    'ipi.aliquota',
    'ipi.pIPI'
  ]);

  if AItem.IPI.pIPI = 0 then
    AItem.IPI.pIPI := JsonFindFloatByKeyLocal(AObjItem, ['aliquotaIPI', 'pIPI']);

  AItem.IPI.vIPI := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.ipi.valorARecolher',
    'tributos.mercadoria.ipi.valorDevido',
    'tributos.mercadoria.ipi.valorCalculado',
    'tributos.mercadoria.ipi.valor',
    'tributos.ipi.valorDevido',
    'tributos.ipi.valorDevidoBRL',
    'tributos.ipi.valor',
    'tributos.ipi.vIPI',
    'impostos.ipi.vIPI',
    'ipi.valorDevido',
    'ipi.valor',
    'ipi.vIPI'
  ]);

  if AItem.IPI.vIPI = 0 then
    AItem.IPI.vIPI := JsonFindFloatByKeyLocal(AObjItem, ['valorIPI', 'vIPI']);

  { PIS-Importacao }
  if AItem.PIS.CST = '' then
    AItem.PIS.CST := JsonStrAny(AObjItem, [
      'tributos.mercadoria.pis.cst',
      'tributos.mercadoria.pisPasep.cst',
      'tributos.pis.cst',
      'tributos.pisPasep.cst',
      'pis.cst',
      'pisPasep.cst',
      'impostos.pis.CST'
    ]);

  AItem.PIS.vBC := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.pis.baseCalculo',
    'tributos.mercadoria.pis.baseCalculoBRL',
    'tributos.mercadoria.pis.valorBaseCalculo',
    'tributos.mercadoria.pisPasep.baseCalculo',
    'tributos.mercadoria.pisPasep.baseCalculoBRL',
    'tributos.pisPasep.baseCalculo',
    'tributos.pisPasep.baseCalculoBRL',
    'tributos.pisPasep.vBC',
    'tributos.pis.baseCalculo',
    'tributos.pis.baseCalculoBRL',
    'tributos.pis.vBC',
    'impostos.pis.vBC',
    'pisPasep.baseCalculo',
    'pis.baseCalculo',
    'pis.vBC'
  ]);

  if AItem.PIS.vBC = 0 then
    AItem.PIS.vBC := JsonFindFloatByKeyLocal(AObjItem, ['baseCalculoPIS', 'baseCalculoPisPasep', 'vBCPIS']);

  AItem.PIS.pAliq := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.pis.aliquota',
    'tributos.mercadoria.pis.percentual',
    'tributos.mercadoria.pis.pPIS',
    'tributos.mercadoria.pisPasep.aliquota',
    'tributos.pisPasep.aliquota',
    'tributos.pisPasep.pPIS',
    'tributos.pis.aliquota',
    'tributos.pis.pPIS',
    'impostos.pis.pPIS',
    'pisPasep.aliquota',
    'pis.aliquota',
    'pis.pPIS'
  ]);

  if AItem.PIS.pAliq = 0 then
    AItem.PIS.pAliq := JsonFindFloatByKeyLocal(AObjItem, ['aliquotaPIS', 'aliquotaPisPasep', 'pPIS']);

  AItem.PIS.vImp := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.pis.valorARecolher',
    'tributos.mercadoria.pis.valorDevido',
    'tributos.mercadoria.pis.valorCalculado',
    'tributos.mercadoria.pis.valor',
    'tributos.mercadoria.pis.vPIS',
    'tributos.mercadoria.pisPasep.valorARecolher',
    'tributos.mercadoria.pisPasep.valorDevido',
    'tributos.pisPasep.valorDevido',
    'tributos.pisPasep.valorDevidoBRL',
    'tributos.pisPasep.valor',
    'tributos.pisPasep.vPIS',
    'tributos.pis.valorDevido',
    'tributos.pis.valorDevidoBRL',
    'tributos.pis.valor',
    'tributos.pis.vPIS',
    'impostos.pis.vPIS',
    'pisPasep.valorDevido',
    'pis.valorDevido',
    'pis.vPIS'
  ]);

  if AItem.PIS.vImp = 0 then
    AItem.PIS.vImp := JsonFindFloatByKeyLocal(AObjItem, ['valorPIS', 'valorPisPasep', 'vPIS']);

  { COFINS-Importacao }
  if AItem.COFINS.CST = '' then
    AItem.COFINS.CST := JsonStrAny(AObjItem, [
      'tributos.mercadoria.cofins.cst',
      'tributos.cofins.cst',
      'cofins.cst',
      'impostos.cofins.CST'
    ]);

  AItem.COFINS.vBC := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.cofins.baseCalculo',
    'tributos.mercadoria.cofins.baseCalculoBRL',
    'tributos.mercadoria.cofins.valorBaseCalculo',
    'tributos.cofins.baseCalculo',
    'tributos.cofins.baseCalculoBRL',
    'tributos.cofins.vBC',
    'impostos.cofins.vBC',
    'cofins.baseCalculo',
    'cofins.vBC'
  ]);

  if AItem.COFINS.vBC = 0 then
    AItem.COFINS.vBC := JsonFindFloatByKeyLocal(AObjItem, ['baseCalculoCOFINS', 'vBCCOFINS']);

  AItem.COFINS.pAliq := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.cofins.aliquota',
    'tributos.mercadoria.cofins.percentual',
    'tributos.mercadoria.cofins.pCOFINS',
    'tributos.cofins.aliquota',
    'tributos.cofins.pCOFINS',
    'impostos.cofins.pCOFINS',
    'cofins.aliquota',
    'cofins.pCOFINS'
  ]);

  if AItem.COFINS.pAliq = 0 then
    AItem.COFINS.pAliq := JsonFindFloatByKeyLocal(AObjItem, ['aliquotaCOFINS', 'pCOFINS']);

  AItem.COFINS.vImp := JsonFloatAny(AObjItem, [
    'tributos.mercadoria.cofins.valorARecolher',
    'tributos.mercadoria.cofins.valorDevido',
    'tributos.mercadoria.cofins.valorCalculado',
    'tributos.mercadoria.cofins.valor',
    'tributos.mercadoria.cofins.vCOFINS',
    'tributos.cofins.valorDevido',
    'tributos.cofins.valorDevidoBRL',
    'tributos.cofins.valor',
    'tributos.cofins.vCOFINS',
    'impostos.cofins.vCOFINS',
    'cofins.valorDevido',
    'cofins.valor',
    'cofins.vCOFINS'
  ]);

  if AItem.COFINS.vImp = 0 then
    AItem.COFINS.vImp := JsonFindFloatByKeyLocal(AObjItem, ['valorCOFINS', 'vCOFINS']);

  { Estrutura oficial por item: tributos.listaTributosCalculados[].
    Prevalece quando a API retornar tipoTributo + valorBaseCalculo + aliquotaAdValorem. }
  AplicarTributosCalculadosListaNoItem(AObjItem, AItem);
  AplicarBasePISCOFINSPorValorAduaneiroLocal(AItem);
  AplicarCalculoTributosFederaisPorBaseAliquotaLocal(AItem);
end;



procedure RecalcularTributosNFeImportacaoItem(
  var AItem: TDuimpNFeItemCompleto;
  const AParams: TDuimpNFeParametrosFiscais
);
begin
  { Regra DUIMP/NF-e: nao calcular nem inventar tributos.
    Bases, aliquotas e valores de II/IPI/PIS/COFINS/ICMS devem vir dos
    endpoints consultados: DUIMP, itens, consulta completa ou TTCE.
    Esta rotina recalcula somente valores unitarios a partir de valores
    efetivamente retornados e quantidade retornada. }

  if (AItem.qCom > 0) and (AItem.vProd > 0) then
    AItem.vUnCom := AItem.vProd / AItem.qCom;

  if (AItem.qTrib > 0) and (AItem.vProd > 0) then
    AItem.vUnTrib := AItem.vProd / AItem.qTrib;

  AplicarCalculoPISCOFINSLocal(AItem, AParams);
  AplicarCalculoTributosFederaisPorBaseAliquotaLocal(AItem);
end;

procedure AplicarValoresObjNoItem(AObj: ISuperObject; var AItem: TDuimpNFeItemCompleto);
begin
  if not Assigned(AObj) then
    Exit;

  { Valor aduaneiro e valor da mercadoria podem vir nos endpoints de valores calculados. }
  if AItem.ValorAduaneiroBRL = 0 then
    AItem.ValorAduaneiroBRL := JsonFloatAny(AObj, [
      'tributos.mercadoria.valorAduaneiroBRL',
      'tributos.mercadoria.valorAduaneiro.valorBRL',
      'tributos.mercadoria.valorAduaneiro.valorTotalBRL',
      'valorAduaneiroBRL',
      'valorAduaneiro.valorBRL',
      'valorAduaneiro.valorTotalBRL',
      'mercadoria.valorAduaneiroBRL'
    ]);

  if AItem.ValorAduaneiroBRL = 0 then
    AItem.ValorAduaneiroBRL := JsonFindFloatByKeyLocal(AObj, [
      'valorAduaneiroBRL',
      'valorAduaneiro'
    ]);

  if AItem.vProd = 0 then
  begin
    AItem.vProd := JsonFloatAny(AObj, [
      'tributos.mercadoria.valorTotalLocalEmbarqueBRL',
      'valorTotalLocalEmbarqueBRL',
      'valorLocalEmbarqueBRL',
      'valorMercadoriaBRL',
      'valorTotalMercadoriaBRL',
      'vProd'
    ]);

    if AItem.vProd = 0 then
      AItem.vProd := JsonFindFloatByKeyLocal(AObj, [
        'valorTotalLocalEmbarqueBRL',
        'valorLocalEmbarqueBRL',
        'valorMercadoriaBRL',
        'valorTotalMercadoriaBRL',
        'valorMercadoria'
      ]);
  end;

  if AItem.vOutro = 0 then
    AItem.vOutro := JsonFloatAny(AObj, [
      'tributos.mercadoria.despesasAduaneiras.valorBRL',
      'tributos.mercadoria.despesasAduaneiras.valorTotalBRL',
      'tributos.mercadoria.valorDespesasAduaneirasBRL',
      'tributos.mercadoria.valorOutrasDespesasAduaneirasBRL',
      'despesasAduaneiras.valorBRL',
      'despesasAduaneiras.valorTotalBRL',
      'outrasDespesasAduaneiras.valorBRL',
      'taxaSiscomex.valorBRL',
      'taxaSiscomex.valorTotalBRL',
      'taxaUtilizacaoSiscomex.valorBRL',
      'taxaUtilizacaoSiscomex.valorTotalBRL',
      'despesaAduaneira.valorBRL',
      'despesaAduaneira.valorTotalBRL',
      'valorTaxaSiscomexBRL',
      'valorTaxaUtilizacaoSiscomexBRL',
      'valorSiscomexBRL',
      'valorDespesasAduaneirasBRL',
      'valorOutrasDespesasAduaneirasBRL',
      'valorOutrasDespesasBRL',
      'vOutro'
    ]);

  if AItem.vOutro = 0 then
    AItem.vOutro := JsonFindFloatByKeyLocal(AObj, [
      'valorDespesasAduaneirasBRL',
      'valorDespesaAduaneiraBRL',
      'valorOutrasDespesasAduaneirasBRL',
      'valorTaxaSiscomexBRL',
      'valorTaxaUtilizacaoSiscomexBRL',
      'valorSiscomexBRL',
      'taxaSiscomex',
      'taxaUtilizacaoSiscomex',
      'vOutro'
    ]);

  { II }
  if AItem.II.vBC = 0 then
    AItem.II.vBC := JsonFloatAny(AObj, [
      'tributos.mercadoria.ii.baseCalculo',
      'tributos.mercadoria.ii.baseCalculoBRL',
      'tributos.mercadoria.ii.valorBaseCalculo',
      'tributos.ii.baseCalculo',
      'tributos.impostoImportacao.baseCalculo',
      'impostoImportacao.baseCalculo',
      'ii.baseCalculo'
    ]);

  if AItem.II.pAliq = 0 then
    AItem.II.pAliq := JsonFloatAny(AObj, [
      'tributos.mercadoria.ii.aliquota',
      'tributos.mercadoria.ii.aliquotaAdValorem',
      'tributos.ii.aliquota',
      'tributos.ii.aliquotaAdValorem',
      'tributos.impostoImportacao.aliquota',
      'impostoImportacao.aliquota',
      'ii.aliquota'
    ]);

  if AItem.II.vImp = 0 then
    AItem.II.vImp := JsonFloatAny(AObj, [
      'tributos.mercadoria.ii.valorARecolher',
      'tributos.mercadoria.ii.valorDevido',
      'tributos.mercadoria.ii.valorCalculado',
      'tributos.ii.valorDevido',
      'tributos.ii.valorDevidoBRL',
      'tributos.impostoImportacao.valorDevido',
      'impostoImportacao.valorDevido',
      'ii.valorDevido'
    ]);

  if AItem.II.vImp = 0 then
    AItem.II.vImp := JsonFindFloatByKeyLocal(AObj, ['valorII', 'vII', 'valorImpostoImportacao']);

  { IPI }
  if AItem.IPI.vBC = 0 then
    AItem.IPI.vBC := JsonFloatAny(AObj, [
      'tributos.mercadoria.ipi.baseCalculo',
      'tributos.mercadoria.ipi.baseCalculoBRL',
      'tributos.mercadoria.ipi.valorBaseCalculo',
      'tributos.ipi.baseCalculo',
      'ipi.baseCalculo',
      'impostos.ipi.vBC'
    ]);

  if AItem.IPI.pIPI = 0 then
    AItem.IPI.pIPI := JsonFloatAny(AObj, [
      'tributos.mercadoria.ipi.aliquota',
      'tributos.mercadoria.ipi.aliquotaAdValorem',
      'tributos.ipi.aliquota',
      'tributos.ipi.pIPI',
      'ipi.aliquota',
      'ipi.pIPI'
    ]);

  if AItem.IPI.vIPI = 0 then
    AItem.IPI.vIPI := JsonFloatAny(AObj, [
      'tributos.mercadoria.ipi.valorARecolher',
      'tributos.mercadoria.ipi.valorDevido',
      'tributos.mercadoria.ipi.valorCalculado',
      'tributos.ipi.valorDevido',
      'tributos.ipi.valorDevidoBRL',
      'ipi.valorDevido',
      'ipi.vIPI'
    ]);

  if AItem.IPI.vIPI = 0 then
    AItem.IPI.vIPI := JsonFindFloatByKeyLocal(AObj, ['valorIPI', 'vIPI']);

  { PIS/PASEP-Importacao }
  if AItem.PIS.vBC = 0 then
    AItem.PIS.vBC := JsonFloatAny(AObj, [
      'tributos.mercadoria.pis.baseCalculo',
      'tributos.mercadoria.pis.baseCalculoBRL',
      'tributos.mercadoria.pis.valorBaseCalculo',
      'tributos.mercadoria.pisPasep.baseCalculo',
      'tributos.pisPasep.baseCalculo',
      'tributos.pisPasep.baseCalculoBRL',
      'tributos.pisPasep.vBC',
      'tributos.pis.baseCalculo',
      'tributos.pis.baseCalculoBRL',
      'pisPasep.baseCalculo',
      'pis.baseCalculo',
      'pis.vBC'
    ]);

  if AItem.PIS.vBC = 0 then
    AItem.PIS.vBC := JsonFindFloatByKeyLocal(AObj, [
      'baseCalculoPIS',
      'baseCalculoPisPasep',
      'baseCalculoPISPASEP',
      'vBCPIS'
    ]);

  if AItem.PIS.pAliq = 0 then
    AItem.PIS.pAliq := JsonFloatAny(AObj, [
      'tributos.mercadoria.pis.aliquota',
      'tributos.mercadoria.pis.percentual',
      'tributos.mercadoria.pisPasep.aliquota',
      'tributos.pisPasep.aliquota',
      'tributos.pisPasep.pPIS',
      'tributos.pis.aliquota',
      'tributos.pis.pPIS',
      'pisPasep.aliquota',
      'pis.aliquota',
      'pis.pPIS'
    ]);

  if AItem.PIS.pAliq = 0 then
    AItem.PIS.pAliq := JsonFindFloatByKeyLocal(AObj, [
      'aliquotaPIS',
      'aliquotaPisPasep',
      'pPIS'
    ]);

  if AItem.PIS.vImp = 0 then
    AItem.PIS.vImp := JsonFloatAny(AObj, [
      'tributos.mercadoria.pis.valorARecolher',
      'tributos.mercadoria.pis.valorDevido',
      'tributos.mercadoria.pis.valorCalculado',
      'tributos.mercadoria.pisPasep.valorDevido',
      'tributos.pisPasep.valorDevido',
      'tributos.pisPasep.valorDevidoBRL',
      'tributos.pisPasep.valor',
      'tributos.pisPasep.vPIS',
      'tributos.pis.valorDevido',
      'tributos.pis.valorDevidoBRL',
      'pisPasep.valorDevido',
      'pis.valorDevido',
      'pis.vPIS'
    ]);

  if AItem.PIS.vImp = 0 then
    AItem.PIS.vImp := JsonFindFloatByKeyLocal(AObj, [
      'valorPIS',
      'valorPisPasep',
      'valorPISPASEP',
      'vPIS'
    ]);

  { COFINS-Importacao }
  if AItem.COFINS.vBC = 0 then
    AItem.COFINS.vBC := JsonFloatAny(AObj, [
      'tributos.mercadoria.cofins.baseCalculo',
      'tributos.mercadoria.cofins.baseCalculoBRL',
      'tributos.mercadoria.cofins.valorBaseCalculo',
      'tributos.cofins.baseCalculo',
      'tributos.cofins.baseCalculoBRL',
      'tributos.cofins.vBC',
      'cofins.baseCalculo',
      'cofins.vBC'
    ]);

  if AItem.COFINS.vBC = 0 then
    AItem.COFINS.vBC := JsonFindFloatByKeyLocal(AObj, [
      'baseCalculoCOFINS',
      'vBCCOFINS'
    ]);

  if AItem.COFINS.pAliq = 0 then
    AItem.COFINS.pAliq := JsonFloatAny(AObj, [
      'tributos.mercadoria.cofins.aliquota',
      'tributos.mercadoria.cofins.percentual',
      'tributos.cofins.aliquota',
      'tributos.cofins.pCOFINS',
      'cofins.aliquota',
      'cofins.pCOFINS'
    ]);

  if AItem.COFINS.pAliq = 0 then
    AItem.COFINS.pAliq := JsonFindFloatByKeyLocal(AObj, [
      'aliquotaCOFINS',
      'pCOFINS'
    ]);

  if AItem.COFINS.vImp = 0 then
    AItem.COFINS.vImp := JsonFloatAny(AObj, [
      'tributos.mercadoria.cofins.valorARecolher',
      'tributos.mercadoria.cofins.valorDevido',
      'tributos.mercadoria.cofins.valorCalculado',
      'tributos.cofins.valorDevido',
      'tributos.cofins.valorDevidoBRL',
      'tributos.cofins.valor',
      'tributos.cofins.vCOFINS',
      'cofins.valorDevido',
      'cofins.vCOFINS'
    ]);

  if AItem.COFINS.vImp = 0 then
    AItem.COFINS.vImp := JsonFindFloatByKeyLocal(AObj, [
      'valorCOFINS',
      'vCOFINS'
    ]);

  { ICMS estadual: normalmente vem do DUIMP, mas alguns retornos
    trazem os dados no mesmo objeto de valores. }
  if AItem.ICMS.vBC = 0 then
    AItem.ICMS.vBC := JsonFloatAny(AObj, [
      'tributos.icms.baseCalculo',
      'tributos.icms.valorBaseCalculo',
      'icms.baseCalculo',
      'icms.valorBaseCalculo',
      'impostos.icms.vBC',
      'vBCICMS'
    ]);

  if AItem.ICMS.vBC = 0 then
    AItem.ICMS.vBC := JsonFindFloatByKeyLocal(AObj, [
      'baseCalculoICMS',
      'valorBaseCalculoICMS',
      'vBCICMS'
    ]);

  if AItem.ICMS.pICMS = 0 then
    AItem.ICMS.pICMS := JsonFloatAny(AObj, [
      'tributos.icms.aliquota',
      'tributos.icms.aliquotaAdValorem',
      'icms.aliquota',
      'icms.percentual',
      'icms.pICMS',
      'impostos.icms.pICMS'
    ]);

  if AItem.ICMS.pICMS = 0 then
    AItem.ICMS.pICMS := JsonFindFloatByKeyLocal(AObj, [
      'aliquotaICMS',
      'percentualICMS',
      'pICMS'
    ]);

  if AItem.ICMS.vICMS = 0 then
    AItem.ICMS.vICMS := JsonFloatAny(AObj, [
      'tributos.icms.valorDevido',
      'tributos.icms.valorCalculado',
      'tributos.icms.valor',
      'icms.valorDevido',
      'icms.valorCalculado',
      'icms.vICMS',
      'impostos.icms.vICMS'
    ]);

  if AItem.ICMS.vICMS = 0 then
    AItem.ICMS.vICMS := JsonFindFloatByKeyLocal(AObj, [
      'valorICMS',
      'vICMS'
    ]);

  { Aplica tambem quando o endpoint detalhado do item retorna
    tributos.listaTributosCalculados[]. }
  AplicarTributosCalculadosListaNoItem(AObj, AItem);
  AplicarBasePISCOFINSPorValorAduaneiroLocal(AItem);
end;

function JsonObjContemNumeroItem(AObj: ISuperObject; ANumeroItem: Integer): Boolean;
var
  N: Integer;
begin
  Result := False;

  if not Assigned(AObj) then
    Exit;

  N := JsonIntAny(AObj, [
    'identificacao.numeroItem',
    'numeroItem',
    'item',
    'numero',
    'numeroSequencialItem',
    'numeroItemDuimp'
  ]);

  Result := (N = ANumeroItem);
end;

function EncontrarObjetoValoresDoItem(AObj: ISuperObject; ANumeroItem: Integer): ISuperObject;
var
  Iter: TSuperObjectIter;
  Valor: ISuperObject;
  I: Integer;
begin
  Result := nil;

  if not Assigned(AObj) then
    Exit;

  if (AObj.DataType = stObject) and JsonObjContemNumeroItem(AObj, ANumeroItem) then
  begin
    Result := AObj;
    Exit;
  end;

  case AObj.DataType of
    stObject:
      begin
        if ObjectFindFirst(AObj, Iter) then
        begin
          try
            repeat
              Valor := Iter.val;
              if Assigned(Valor) and (Valor.DataType in [stObject, stArray]) then
              begin
                Result := EncontrarObjetoValoresDoItem(Valor, ANumeroItem);
                if Assigned(Result) then
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
        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          if Assigned(AObj.AsArray.O[I]) then
          begin
            Result := EncontrarObjetoValoresDoItem(AObj.AsArray.O[I], ANumeroItem);
            if Assigned(Result) then
              Exit;
          end;
        end;
      end;
  end;
end;

procedure AplicarValoresCalculadosDuimpNoItemNFe(
  const AJsonValoresItem: string;
  const AParams: TDuimpNFeParametrosFiscais;
  var AItem: TDuimpNFeItemCompleto
);
var
  Root: ISuperObject;
begin
  if Trim(AJsonValoresItem) = '' then
    Exit;

  Root := SO(AJsonValoresItem);
  if not Assigned(Root) then
    Exit;

  AplicarValoresObjNoItem(Root, AItem);
  RecalcularTributosNFeImportacaoItem(AItem, AParams);
  ValidarItem(AItem);
end;

procedure AplicarValoresCalculadosDuimpNosItensNFe(
  const AJsonValores: string;
  const AParams: TDuimpNFeParametrosFiscais;
  var AItens: TArrayDuimpNFeItemCompleto
);
var
  Root: ISuperObject;
  ObjItem: ISuperObject;
  I: Integer;
begin
  if Trim(AJsonValores) = '' then
    Exit;

  Root := SO(AJsonValores);
  if not Assigned(Root) then
    Exit;

  for I := 0 to High(AItens) do
  begin
    ObjItem := EncontrarObjetoValoresDoItem(Root, AItens[I].NumeroItemDuimp);
    if not Assigned(ObjItem) then
      ObjItem := EncontrarObjetoValoresDoItem(Root, I + 1);

    if Assigned(ObjItem) then
    begin
      AplicarValoresObjNoItem(ObjItem, AItens[I]);
      RecalcularTributosNFeImportacaoItem(AItens[I], AParams);
      ValidarItem(AItens[I]);
    end;
  end;
end;

procedure AplicarParametrosFiscais(var AItem: TDuimpNFeItemCompleto; const AParams: TDuimpNFeParametrosFiscais);
begin
  if Trim(AParams.CFOP) <> '' then
    AItem.CFOP := AParams.CFOP;

  if AParams.OrigemMercadoria > 0 then
    AItem.ICMS.Orig := AParams.OrigemMercadoria;

  if Trim(AParams.CSTICMS) <> '' then
    AItem.ICMS.CST := AParams.CSTICMS;

  if AParams.AliqICMS > 0 then
    AItem.ICMS.pICMS := AParams.AliqICMS;

  if Trim(AParams.CSTIPI) <> '' then
    AItem.IPI.CST := AParams.CSTIPI;

  if Trim(AParams.EnqIPI) <> '' then
    AItem.IPI.cEnq := AParams.EnqIPI;

  if Trim(AParams.CSTPIS) <> '' then
    AItem.PIS.CST := AParams.CSTPIS;

  if Trim(AParams.CSTCOFINS) <> '' then
    AItem.COFINS.CST := AParams.CSTCOFINS;

  RecalcularTributosNFeImportacaoItem(AItem, AParams);
end;

procedure ValidarItem(var AItem: TDuimpNFeItemCompleto);
var
  L: TStringList;
begin
  L := TStringList.Create;
  try
    if Trim(AItem.cProd) = '' then L.Add('cProd vazio');
    if Trim(AItem.xProd) = '' then L.Add('xProd vazio');
    if Trim(AItem.NCM) = '' then L.Add('NCM vazio');
    if Trim(AItem.CFOP) = '' then L.Add('CFOP vazio');
    if Trim(AItem.uCom) = '' then L.Add('uCom vazio');
    if AItem.qCom <= 0 then L.Add('qCom zerado');
    if AItem.vProd <= 0 then L.Add('vProd zerado');
    if Trim(AItem.DI.nDI) = '' then L.Add('DI.nDI vazio');
    if Trim(AItem.DI.dDI) = '' then L.Add('DI.dDI vazio');
    if Trim(AItem.DI.UFDesemb) = '' then L.Add('DI.UFDesemb vazio');
    if Trim(AItem.DI.xLocDesemb) = '' then L.Add('DI.xLocDesemb vazio');
    if Trim(AItem.DI.dDesemb) = '' then L.Add('DI.dDesemb vazio');
    if AItem.DI.nAdicao <= 0 then L.Add('adi.nAdicao zerado');
    if AItem.DI.nSeqAdic <= 0 then L.Add('adi.nSeqAdic zerado');
    if Trim(AItem.DI.cFabricante) = '' then L.Add('adi.cFabricante vazio');
    if Trim(AItem.DI.cExportador) = '' then L.Add('DI.cExportador vazio');
    if (AItem.ICMS.vBC > 0) and (AItem.ICMS.modBC < 0) then L.Add('ICMS.modBC vazio');

    if L.Count = 0 then
      AItem.StatusValidacao := 'OK'
    else
      AItem.StatusValidacao := StringReplace(Trim(L.Text), #13#10, '; ', [rfReplaceAll]);
  finally
    L.Free;
  end;
end;

procedure MontarDuimpItensNFeCompleto(
  const AJsonDuimpGeral: string;
  const AJsonItens: string;
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer;
  const AParams: TDuimpNFeParametrosFiscais;
  var AItens: TArrayDuimpNFeItemCompleto
);
var
  RootGeral: ISuperObject;
  RootItens: ISuperObject;
  Arr: TSuperArray;
  I: Integer;
  ObjItem: ISuperObject;
begin
  SetLength(AItens, 0);

  RootGeral := SO(AJsonDuimpGeral);
  RootItens := SO(AJsonItens);

  if not Assigned(RootGeral) then
    raise Exception.Create('JSON geral da DUIMP inv�lido.');

  if not Assigned(RootItens) then
    raise Exception.Create('JSON dos itens da DUIMP inv�lido.');

  Arr := GetJsonArrayFromRoot(RootItens);
  if not Assigned(Arr) then
    raise Exception.Create('Array de itens n�o localizado no JSON retornado por /itens.');

  SetLength(AItens, Arr.Length);

  for I := 0 to Arr.Length - 1 do
  begin
    ObjItem := Arr.O[I];

    LimparItem(AItens[I]);
    CarregarCabecalhoDI(RootGeral, ANumeroDuimp, AItens[I]);
    CarregarProduto(ObjItem, AItens[I]);
    CarregarValores(ObjItem, AItens[I]);
    CarregarAdicao(ObjItem, I + 1, AItens[I]);
    CarregarImpostosFederais(ObjItem, AItens[I]);
    AplicarParametrosFiscais(AItens[I], AParams);
    ValidarItem(AItens[I]);
  end;
end;

function DuimpItensNFeResumo(const AItens: TArrayDuimpNFeItemCompleto): string;
var
  I: Integer;
  L: TStringList;
  TVProd, TVFrete, TVII, TVIPI, TVPIS, TVCOFINS, TVICMS, TVAd, TVAFRMM: Double;
begin
  L := TStringList.Create;
  try
    TVProd := 0;
    TVFrete := 0;
    TVII := 0;
    TVIPI := 0;
    TVPIS := 0;
    TVCOFINS := 0;
    TVICMS := 0;
    TVAd := 0;
    TVAFRMM := 0;

    for I := 0 to High(AItens) do
    begin
      TVProd := TVProd + AItens[I].vProd;
      TVFrete := TVFrete + AItens[I].vFrete;
      TVII := TVII + AItens[I].II.vImp;
      TVIPI := TVIPI + AItens[I].IPI.vIPI;
      TVPIS := TVPIS + AItens[I].PIS.vImp;
      TVCOFINS := TVCOFINS + AItens[I].COFINS.vImp;
      TVICMS := TVICMS + AItens[I].ICMS.vICMS;
      TVAd := TVAd + AItens[I].ValorAduaneiroBRL;
      if AItens[I].DI.vAFRMM > TVAFRMM then
        TVAFRMM := AItens[I].DI.vAFRMM;
    end;

    L.Add('ITENS COMPLETOS PARA NF-e DE IMPORTA��O');
    L.Add(StringOfChar('-', 80));
    L.Add('Quantidade de itens: ' + IntToStr(Length(AItens)));
    L.Add('vProd total: ' + NFeFloat(TVProd, 2));
    L.Add('vFrete total: ' + NFeFloat(TVFrete, 2));
    L.Add('Valor aduaneiro total: ' + NFeFloat(TVAd, 2));
    L.Add('II total: ' + NFeFloat(TVII, 2));
    L.Add('IPI total: ' + NFeFloat(TVIPI, 2));
    L.Add('PIS total: ' + NFeFloat(TVPIS, 2));
    L.Add('COFINS total: ' + NFeFloat(TVCOFINS, 2));
    L.Add('ICMS estimado total: ' + NFeFloat(TVICMS, 2));
    L.Add('vAFRMM DI: ' + NFeFloat(TVAFRMM, 2));
    L.Add('');

    for I := 0 to High(AItens) do
    begin
      L.Add('Item ' + IntToStr(I + 1) + ' / DUIMP item ' + IntToStr(AItens[I].NumeroItemDuimp));
      L.Add('  cProd: ' + AItens[I].cProd);
      L.Add('  xProd: ' + AItens[I].xProd);
      L.Add('  NCM: ' + AItens[I].NCM);
      L.Add('  CFOP: ' + AItens[I].CFOP);
      L.Add('  qCom: ' + NFeFloat(AItens[I].qCom, 4));
      L.Add('  vProd: ' + NFeFloat(AItens[I].vProd, 2));
      L.Add('  vFrete: ' + NFeFloat(AItens[I].vFrete, 2));
      L.Add('  DI: ' + AItens[I].DI.nDI + ' / Adi��o: ' + IntToStr(AItens[I].DI.nAdicao) + ' / vAFRMM: ' + NFeFloat(AItens[I].DI.vAFRMM, 2));
      L.Add('  Valida��o: ' + AItens[I].StatusValidacao);
      L.Add('');
    end;

    Result := L.Text;
  finally
    L.Free;
  end;
end;

function DuimpItensNFeValidacao(const AItens: TArrayDuimpNFeItemCompleto): string;
var
  I: Integer;
  L: TStringList;
begin
  L := TStringList.Create;
  try
    for I := 0 to High(AItens) do
      if AItens[I].StatusValidacao <> 'OK' then
        L.Add('Item ' + IntToStr(I + 1) + ': ' + AItens[I].StatusValidacao);

    if L.Count = 0 then
      Result := 'OK'
    else
      Result := L.Text;
  finally
    L.Free;
  end;
end;

function DuimpItensNFePreviewDetXML(const AItens: TArrayDuimpNFeItemCompleto): string;
var
  I: Integer;
  L: TStringList;
  It: TDuimpNFeItemCompleto;
begin
  L := TStringList.Create;
  try
    L.Add('<?xml version="1.0" encoding="UTF-8"?>');
    L.Add('<detItensPreview>');

    for I := 0 to High(AItens) do
    begin
      It := AItens[I];
      L.Add('  <det nItem="' + IntToStr(I + 1) + '">');
      L.Add('    <prod>');
      L.Add('      <cProd>' + XmlEscape(It.cProd) + '</cProd>');
      L.Add('      <cEAN>' + XmlEscape(It.cEAN) + '</cEAN>');
      L.Add('      <xProd>' + XmlEscape(It.xProd) + '</xProd>');
      L.Add('      <NCM>' + XmlEscape(It.NCM) + '</NCM>');
      if It.CEST <> '' then L.Add('      <CEST>' + XmlEscape(It.CEST) + '</CEST>');
      L.Add('      <CFOP>' + XmlEscape(It.CFOP) + '</CFOP>');
      L.Add('      <uCom>' + XmlEscape(It.uCom) + '</uCom>');
      L.Add('      <qCom>' + NFeFloat(It.qCom, 4) + '</qCom>');
      L.Add('      <vUnCom>' + NFeFloat(It.vUnCom, 10) + '</vUnCom>');
      L.Add('      <vProd>' + NFeFloat(It.vProd, 2) + '</vProd>');
      L.Add('      <cEANTrib>' + XmlEscape(It.cEANTrib) + '</cEANTrib>');
      L.Add('      <uTrib>' + XmlEscape(It.uTrib) + '</uTrib>');
      L.Add('      <qTrib>' + NFeFloat(It.qTrib, 4) + '</qTrib>');
      L.Add('      <vUnTrib>' + NFeFloat(It.vUnTrib, 10) + '</vUnTrib>');
      if It.vFrete <> 0 then L.Add('      <vFrete>' + NFeFloat(It.vFrete, 2) + '</vFrete>');
      if It.vSeg <> 0 then L.Add('      <vSeg>' + NFeFloat(It.vSeg, 2) + '</vSeg>');
      if It.vDesc <> 0 then L.Add('      <vDesc>' + NFeFloat(It.vDesc, 2) + '</vDesc>');
      if It.vOutro <> 0 then L.Add('      <vOutro>' + NFeFloat(It.vOutro, 2) + '</vOutro>');
      L.Add('      <indTot>' + IntToStr(It.indTot) + '</indTot>');
      L.Add('      <DI>');
      L.Add('        <nDI>' + XmlEscape(It.DI.nDI) + '</nDI>');
      L.Add('        <dDI>' + XmlEscape(It.DI.dDI) + '</dDI>');
      L.Add('        <xLocDesemb>' + XmlEscape(It.DI.xLocDesemb) + '</xLocDesemb>');
      L.Add('        <UFDesemb>' + XmlEscape(It.DI.UFDesemb) + '</UFDesemb>');
      L.Add('        <dDesemb>' + XmlEscape(It.DI.dDesemb) + '</dDesemb>');
      if It.DI.tpViaTransp > 0 then
        L.Add('        <tpViaTransp>' + IntToStr(It.DI.tpViaTransp) + '</tpViaTransp>')
      else
        L.Add('        <tpViaTransp></tpViaTransp>');
      L.Add('        <vAFRMM>' + NFeFloat(It.DI.vAFRMM, 2) + '</vAFRMM>');
      if It.DI.tpIntermedio > 0 then
        L.Add('        <tpIntermedio>' + IntToStr(It.DI.tpIntermedio) + '</tpIntermedio>')
      else
        L.Add('        <tpIntermedio></tpIntermedio>');
      if It.DI.CNPJ <> '' then L.Add('        <CNPJ>' + XmlEscape(It.DI.CNPJ) + '</CNPJ>');
      if It.DI.UFTerceiro <> '' then L.Add('        <UFTerceiro>' + XmlEscape(It.DI.UFTerceiro) + '</UFTerceiro>');
      L.Add('        <cExportador>' + XmlEscape(It.DI.cExportador) + '</cExportador>');
      L.Add('        <adi>');
      L.Add('          <nAdicao>' + IntToStr(It.DI.nAdicao) + '</nAdicao>');
      L.Add('          <nSeqAdic>' + IntToStr(It.DI.nSeqAdic) + '</nSeqAdic>');
      L.Add('          <cFabricante>' + XmlEscape(It.DI.cFabricante) + '</cFabricante>');
      L.Add('          <vDescDI>' + NFeFloat(It.DI.vDescDI, 2) + '</vDescDI>');
      if It.DI.nDraw <> '' then L.Add('          <nDraw>' + XmlEscape(It.DI.nDraw) + '</nDraw>');
      L.Add('        </adi>');
      L.Add('      </DI>');
      L.Add('    </prod>');
      L.Add('    <imposto>');
      L.Add('      <II>');
      L.Add('        <vBC>' + NFeFloat(It.II.vBC, 2) + '</vBC>');
      L.Add('        <vDespAdu>' + NFeFloat(It.vOutro, 2) + '</vDespAdu>');
      L.Add('        <vII>' + NFeFloat(It.II.vImp, 2) + '</vII>');
      L.Add('        <vIOF>0.00</vIOF>');
      L.Add('      </II>');
      L.Add('      <IPI>');
      L.Add('        <cEnq>' + XmlEscape(It.IPI.cEnq) + '</cEnq>');
      L.Add('        <IPITrib>');
      L.Add('          <CST>' + XmlEscape(It.IPI.CST) + '</CST>');
      L.Add('          <vBC>' + NFeFloat(It.IPI.vBC, 2) + '</vBC>');
      L.Add('          <pIPI>' + NFeFloat(It.IPI.pIPI, 4) + '</pIPI>');
      L.Add('          <vIPI>' + NFeFloat(It.IPI.vIPI, 2) + '</vIPI>');
      L.Add('        </IPITrib>');
      L.Add('      </IPI>');
      L.Add('      <PIS>');
      L.Add('        <PISAliq>');
      L.Add('          <CST>' + XmlEscape(It.PIS.CST) + '</CST>');
      L.Add('          <vBC>' + NFeFloat(It.PIS.vBC, 2) + '</vBC>');
      L.Add('          <pPIS>' + NFeFloat(It.PIS.pAliq, 4) + '</pPIS>');
      L.Add('          <vPIS>' + NFeFloat(It.PIS.vImp, 2) + '</vPIS>');
      L.Add('        </PISAliq>');
      L.Add('      </PIS>');
      L.Add('      <COFINS>');
      L.Add('        <COFINSAliq>');
      L.Add('          <CST>' + XmlEscape(It.COFINS.CST) + '</CST>');
      L.Add('          <vBC>' + NFeFloat(It.COFINS.vBC, 2) + '</vBC>');
      L.Add('          <pCOFINS>' + NFeFloat(It.COFINS.pAliq, 4) + '</pCOFINS>');
      L.Add('          <vCOFINS>' + NFeFloat(It.COFINS.vImp, 2) + '</vCOFINS>');
      L.Add('        </COFINSAliq>');
      L.Add('      </COFINS>');
      L.Add('      <ICMS>');
      L.Add('        <ICMS00>');
      L.Add('          <orig>' + IntToStr(It.ICMS.Orig) + '</orig>');
      L.Add('          <CST>' + XmlEscape(It.ICMS.CST) + '</CST>');
      if It.ICMS.modBC >= 0 then
        L.Add('          <modBC>' + IntToStr(It.ICMS.modBC) + '</modBC>')
      else
        L.Add('          <modBC></modBC>');
      L.Add('          <vBC>' + NFeFloat(It.ICMS.vBC, 2) + '</vBC>');
      L.Add('          <pICMS>' + NFeFloat(It.ICMS.pICMS, 4) + '</pICMS>');
      L.Add('          <vICMS>' + NFeFloat(It.ICMS.vICMS, 2) + '</vICMS>');
      L.Add('        </ICMS00>');
      L.Add('      </ICMS>');
      L.Add('    </imposto>');
      L.Add('  </det>');
    end;

    L.Add('</detItensPreview>');
    Result := L.Text;
  finally
    L.Free;
  end;
end;

end.
