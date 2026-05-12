unit uDuimpNFeXmlCompletoD7;

interface

uses
  SysUtils, Classes, uDuimpNFeItensCompletoD7;

type
  TDuimpNFePessoa = record
    CNPJ: string;
    IE: string;
    XNome: string;
    XFant: string;
    XLgr: string;
    Nro: string;
    XCpl: string;
    XBairro: string;
    CMun: string;
    XMun: string;
    UF: string;
    CEP: string;
    CPais: string;
    XPais: string;
    Fone: string;
    CRT: string;
    IndIEDest: string;
  end;

  TDuimpNFeConfig = record
    CUF: Integer;
    CNF: Integer;
    NatOp: string;
    ModNF: string;
    Serie: Integer;
    NNF: Integer;
    TpNF: Integer;
    IdDest: Integer;
    CMunFG: string;
    TpImp: Integer;
    TpEmis: Integer;
    TpAmb: Integer;
    FinNFe: Integer;
    IndFinal: Integer;
    IndPres: Integer;
    IndIntermed: Integer;
    ProcEmi: Integer;
    VerProc: string;

    TranspCNPJ: string;
    TranspXNome: string;
    TranspIE: string;
    TranspXEnder: string;
    TranspXMun: string;
    TranspUF: string;
  end;

  TDuimpNFeItem = record
    Codigo: string;
    Descricao: string;
    NCM: string;
    CEST: string;
    CFOP: string;
    Unidade: string;
    Quantidade: Double;
    ValorUnitario: Double;
    ValorTotal: Double;
    ValorAduaneiro: Double;

    NumeroDI: string;
    DataDI: TDateTime;
    LocalDesembaraco: string;
    UFDesembaraco: string;
    DataDesembaraco: TDateTime;
    ViaTransporte: Integer;
    ValorAFRMM: Double;
    FormaIntermediacao: Integer;
    CNPJAdquirente: string;
    UFAdquirente: string;
    CodigoExportador: string;
    NumeroAdicao: Integer;
    NumeroSequencialItem: Integer;
    CodigoFabricante: string;
    ValorDescontoDI: Double;

    ValorFrete: Double;
    ValorSeguro: Double;
    ValorOutrasDespesas: Double;
    ValorII: Double;
    ValorIPI: Double;
    ValorPIS: Double;
    ValorCOFINS: Double;
    ValorICMS: Double;

    BaseII: Double;
    PercentualII: Double;
    BaseIPI: Double;
    PercentualIPI: Double;
    BasePIS: Double;
    PercentualPIS: Double;
    BaseCOFINS: Double;
    PercentualCOFINS: Double;
    BaseICMS: Double;
    PercentualICMS: Double;
    ModBCICMS: string;
    OrigICMS: Integer;
    CSTICMS: string;
    CSTIPI: string;
    EnqIPI: string;
    CSTPIS: string;
    CSTCOFINS: string;
  end;

  TDuimpNFeItens = array of TDuimpNFeItem;

  { Aliases de compatibilidade com uPrincipal.pas. }
  TDuimpNFeEmitente = TDuimpNFePessoa;
  TDuimpNFeDestinatario = TDuimpNFePessoa;

function DuimpNFeEmitentePadraoSheild: TDuimpNFePessoa;
function DuimpNFeDestinatarioPadraoMesmoEmitente: TDuimpNFePessoa;
function DuimpNFeConfigPadraoSP(const ANumeroDuimp: string): TDuimpNFeConfig;

function GerarXmlNFeDuimpCompletoD7(
  const AConfig: TDuimpNFeConfig;
  const AEmitente: TDuimpNFePessoa;
  const ADestinatario: TDuimpNFePessoa;
  const AItens: TDuimpNFeItens
): string;

procedure SalvarXmlNFeDuimpCompletoD7(
  const AArquivo: string;
  const AConfig: TDuimpNFeConfig;
  const AEmitente: TDuimpNFePessoa;
  const ADestinatario: TDuimpNFePessoa;
  const AItens: TDuimpNFeItens
);

function DuimpValidarDadosNFeCompleta(
  const AItens: TArrayDuimpNFeItemCompleto;
  const AEmitente: TDuimpNFeEmitente;
  const ADestinatario: TDuimpNFeDestinatario
): string;

function DuimpGerarXmlNFeImportacaoCompleta(
  const ANumeroDuimp: string;
  const AItens: TArrayDuimpNFeItemCompleto;
  const AEmitente: TDuimpNFeEmitente;
  const ADestinatario: TDuimpNFeDestinatario;
  const AConfig: TDuimpNFeConfig;
  const AInfCpl: string
): string;

function DuimpItensNFeAvisosIPI(
  const AItens: TArrayDuimpNFeItemCompleto
): string;

function DuimpNomeArquivoXmlDownloads(const ANumeroDuimp: string): string;

implementation

function OnlyDigitsLocal(const S: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
  begin
    if S[I] in ['0'..'9'] then
      Result := Result + S[I];
  end;
end;


function PadLeftZerosLocal(const S: string; const ALen: Integer): string;
begin
  Result := Trim(S);
  while Length(Result) < ALen do
    Result := '0' + Result;
  if Length(Result) > ALen then
    Result := Copy(Result, Length(Result) - ALen + 1, ALen);
end;

function NFeModulo11DVLocal(const AChave43: string): Integer;
var
  I: Integer;
  Peso: Integer;
  Soma: Integer;
  Resto: Integer;
begin
  Soma := 0;
  Peso := 2;

  for I := Length(AChave43) downto 1 do
  begin
    Soma := Soma + (Ord(AChave43[I]) - Ord('0')) * Peso;
    Inc(Peso);
    if Peso > 9 then
      Peso := 2;
  end;

  Resto := Soma mod 11;
  Result := 11 - Resto;
  if Result >= 10 then
    Result := 0;
end;

function GerarChaveAcessoNFeLocal(
  const AConfig: TDuimpNFeConfig;
  const AEmitente: TDuimpNFePessoa;
  const ADataEmissao: TDateTime
): string;
var
  Chave43: string;
  CNPJ: string;
  Modelo: string;
  CNF: Integer;
begin
  CNPJ := OnlyDigitsLocal(AEmitente.CNPJ);
  Modelo := OnlyDigitsLocal(AConfig.ModNF);
  if Modelo = '' then
    Modelo := '55';

  CNF := AConfig.CNF;
  if CNF <= 0 then
    CNF := AConfig.NNF;
  if CNF <= 0 then
    CNF := StrToIntDef(FormatDateTime('hhnnss', Now), 1);

  Chave43 :=
    PadLeftZerosLocal(IntToStr(AConfig.CUF), 2) +
    FormatDateTime('yymm', ADataEmissao) +
    PadLeftZerosLocal(CNPJ, 14) +
    PadLeftZerosLocal(Modelo, 2) +
    PadLeftZerosLocal(IntToStr(AConfig.Serie), 3) +
    PadLeftZerosLocal(IntToStr(AConfig.NNF), 9) +
    PadLeftZerosLocal(IntToStr(AConfig.TpEmis), 1) +
    PadLeftZerosLocal(IntToStr(CNF), 8);

  Result := Chave43 + IntToStr(NFeModulo11DVLocal(Chave43));
end;

function XmlEscapeLocal(const S: string): string;
begin
  Result := S;
  Result := StringReplace(Result, '&', '&amp;', [rfReplaceAll]);
  Result := StringReplace(Result, '<', '&lt;', [rfReplaceAll]);
  Result := StringReplace(Result, '>', '&gt;', [rfReplaceAll]);
  Result := StringReplace(Result, '"', '&quot;', [rfReplaceAll]);
  Result := StringReplace(Result, '''', '&apos;', [rfReplaceAll]);
end;

function ValorXml2(const V: Double): string;
begin
  Result := FormatFloat('0.00', V);
  Result := StringReplace(Result, ',', '.', [rfReplaceAll]);
end;

function ValorXml4(const V: Double): string;
begin
  Result := FormatFloat('0.0000', V);
  Result := StringReplace(Result, ',', '.', [rfReplaceAll]);
end;

function DataXml(const D: TDateTime): string;
begin
  { Nao inventar data quando o endpoint/ERP nao informar. }
  if D <= 0 then
    Result := ''
  else
    Result := FormatDateTime('yyyy-mm-dd', D);
end;

function DateTimeXmlSP(const D: TDateTime): string;
begin
  Result := FormatDateTime('yyyy-mm-dd"T"hh:nn:ss', D) + '-03:00';
end;

function StrOrDefault(const S, ADefault: string): string;
begin
  if Trim(S) = '' then
    Result := ADefault
  else
    Result := S;
end;

function DuimpNFeEmitentePadraoSheild: TDuimpNFePessoa;
begin
  { Compatibilidade: nao preenche dados fixos.
    Preencha emitente no ERP antes de gerar/transmitir a NF-e. }
  FillChar(Result, SizeOf(Result), 0);
end;

function DuimpNFeDestinatarioPadraoMesmoEmitente: TDuimpNFePessoa;
begin
  { Compatibilidade: nao replica emitente nem preenche destinatario fixo. }
  FillChar(Result, SizeOf(Result), 0);
end;

function DuimpNFeConfigPadraoSP(const ANumeroDuimp: string): TDuimpNFeConfig;
begin
  { Compatibilidade: nao preenche configuracao fixa de SP/homologacao.
    Preencha CUF, natOp, serie, numero, ambiente, municipio e demais dados no ERP. }
  FillChar(Result, SizeOf(Result), 0);
end;

procedure AddPessoaEmitenteXml(SL: TStringList; const AEmitente: TDuimpNFePessoa);
begin
  SL.Add('    <emit>');
  SL.Add('      <CNPJ>' + OnlyDigitsLocal(AEmitente.CNPJ) + '</CNPJ>');
  SL.Add('      <xNome>' + XmlEscapeLocal(AEmitente.XNome) + '</xNome>');
  if Trim(AEmitente.XFant) <> '' then
    SL.Add('      <xFant>' + XmlEscapeLocal(AEmitente.XFant) + '</xFant>');
  SL.Add('      <enderEmit>');
  SL.Add('        <xLgr>' + XmlEscapeLocal(AEmitente.XLgr) + '</xLgr>');
  SL.Add('        <nro>' + XmlEscapeLocal(AEmitente.Nro) + '</nro>');
  if Trim(AEmitente.XCpl) <> '' then
    SL.Add('        <xCpl>' + XmlEscapeLocal(AEmitente.XCpl) + '</xCpl>');
  SL.Add('        <xBairro>' + XmlEscapeLocal(AEmitente.XBairro) + '</xBairro>');
  SL.Add('        <cMun>' + OnlyDigitsLocal(AEmitente.CMun) + '</cMun>');
  SL.Add('        <xMun>' + XmlEscapeLocal(AEmitente.XMun) + '</xMun>');
  SL.Add('        <UF>' + XmlEscapeLocal(AEmitente.UF) + '</UF>');
  SL.Add('        <CEP>' + OnlyDigitsLocal(AEmitente.CEP) + '</CEP>');
  SL.Add('        <cPais>' + OnlyDigitsLocal(AEmitente.CPais) + '</cPais>');
  SL.Add('        <xPais>' + XmlEscapeLocal(AEmitente.XPais) + '</xPais>');
  if Trim(AEmitente.Fone) <> '' then
    SL.Add('        <fone>' + OnlyDigitsLocal(AEmitente.Fone) + '</fone>');
  SL.Add('      </enderEmit>');
  SL.Add('      <IE>' + OnlyDigitsLocal(AEmitente.IE) + '</IE>');
  SL.Add('      <CRT>' + OnlyDigitsLocal(AEmitente.CRT) + '</CRT>');
  SL.Add('    </emit>');
end;

procedure AddPessoaDestinatarioXml(SL: TStringList; const ADestinatario: TDuimpNFePessoa);
begin
  SL.Add('    <dest>');
  if Length(OnlyDigitsLocal(ADestinatario.CNPJ)) = 11 then
    SL.Add('      <CPF>' + OnlyDigitsLocal(ADestinatario.CNPJ) + '</CPF>')
  else
    SL.Add('      <CNPJ>' + OnlyDigitsLocal(ADestinatario.CNPJ) + '</CNPJ>');
  SL.Add('      <xNome>' + XmlEscapeLocal(ADestinatario.XNome) + '</xNome>');
  SL.Add('      <enderDest>');
  SL.Add('        <xLgr>' + XmlEscapeLocal(ADestinatario.XLgr) + '</xLgr>');
  SL.Add('        <nro>' + XmlEscapeLocal(ADestinatario.Nro) + '</nro>');
  if Trim(ADestinatario.XCpl) <> '' then
    SL.Add('        <xCpl>' + XmlEscapeLocal(ADestinatario.XCpl) + '</xCpl>');
  SL.Add('        <xBairro>' + XmlEscapeLocal(ADestinatario.XBairro) + '</xBairro>');
  SL.Add('        <cMun>' + OnlyDigitsLocal(ADestinatario.CMun) + '</cMun>');
  SL.Add('        <xMun>' + XmlEscapeLocal(ADestinatario.XMun) + '</xMun>');
  SL.Add('        <UF>' + XmlEscapeLocal(ADestinatario.UF) + '</UF>');
  SL.Add('        <CEP>' + OnlyDigitsLocal(ADestinatario.CEP) + '</CEP>');
  SL.Add('        <cPais>' + OnlyDigitsLocal(ADestinatario.CPais) + '</cPais>');
  SL.Add('        <xPais>' + XmlEscapeLocal(ADestinatario.XPais) + '</xPais>');
  if Trim(ADestinatario.Fone) <> '' then
    SL.Add('        <fone>' + OnlyDigitsLocal(ADestinatario.Fone) + '</fone>');
  SL.Add('      </enderDest>');
  SL.Add('      <indIEDest>' + OnlyDigitsLocal(ADestinatario.IndIEDest) + '</indIEDest>');
  if Trim(OnlyDigitsLocal(ADestinatario.IE)) <> '' then
    SL.Add('      <IE>' + OnlyDigitsLocal(ADestinatario.IE) + '</IE>');
  SL.Add('    </dest>');
end;


function ValorOuPadraoLocal(const AValor: Double; const APadrao: Double): Double;
begin
  { Sem fallback generico para bases/valores. Usa somente o valor recebido. }
  Result := AValor;
end;

function ArredondarMoedaXmlLocal(const AValor: Double): Double;
begin
  if AValor >= 0 then
    Result := Int(AValor * 100 + 0.5) / 100
  else
    Result := -Int(Abs(AValor) * 100 + 0.5) / 100;
end;

function BasePISCOFINSXmlLocal(const ABase: Double; const AValorAduaneiro: Double): Double;
begin
  Result := ABase;

  { Fallback especifico para PIS/COFINS-Importacao: somente valor aduaneiro real. }
  if (Result = 0) and (AValorAduaneiro > 0) then
    Result := AValorAduaneiro;
end;

function MesmoValorMoedaXmlLocal(const A, B: Double): Boolean;
begin
  Result := Abs(A - B) < 0.0001;
end;

function ValorTributoXmlLocal(
  const AValorAtual: Double;
  const ABase: Double;
  const APercentual: Double
): Double;
var
  ValorCalculado: Double;
begin
  Result := AValorAtual;

  { Protecao final do XML: calcula somente se o valor estiver zerado
    ou se o valor recebido for igual ao percentual, sinal classico de
    mapeamento indevido do campo de aliquota no campo de valor. }
  if (ABase <= 0) or (APercentual <= 0) then
    Exit;

  if (Result <> 0) and not MesmoValorMoedaXmlLocal(Result, APercentual) then
    Exit;

  ValorCalculado := ArredondarMoedaXmlLocal(ABase * APercentual / 100);
  if ValorCalculado > 0 then
    Result := ValorCalculado;
end;

function ValorPISCOFINSXmlLocal(
  const AValorAtual: Double;
  const ABase: Double;
  const APercentual: Double
): Double;
begin
  Result := ValorTributoXmlLocal(AValorAtual, ABase, APercentual);
end;

procedure AddImpostoBasicoXml(SL: TStringList; const AItem: TDuimpNFeItem);
var
  BasePISXml: Double;
  BaseCOFINSXml: Double;
  ValorPISXml: Double;
  ValorCOFINSXml: Double;
begin
  BasePISXml := BasePISCOFINSXmlLocal(AItem.BasePIS, AItem.ValorAduaneiro);
  BaseCOFINSXml := BasePISCOFINSXmlLocal(AItem.BaseCOFINS, AItem.ValorAduaneiro);
  ValorPISXml := ValorPISCOFINSXmlLocal(AItem.ValorPIS, BasePISXml, AItem.PercentualPIS);
  ValorCOFINSXml := ValorPISCOFINSXmlLocal(AItem.ValorCOFINS, BaseCOFINSXml, AItem.PercentualCOFINS);

  SL.Add('      <imposto>');

  SL.Add('        <ICMS>');
  SL.Add('          <ICMS00>');
  SL.Add('            <orig>' + IntToStr(AItem.OrigICMS) + '</orig>');
  SL.Add('            <CST>' + XmlEscapeLocal(AItem.CSTICMS) + '</CST>');
  if Trim(AItem.ModBCICMS) <> '' then
    SL.Add('            <modBC>' + XmlEscapeLocal(AItem.ModBCICMS) + '</modBC>')
  else
    SL.Add('            <modBC></modBC>'); { preencher modBC real via ERP }
  SL.Add('            <vBC>' + ValorXml2(ValorOuPadraoLocal(AItem.BaseICMS, AItem.ValorTotal)) + '</vBC>');
  SL.Add('            <pICMS>' + ValorXml2(AItem.PercentualICMS) + '</pICMS>');
  SL.Add('            <vICMS>' + ValorXml2(AItem.ValorICMS) + '</vICMS>');
  SL.Add('          </ICMS00>');
  SL.Add('        </ICMS>');

  SL.Add('        <IPI>');
  SL.Add('          <cEnq>' + XmlEscapeLocal(AItem.EnqIPI) + '</cEnq>');
  SL.Add('          <IPITrib>');
  SL.Add('            <CST>' + XmlEscapeLocal(AItem.CSTIPI) + '</CST>');
  SL.Add('            <vBC>' + ValorXml2(ValorOuPadraoLocal(AItem.BaseIPI, AItem.ValorTotal)) + '</vBC>');
  SL.Add('            <pIPI>' + ValorXml2(AItem.PercentualIPI) + '</pIPI>');
  SL.Add('            <vIPI>' + ValorXml2(AItem.ValorIPI) + '</vIPI>');
  SL.Add('          </IPITrib>');
  SL.Add('        </IPI>');

  SL.Add('        <II>');
  SL.Add('          <vBC>' + ValorXml2(ValorOuPadraoLocal(AItem.BaseII, AItem.ValorTotal)) + '</vBC>');
  SL.Add('          <vDespAdu>' + ValorXml2(AItem.ValorOutrasDespesas) + '</vDespAdu>');
  SL.Add('          <vII>' + ValorXml2(AItem.ValorII) + '</vII>');
  SL.Add('          <vIOF>0.00</vIOF>');
  SL.Add('        </II>');

  SL.Add('        <PIS>');
  SL.Add('          <PISAliq>');
  SL.Add('            <CST>' + XmlEscapeLocal(AItem.CSTPIS) + '</CST>');
  SL.Add('            <vBC>' + ValorXml2(BasePISXml) + '</vBC>');
  SL.Add('            <pPIS>' + ValorXml2(AItem.PercentualPIS) + '</pPIS>');
  SL.Add('            <vPIS>' + ValorXml2(ValorPISXml) + '</vPIS>');
  SL.Add('          </PISAliq>');
  SL.Add('        </PIS>');

  SL.Add('        <COFINS>');
  SL.Add('          <COFINSAliq>');
  SL.Add('            <CST>' + XmlEscapeLocal(AItem.CSTCOFINS) + '</CST>');
  SL.Add('            <vBC>' + ValorXml2(BaseCOFINSXml) + '</vBC>');
  SL.Add('            <pCOFINS>' + ValorXml2(AItem.PercentualCOFINS) + '</pCOFINS>');
  SL.Add('            <vCOFINS>' + ValorXml2(ValorCOFINSXml) + '</vCOFINS>');
  SL.Add('          </COFINSAliq>');
  SL.Add('        </COFINS>');

  SL.Add('      </imposto>');
end;

function GerarXmlNFeDuimpCompletoD7(
  const AConfig: TDuimpNFeConfig;
  const AEmitente: TDuimpNFePessoa;
  const ADestinatario: TDuimpNFePessoa;
  const AItens: TDuimpNFeItens
): string;
var
  I: Integer;
  SL: TStringList;
  TotalProdutos: Double;
  TotalFrete: Double;
  TotalSeguro: Double;
  TotalOutras: Double;
  TotalII: Double;
  TotalIPI: Double;
  TotalPIS: Double;
  TotalCOFINS: Double;
  TotalICMS: Double;
  TotalICMSBase: Double;
  TotalNF: Double;
  DataEmissao: TDateTime;
  ChaveAcesso: string;
  CNFLocal: Integer;
begin
  SL := TStringList.Create;
  try
    TotalProdutos := 0;
    TotalFrete := 0;
    TotalSeguro := 0;
    TotalOutras := 0;
    TotalII := 0;
    TotalIPI := 0;
    TotalPIS := 0;
    TotalCOFINS := 0;
    TotalICMS := 0;
    TotalICMSBase := 0;

    for I := Low(AItens) to High(AItens) do
    begin
      TotalProdutos := TotalProdutos + AItens[I].ValorTotal;
      TotalFrete := TotalFrete + AItens[I].ValorFrete;
      TotalSeguro := TotalSeguro + AItens[I].ValorSeguro;
      TotalOutras := TotalOutras + AItens[I].ValorOutrasDespesas;
      TotalII := TotalII + AItens[I].ValorII;
      TotalIPI := TotalIPI + AItens[I].ValorIPI;
      TotalPIS := TotalPIS + ValorPISCOFINSXmlLocal(
        AItens[I].ValorPIS,
        BasePISCOFINSXmlLocal(AItens[I].BasePIS, AItens[I].ValorAduaneiro),
        AItens[I].PercentualPIS
      );
      TotalCOFINS := TotalCOFINS + ValorPISCOFINSXmlLocal(
        AItens[I].ValorCOFINS,
        BasePISCOFINSXmlLocal(AItens[I].BaseCOFINS, AItens[I].ValorAduaneiro),
        AItens[I].PercentualCOFINS
      );
      TotalICMS := TotalICMS + AItens[I].ValorICMS;
      TotalICMSBase := TotalICMSBase + AItens[I].BaseICMS;
    end;

    { Regra NF-e: vNF nao soma vICMS nem PIS/COFINS. }
    TotalNF := TotalProdutos + TotalFrete + TotalSeguro + TotalOutras +
      TotalII + TotalIPI;

    DataEmissao := Now;
    ChaveAcesso := GerarChaveAcessoNFeLocal(AConfig, AEmitente, DataEmissao);
    CNFLocal := AConfig.CNF;
    if CNFLocal <= 0 then
      CNFLocal := AConfig.NNF;
    if CNFLocal <= 0 then
      CNFLocal := StrToIntDef(Copy(ChaveAcesso, 36, 8), 0);

    SL.Add('<?xml version="1.0" encoding="UTF-8"?>');
    SL.Add('<NFe xmlns="http://www.portalfiscal.inf.br/nfe">');
    SL.Add('  <infNFe Id="NFe' + ChaveAcesso + '" versao="4.00">');

    SL.Add('    <ide>');
    SL.Add('      <cUF>' + IntToStr(AConfig.CUF) + '</cUF>');
    SL.Add('      <cNF>' + PadLeftZerosLocal(IntToStr(CNFLocal), 8) + '</cNF>');
    SL.Add('      <natOp>' + XmlEscapeLocal(AConfig.NatOp) + '</natOp>');
    SL.Add('      <mod>' + XmlEscapeLocal(AConfig.ModNF) + '</mod>');
    SL.Add('      <serie>' + IntToStr(AConfig.Serie) + '</serie>');
    SL.Add('      <nNF>' + IntToStr(AConfig.NNF) + '</nNF>');
    SL.Add('      <dhEmi>' + DateTimeXmlSP(DataEmissao) + '</dhEmi>');
    SL.Add('      <dhSaiEnt>' + DateTimeXmlSP(DataEmissao) + '</dhSaiEnt>');
    SL.Add('      <tpNF>' + IntToStr(AConfig.TpNF) + '</tpNF>');
    SL.Add('      <idDest>' + IntToStr(AConfig.IdDest) + '</idDest>');
    SL.Add('      <cMunFG>' + OnlyDigitsLocal(AConfig.CMunFG) + '</cMunFG>');
    SL.Add('      <tpImp>' + IntToStr(AConfig.TpImp) + '</tpImp>');
    SL.Add('      <tpEmis>' + IntToStr(AConfig.TpEmis) + '</tpEmis>');
    SL.Add('      <cDV>' + Copy(ChaveAcesso, Length(ChaveAcesso), 1) + '</cDV>');
    SL.Add('      <tpAmb>' + IntToStr(AConfig.TpAmb) + '</tpAmb>');
    SL.Add('      <finNFe>' + IntToStr(AConfig.FinNFe) + '</finNFe>');
    SL.Add('      <indFinal>' + IntToStr(AConfig.IndFinal) + '</indFinal>');
    SL.Add('      <indPres>' + IntToStr(AConfig.IndPres) + '</indPres>');
    if AConfig.IndIntermed > 0 then
      SL.Add('      <indIntermed>' + IntToStr(AConfig.IndIntermed) + '</indIntermed>');
    SL.Add('      <procEmi>' + IntToStr(AConfig.ProcEmi) + '</procEmi>');
    SL.Add('      <verProc>' + XmlEscapeLocal(AConfig.VerProc) + '</verProc>');
    SL.Add('    </ide>');

    AddPessoaEmitenteXml(SL, AEmitente);
    AddPessoaDestinatarioXml(SL, ADestinatario);

    for I := Low(AItens) to High(AItens) do
    begin
      SL.Add('    <det nItem="' + IntToStr(I + 1) + '">');
      SL.Add('      <prod>');
      SL.Add('        <cProd>' + XmlEscapeLocal(AItens[I].Codigo) + '</cProd>');
      SL.Add('        <cEAN>SEM GTIN</cEAN>');
      SL.Add('        <xProd>' + XmlEscapeLocal(AItens[I].Descricao) + '</xProd>');
      SL.Add('        <NCM>' + OnlyDigitsLocal(AItens[I].NCM) + '</NCM>');
      if Trim(AItens[I].CEST) <> '' then
        SL.Add('        <CEST>' + OnlyDigitsLocal(AItens[I].CEST) + '</CEST>');
      SL.Add('        <CFOP>' + XmlEscapeLocal(AItens[I].CFOP) + '</CFOP>');
      SL.Add('        <uCom>' + XmlEscapeLocal(AItens[I].Unidade) + '</uCom>');
      SL.Add('        <qCom>' + ValorXml4(AItens[I].Quantidade) + '</qCom>');
      SL.Add('        <vUnCom>' + ValorXml2(AItens[I].ValorUnitario) + '</vUnCom>');
      SL.Add('        <vProd>' + ValorXml2(AItens[I].ValorTotal) + '</vProd>');
      SL.Add('        <cEANTrib>SEM GTIN</cEANTrib>');
      SL.Add('        <uTrib>' + XmlEscapeLocal(AItens[I].Unidade) + '</uTrib>');
      SL.Add('        <qTrib>' + ValorXml4(AItens[I].Quantidade) + '</qTrib>');
      SL.Add('        <vUnTrib>' + ValorXml2(AItens[I].ValorUnitario) + '</vUnTrib>');
      if AItens[I].ValorFrete > 0 then
        SL.Add('        <vFrete>' + ValorXml2(AItens[I].ValorFrete) + '</vFrete>');
      if AItens[I].ValorSeguro > 0 then
        SL.Add('        <vSeg>' + ValorXml2(AItens[I].ValorSeguro) + '</vSeg>');
      if AItens[I].ValorOutrasDespesas > 0 then
        SL.Add('        <vOutro>' + ValorXml2(AItens[I].ValorOutrasDespesas) + '</vOutro>');
      SL.Add('        <indTot>1</indTot>');

      SL.Add('        <DI>');
      SL.Add('          <nDI>' + XmlEscapeLocal(AItens[I].NumeroDI) + '</nDI>');
      SL.Add('          <dDI>' + DataXml(AItens[I].DataDI) + '</dDI>');
      SL.Add('          <xLocDesemb>' + XmlEscapeLocal(AItens[I].LocalDesembaraco) + '</xLocDesemb>');
      SL.Add('          <UFDesemb>' + XmlEscapeLocal(AItens[I].UFDesembaraco) + '</UFDesemb>');
      SL.Add('          <dDesemb>' + DataXml(AItens[I].DataDesembaraco) + '</dDesemb>');
      SL.Add('          <tpViaTransp>' + IntToStr(AItens[I].ViaTransporte) + '</tpViaTransp>');
      { vAFRMM deve ser sempre gerado.
        Regra atual:
        - primeiro item recebe AFRMM/TUM pago quando manual > 0 ou API retornar valor;
        - demais itens recebem 0.00;
        - se nada for encontrado, todos recebem 0.00. }
      SL.Add('          <vAFRMM>' + ValorXml2(AItens[I].ValorAFRMM) + '</vAFRMM>');
      SL.Add('          <tpIntermedio>' + IntToStr(AItens[I].FormaIntermediacao) + '</tpIntermedio>');
      if Trim(AItens[I].CNPJAdquirente) <> '' then
        SL.Add('          <CNPJ>' + OnlyDigitsLocal(AItens[I].CNPJAdquirente) + '</CNPJ>');
      if Trim(AItens[I].UFAdquirente) <> '' then
        SL.Add('          <UFTerceiro>' + XmlEscapeLocal(AItens[I].UFAdquirente) + '</UFTerceiro>');
      SL.Add('          <cExportador>' + XmlEscapeLocal(AItens[I].CodigoExportador) + '</cExportador>');
      SL.Add('          <adi>');
      SL.Add('            <nAdicao>' + IntToStr(AItens[I].NumeroAdicao) + '</nAdicao>');
      SL.Add('            <nSeqAdic>' + IntToStr(AItens[I].NumeroSequencialItem) + '</nSeqAdic>');
      SL.Add('            <cFabricante>' + XmlEscapeLocal(AItens[I].CodigoFabricante) + '</cFabricante>');
      if AItens[I].ValorDescontoDI > 0 then
        SL.Add('            <vDescDI>' + ValorXml2(AItens[I].ValorDescontoDI) + '</vDescDI>');
      SL.Add('          </adi>');
      SL.Add('        </DI>');

      SL.Add('      </prod>');
      AddImpostoBasicoXml(SL, AItens[I]);
      SL.Add('    </det>');
    end;

    SL.Add('    <total>');
    SL.Add('      <ICMSTot>');
    SL.Add('        <vBC>' + ValorXml2(TotalICMSBase) + '</vBC>');
    SL.Add('        <vICMS>' + ValorXml2(TotalICMS) + '</vICMS>');
    SL.Add('        <vICMSDeson>0.00</vICMSDeson>');
    SL.Add('        <vFCP>0.00</vFCP>');
    SL.Add('        <vBCST>0.00</vBCST>');
    SL.Add('        <vST>0.00</vST>');
    SL.Add('        <vFCPST>0.00</vFCPST>');
    SL.Add('        <vFCPSTRet>0.00</vFCPSTRet>');
    SL.Add('        <vProd>' + ValorXml2(TotalProdutos) + '</vProd>');
    SL.Add('        <vFrete>' + ValorXml2(TotalFrete) + '</vFrete>');
    SL.Add('        <vSeg>' + ValorXml2(TotalSeguro) + '</vSeg>');
    SL.Add('        <vDesc>0.00</vDesc>');
    SL.Add('        <vII>' + ValorXml2(TotalII) + '</vII>');
    SL.Add('        <vIPI>' + ValorXml2(TotalIPI) + '</vIPI>');
    SL.Add('        <vIPIDevol>0.00</vIPIDevol>');
    SL.Add('        <vPIS>' + ValorXml2(TotalPIS) + '</vPIS>');
    SL.Add('        <vCOFINS>' + ValorXml2(TotalCOFINS) + '</vCOFINS>');
    SL.Add('        <vOutro>' + ValorXml2(TotalOutras) + '</vOutro>');
    SL.Add('        <vNF>' + ValorXml2(TotalNF) + '</vNF>');
    SL.Add('      </ICMSTot>');
    SL.Add('    </total>');

    SL.Add('    <transp>');
    SL.Add('      <modFrete>9</modFrete>');
    if (Trim(AConfig.TranspCNPJ) <> '') or (Trim(AConfig.TranspXNome) <> '') then
    begin
      SL.Add('      <transporta>');
      if Length(OnlyDigitsLocal(AConfig.TranspCNPJ)) = 11 then
        SL.Add('        <CPF>' + OnlyDigitsLocal(AConfig.TranspCNPJ) + '</CPF>')
      else if Trim(OnlyDigitsLocal(AConfig.TranspCNPJ)) <> '' then
        SL.Add('        <CNPJ>' + OnlyDigitsLocal(AConfig.TranspCNPJ) + '</CNPJ>');
      if Trim(AConfig.TranspXNome) <> '' then
        SL.Add('        <xNome>' + XmlEscapeLocal(AConfig.TranspXNome) + '</xNome>');
      if Trim(AConfig.TranspIE) <> '' then
        SL.Add('        <IE>' + OnlyDigitsLocal(AConfig.TranspIE) + '</IE>');
      if Trim(AConfig.TranspXEnder) <> '' then
        SL.Add('        <xEnder>' + XmlEscapeLocal(AConfig.TranspXEnder) + '</xEnder>');
      if Trim(AConfig.TranspXMun) <> '' then
        SL.Add('        <xMun>' + XmlEscapeLocal(AConfig.TranspXMun) + '</xMun>');
      if Trim(AConfig.TranspUF) <> '' then
        SL.Add('        <UF>' + XmlEscapeLocal(AConfig.TranspUF) + '</UF>');
      SL.Add('      </transporta>');
    end;
    SL.Add('    </transp>');

    SL.Add('    <pag>');
    SL.Add('      <detPag>');
    SL.Add('        <tPag>90</tPag>');
    SL.Add('        <vPag>0.00</vPag>');
    SL.Add('      </detPag>');
    SL.Add('    </pag>');

    SL.Add('  </infNFe>');
    SL.Add('</NFe>');

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

procedure SalvarXmlNFeDuimpCompletoD7(
  const AArquivo: string;
  const AConfig: TDuimpNFeConfig;
  const AEmitente: TDuimpNFePessoa;
  const ADestinatario: TDuimpNFePessoa;
  const AItens: TDuimpNFeItens
);
var
  SL: TStringList;
begin
  SL := TStringList.Create;
  try
    SL.Text := GerarXmlNFeDuimpCompletoD7(AConfig, AEmitente, ADestinatario, AItens);
    SL.SaveToFile(AArquivo);
  finally
    SL.Free;
  end;
end;


function DateFromNFeStrSafe(const S: string): TDateTime;
var
  Y, M, D: Word;
  T: string;
begin
  Result := 0;
  T := Trim(S);

  if T = '' then
    Exit;

  try
    if (Length(T) >= 10) and (T[5] = '-') and (T[8] = '-') then
    begin
      Y := StrToIntDef(Copy(T, 1, 4), 0);
      M := StrToIntDef(Copy(T, 6, 2), 0);
      D := StrToIntDef(Copy(T, 9, 2), 0);
      if (Y > 0) and (M > 0) and (D > 0) then
        Result := EncodeDate(Y, M, D);
      Exit;
    end;

    if (Length(T) >= 10) and (T[3] = '/') and (T[6] = '/') then
    begin
      D := StrToIntDef(Copy(T, 1, 2), 0);
      M := StrToIntDef(Copy(T, 4, 2), 0);
      Y := StrToIntDef(Copy(T, 7, 4), 0);
      if (Y > 0) and (M > 0) and (D > 0) then
        Result := EncodeDate(Y, M, D);
      Exit;
    end;
  except
    Result := 0;
  end;
end;

function DuimpConverterItemCompletoParaXmlItem(
  const ANumeroDuimp: string;
  const AItem: TDuimpNFeItemCompleto;
  const ASeq: Integer
): TDuimpNFeItem;
begin
  FillChar(Result, SizeOf(Result), 0);

  Result.Codigo := StrOrDefault(AItem.cProd, AItem.CodigoProduto);
  Result.Descricao := AItem.xProd;
  Result.NCM := AItem.NCM;
  Result.CEST := AItem.CEST;
  Result.CFOP := AItem.CFOP;
  Result.Unidade := AItem.uCom;
  if Result.Unidade = '' then
    Result.Unidade := AItem.uTrib;
  Result.Quantidade := AItem.qCom;
  if Result.Quantidade <= 0 then
    Result.Quantidade := AItem.qTrib;
  { Sem quantidade fixa por fallback. }

  Result.ValorUnitario := AItem.vUnCom;
  if Result.ValorUnitario <= 0 then
    Result.ValorUnitario := AItem.vUnTrib;

  Result.ValorTotal := AItem.vProd;
  if (Result.ValorTotal <= 0) and (Result.Quantidade > 0) and (Result.ValorUnitario > 0) then
    Result.ValorTotal := Result.Quantidade * Result.ValorUnitario;

  Result.NumeroDI := StrOrDefault(AItem.DI.nDI, ANumeroDuimp);
  Result.DataDI := DateFromNFeStrSafe(AItem.DI.dDI);
  Result.LocalDesembaraco := AItem.DI.xLocDesemb;
  Result.UFDesembaraco := AItem.DI.UFDesemb;
  Result.DataDesembaraco := DateFromNFeStrSafe(AItem.DI.dDesemb);
  Result.ViaTransporte := AItem.DI.tpViaTransp;
  { Sem via de transporte fixa por fallback. }

  Result.ValorAFRMM := AItem.DI.vAFRMM;
  Result.FormaIntermediacao := AItem.DI.tpIntermedio;
  { Sem forma de intermediacao fixa por fallback. }

  Result.CNPJAdquirente := AItem.DI.CNPJ;
  Result.UFAdquirente := AItem.DI.UFTerceiro;
  Result.CodigoExportador := AItem.DI.cExportador;
  Result.NumeroAdicao := AItem.DI.nAdicao;
  { Sem numero de adicao fixo por fallback. }
  Result.NumeroSequencialItem := AItem.DI.nSeqAdic;
  { Sem sequencial de adicao fixo por fallback. }
  Result.CodigoFabricante := AItem.DI.cFabricante;
  Result.ValorDescontoDI := AItem.DI.vDescDI;

  Result.ValorAduaneiro := AItem.ValorAduaneiroBRL;
  if (Result.ValorAduaneiro = 0) and
     ((AItem.vProd > 0) or (AItem.vFrete > 0) or (AItem.vSeg > 0)) then
    Result.ValorAduaneiro := AItem.vProd + AItem.vFrete + AItem.vSeg;

  Result.ValorFrete := AItem.vFrete;
  Result.ValorSeguro := AItem.vSeg;
  Result.ValorOutrasDespesas := AItem.vOutro;
  Result.ValorII := AItem.II.vImp;
  Result.ValorIPI := AItem.IPI.vIPI;
  Result.ValorPIS := AItem.PIS.vImp;
  Result.ValorCOFINS := AItem.COFINS.vImp;
  Result.ValorICMS := AItem.ICMS.vICMS;

  Result.BaseII := AItem.II.vBC;
  Result.PercentualII := AItem.II.pAliq;
  Result.BaseIPI := AItem.IPI.vBC;
  Result.PercentualIPI := AItem.IPI.pIPI;
  Result.BasePIS := BasePISCOFINSXmlLocal(AItem.PIS.vBC, Result.ValorAduaneiro);
  Result.PercentualPIS := AItem.PIS.pAliq;
  Result.BaseCOFINS := BasePISCOFINSXmlLocal(AItem.COFINS.vBC, Result.ValorAduaneiro);
  Result.PercentualCOFINS := AItem.COFINS.pAliq;

  Result.ValorII := ValorTributoXmlLocal(Result.ValorII, Result.BaseII, Result.PercentualII);
  Result.ValorIPI := ValorTributoXmlLocal(Result.ValorIPI, Result.BaseIPI, Result.PercentualIPI);
  Result.ValorPIS := ValorPISCOFINSXmlLocal(Result.ValorPIS, Result.BasePIS, Result.PercentualPIS);
  Result.ValorCOFINS := ValorPISCOFINSXmlLocal(Result.ValorCOFINS, Result.BaseCOFINS, Result.PercentualCOFINS);
  Result.BaseICMS := AItem.ICMS.vBC;
  Result.PercentualICMS := AItem.ICMS.pICMS;
  if AItem.ICMS.modBC >= 0 then
    Result.ModBCICMS := IntToStr(AItem.ICMS.modBC)
  else
    Result.ModBCICMS := '';

  Result.OrigICMS := AItem.ICMS.Orig;
  Result.CSTICMS := AItem.ICMS.CST;
  Result.CSTIPI := AItem.IPI.CST;
  Result.EnqIPI := AItem.IPI.cEnq;
  Result.CSTPIS := AItem.PIS.CST;
  Result.CSTCOFINS := AItem.COFINS.CST;
end;

procedure DuimpConverterItensCompletosParaXmlItens(
  const ANumeroDuimp: string;
  const AItensCompletos: TArrayDuimpNFeItemCompleto;
  var AItensXml: TDuimpNFeItens
);
var
  I: Integer;
begin
  SetLength(AItensXml, Length(AItensCompletos));
  for I := 0 to High(AItensCompletos) do
    AItensXml[I] := DuimpConverterItemCompletoParaXmlItem(ANumeroDuimp, AItensCompletos[I], I + 1);
end;

function DuimpValidarDadosNFeCompleta(
  const AItens: TArrayDuimpNFeItemCompleto;
  const AEmitente: TDuimpNFeEmitente;
  const ADestinatario: TDuimpNFeDestinatario
): string;
var
  SL: TStringList;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    if Trim(OnlyDigitsLocal(AEmitente.CNPJ)) = '' then
      SL.Add('- Emitente sem CNPJ.');
    if Trim(OnlyDigitsLocal(AEmitente.IE)) = '' then
      SL.Add('- Emitente sem IE.');
    if Trim(AEmitente.XNome) = '' then
      SL.Add('- Emitente sem nome.');
    if Trim(OnlyDigitsLocal(AEmitente.CMun)) = '' then
      SL.Add('- Emitente sem codigo de municipio.');
    if Trim(OnlyDigitsLocal(AEmitente.CRT)) = '' then
      SL.Add('- Emitente sem CRT.');

    if Trim(OnlyDigitsLocal(ADestinatario.CNPJ)) = '' then
      SL.Add('- Destinatario sem CNPJ.');
    if Trim(ADestinatario.XNome) = '' then
      SL.Add('- Destinatario sem nome.');
    if Trim(OnlyDigitsLocal(ADestinatario.CMun)) = '' then
      SL.Add('- Destinatario sem codigo de municipio.');
    if Trim(OnlyDigitsLocal(ADestinatario.IndIEDest)) = '' then
      SL.Add('- Destinatario sem indIEDest.');

    if Length(AItens) = 0 then
      SL.Add('- Nenhum item montado para a NF-e.');

    for I := 0 to High(AItens) do
    begin
      if Trim(AItens[I].NCM) = '' then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem NCM.');
      if Trim(AItens[I].CFOP) = '' then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem CFOP.');
      if Trim(AItens[I].xProd) = '' then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem descricao.');
      if AItens[I].vProd <= 0 then
        SL.Add('- Item ' + IntToStr(I + 1) + ' com valor de produto zerado.');
      if Trim(AItens[I].DI.nDI) = '' then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem numero DI/DUIMP no grupo DI.');
      if AItens[I].ICMS.Orig <= 0 then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem ICMS.orig.');
      if Trim(AItens[I].ICMS.CST) = '' then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem ICMS.CST.');
      if Trim(AItens[I].PIS.CST) = '' then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem PIS.CST.');
      if Trim(AItens[I].COFINS.CST) = '' then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem COFINS.CST.');
      { IPI.CST e IPI.cEnq nao bloqueiam esta validacao porque a rotina de consulta
        pode montar preview/diagnostico sem inventar esses campos. Quando existirem
        no endpoint ou em campo ERP especifico, serao propagados para o XML. Use
        DuimpItensNFeAvisosIPI para listar avisos sem impedir a geracao. }
    end;

    if SL.Count = 0 then
      Result := 'OK'
    else
      Result := SL.Text;
  finally
    SL.Free;
  end;
end;

function DuimpItensNFeAvisosIPI(
  const AItens: TArrayDuimpNFeItemCompleto
): string;
var
  SL: TStringList;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    for I := 0 to High(AItens) do
    begin
      if ((AItens[I].IPI.vBC > 0) or (AItens[I].IPI.pIPI > 0) or (AItens[I].IPI.vIPI > 0)) and
         (Trim(AItens[I].IPI.CST) = '') then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem IPI.CST retornado por endpoint/ERP.');
      if ((AItens[I].IPI.vBC > 0) or (AItens[I].IPI.pIPI > 0) or (AItens[I].IPI.vIPI > 0)) and
         (Trim(AItens[I].IPI.cEnq) = '') then
        SL.Add('- Item ' + IntToStr(I + 1) + ' sem IPI.cEnq retornado por endpoint/ERP.');
    end;
    Result := Trim(SL.Text);
  finally
    SL.Free;
  end;
end;

function DuimpGerarXmlNFeImportacaoCompleta(
  const ANumeroDuimp: string;
  const AItens: TArrayDuimpNFeItemCompleto;
  const AEmitente: TDuimpNFeEmitente;
  const ADestinatario: TDuimpNFeDestinatario;
  const AConfig: TDuimpNFeConfig;
  const AInfCpl: string
): string;
var
  ItensXml: TDuimpNFeItens;
begin
  DuimpConverterItensCompletosParaXmlItens(ANumeroDuimp, AItens, ItensXml);
  Result := GerarXmlNFeDuimpCompletoD7(AConfig, AEmitente, ADestinatario, ItensXml);

  if Trim(AInfCpl) <> '' then
  begin
    Result := StringReplace(
      Result,
      '  </infNFe>',
      '    <infAdic>' + #13#10 +
      '      <infCpl>' + XmlEscapeLocal(AInfCpl) + '</infCpl>' + #13#10 +
      '    </infAdic>' + #13#10 +
      '  </infNFe>',
      []
    );
  end;
end;

function AddBackslashLocal(const S: string): string;
begin
  Result := S;
  if (Result <> '') and (Result[Length(Result)] <> '\') then
    Result := Result + '\';
end;

function DuimpNomeArquivoXmlDownloads(const ANumeroDuimp: string): string;
var
  Dir: string;
  Nome: string;
  I: Integer;
begin
  Dir := GetEnvironmentVariable('USERPROFILE');
  if Dir <> '' then
    Dir := AddBackslashLocal(Dir) + 'Downloads\'
  else
    Dir := AddBackslashLocal(GetEnvironmentVariable('TEMP'));

  if Dir = '' then
    Dir := 'C:\Temp\';

  Nome := Trim(ANumeroDuimp);
  for I := 1 to Length(Nome) do
  begin
    if Nome[I] in ['\', '/', ':', '*', '?', '"', '<', '>', '|'] then
      Nome[I] := '_';
  end;

  if Nome = '' then
    Nome := FormatDateTime('yyyymmddhhnnss', Now);

  { Regra solicitada: salvar com o mesmo numero informado em EditNumeroDuimp. }
  Result := Dir + Nome + '.xml';
end;


end.
