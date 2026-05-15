unit uDuimpNFeERPComponentesD7;

interface

uses
  SysUtils, Classes, StdCtrls, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  uDuimpNFeXmlCompletoD7;

function DuimpERPTextoEdit(AOwner: TComponent; const ANomeComponente: string): string;
function DuimpERPTextoEditAny(AOwner: TComponent; const ANomesComponentes: array of string): string;
function DuimpERPOnlyDigits(const S: string): string;
function DuimpERPValorCNF(const ANumeroDuimp: string; const ANNF: Integer): Integer;

procedure DuimpERPPreencherConfigNFe(
  AOwner: TComponent;
  const ANumeroDuimp: string;
  const ATranspCNPJ, ATranspNome, ATranspIE, ATranspEnder, ATranspMun, ATranspUF: string;
  var AConfig: TDuimpNFeConfig
);

procedure DuimpERPPreencherEmitenteNFe(
  AOwner: TComponent;
  var AEmitente: TDuimpNFeEmitente
);

procedure DuimpERPPreencherDestinatarioNFe(
  AOwner: TComponent;
  const AEmitente: TDuimpNFeEmitente;
  var ADestinatario: TDuimpNFeDestinatario
);

function DuimpERPValidarConfigNFe(
  AOwner: TComponent;
  const AConfig: TDuimpNFeConfig
): string;

procedure DuimpERPSalvarTextoUTF8(const AArquivo, ATexto: string);

implementation

function DuimpERPTextoEdit(AOwner: TComponent; const ANomeComponente: string): string;
var
  C: TComponent;
begin
  Result := '';
  if (AOwner = nil) or (Trim(ANomeComponente) = '') then
    Exit;

  C := AOwner.FindComponent(ANomeComponente);
  if (C <> nil) then
  begin
    if (C is TdxEdit) then
      Result := Trim(TdxEdit(C).Text)
    else if (C is TEdit) then
      Result := Trim(TEdit(C).Text);
  end;
end;

function DuimpERPTextoEditAny(AOwner: TComponent; const ANomesComponentes: array of string): string;
var
  I: Integer;
begin
  Result := '';
  for I := Low(ANomesComponentes) to High(ANomesComponentes) do
  begin
    Result := DuimpERPTextoEdit(AOwner, ANomesComponentes[I]);
    if Trim(Result) <> '' then
      Exit;
  end;
end;

function DuimpERPOnlyDigits(const S: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9'] then
      Result := Result + S[I];
end;

function TextoOuFallbackLocal(const ATexto, AFallback: string): string;
begin
  Result := Trim(ATexto);
  if Result = '' then
    Result := Trim(AFallback);
end;

function InTdxEditLocal(AOwner: TComponent; const ANomes: array of string): Integer;
var
  J: Integer;
  T: string;
begin
  T := '';
  for J := Low(ANomes) to High(ANomes) do
  begin
    T := DuimpERPTextoEdit(AOwner, ANomes[J]);
    if Trim(T) <> '' then
      Break;
  end;
  Result := StrToIntDef(DuimpERPOnlyDigits(T), 0);
end;

function CampoEditIntLocal(AOwner: TComponent; const ANomes: array of string): Integer;
begin
  Result := StrToIntDef(DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ANomes)), -9999);
end;

function DuimpERPValorCNF(const ANumeroDuimp: string; const ANNF: Integer): Integer;
var
  Dig: string;
begin
  Dig := DuimpERPOnlyDigits(ANumeroDuimp);
  if Length(Dig) > 8 then
    Dig := Copy(Dig, Length(Dig) - 7, 8);

  Result := StrToIntDef(Dig, 0);
  if Result <= 0 then
    Result := ANNF;
  if Result <= 0 then
    Result := StrToIntDef(FormatDateTime('hhnnss', Now), 1);
end;

procedure DuimpERPPreencherConfigNFe(
  AOwner: TComponent;
  const ANumeroDuimp: string;
  const ATranspCNPJ, ATranspNome, ATranspIE, ATranspEnder, ATranspMun, ATranspUF: string;
  var AConfig: TDuimpNFeConfig
);
begin
  FillChar(AConfig, SizeOf(AConfig), 0);

  AConfig.CUF := InTdxEditLocal(AOwner, ['EditIdecUF1', 'EditIdecUF']);
  AConfig.CNF := DuimpERPValorCNF(ANumeroDuimp, InTdxEditLocal(AOwner, ['EditIdenNF1', 'EditIdenNF']));
  AConfig.NatOp := DuimpERPTextoEditAny(AOwner, ['EditIdenatOp1', 'EditIdenatOp']);
  AConfig.ModNF := TextoOuFallbackLocal(DuimpERPTextoEditAny(AOwner, ['EditIdeMod1', 'EditIdeMod', 'Editmod', 'EditModeloNFe']), '55');
  AConfig.Serie := InTdxEditLocal(AOwner, ['EditIdeSerie1', 'EditIdeSerie', 'EditSerieNFe', 'EditSerie']);
  if AConfig.Serie <= 0 then
    AConfig.Serie := 1;
  AConfig.NNF := InTdxEditLocal(AOwner, ['EditIdenNF1', 'EditIdenNF']);
  AConfig.TpNF := InTdxEditLocal(AOwner, ['EditIdetpNF1', 'EditIdetpNF']);
  AConfig.IdDest := InTdxEditLocal(AOwner, ['EditIdeidDest1', 'EditIdeidDest']);
  AConfig.CMunFG := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditIdecMunFG1', 'EditIdecMunFG']));
  AConfig.TpImp := InTdxEditLocal(AOwner, ['EditIdetpImp1', 'EditIdetpImp']);
  AConfig.TpEmis := InTdxEditLocal(AOwner, ['EditIdetpEmis1', 'EditIdetpEmis']);
  AConfig.TpAmb := InTdxEditLocal(AOwner, ['EditIdetpAmb1', 'EditIdetpAmb']);
  AConfig.FinNFe := InTdxEditLocal(AOwner, ['EditIdefinNFe1', 'EditIdefinNFe']);
  AConfig.IndFinal := InTdxEditLocal(AOwner, ['EditIdeindFinal1', 'EditIdeindFinal']);
  AConfig.IndPres := InTdxEditLocal(AOwner, ['EditIdeindPres1', 'EditIdeindPres']);
  AConfig.IndIntermed := InTdxEditLocal(AOwner, ['EditIdeindIntermed1', 'EditIdeindIntermed']);

  AConfig.TranspCNPJ := DuimpERPOnlyDigits(ATranspCNPJ);
  AConfig.TranspXNome := Trim(ATranspNome);
  AConfig.TranspIE := DuimpERPOnlyDigits(ATranspIE);
  AConfig.TranspXEnder := Trim(ATranspEnder);
  AConfig.TranspXMun := Trim(ATranspMun);
  AConfig.TranspUF := UpperCase(Trim(ATranspUF));
  
  // Lê os campos de volumes, se os TdxEdit tiverem sido adicionados na tela
  AConfig.TranspQVol := CampoEditIntLocal(AOwner, ['EditTranspqVol', 'EditqVol', 'EditQVol']);
  if AConfig.TranspQVol < 0 then
    AConfig.TranspQVol := 0; // -9999 é o fallback, então zera
    
  AConfig.TranspEsp := DuimpERPTextoEditAny(AOwner, ['EditTranspEsp', 'EditEspecie']);
  AConfig.TranspMarca := DuimpERPTextoEditAny(AOwner, ['EditTranspMarca', 'EditMarca']);

  AConfig.ProcEmi := 0;
  AConfig.VerProc := 'SHE-DUIMP-D7';
end;

procedure DuimpERPPreencherEmitenteNFe(
  AOwner: TComponent;
  var AEmitente: TDuimpNFeEmitente
);
begin
  FillChar(AEmitente, SizeOf(AEmitente), 0);

  AEmitente.CNPJ := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditlEmitCNPJ', 'EditEmitCNPJ']));
  AEmitente.IE := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditEmitIE']));
  AEmitente.XNome := DuimpERPTextoEditAny(AOwner, ['EditEmitxNome']);
  AEmitente.XFant := DuimpERPTextoEditAny(AOwner, ['EditEmitxFant']);
  AEmitente.XLgr := DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitxLgr']);
  AEmitente.Nro := DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitnro']);
  AEmitente.XCpl := DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitxCpl']);
  AEmitente.XBairro := DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitxBairro']);
  AEmitente.CMun := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitcMun']));
  AEmitente.XMun := DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitxMun']);
  AEmitente.UF := UpperCase(DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitUF']));
  AEmitente.CEP := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitCEP']));
  AEmitente.CPais := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitcPais']));
  AEmitente.XPais := DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitxPais']);
  AEmitente.Fone := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditEmitenderEmitFone']));
  AEmitente.CRT := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditEmitCRT']));
end;

procedure DuimpERPPreencherDestinatarioNFe(
  AOwner: TComponent;
  const AEmitente: TDuimpNFeEmitente;
  var ADestinatario: TDuimpNFeDestinatario
);
begin
  FillChar(ADestinatario, SizeOf(ADestinatario), 0);

  ADestinatario.CNPJ := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditDestCNPJ']));
  ADestinatario.XNome := DuimpERPTextoEditAny(AOwner, ['EditDestxNome']);
  ADestinatario.XLgr := DuimpERPTextoEditAny(AOwner, ['EditDestenderDestxLgr']);
  ADestinatario.Nro := DuimpERPTextoEditAny(AOwner, ['EditDestenderDestnro']);
  ADestinatario.XCpl := DuimpERPTextoEditAny(AOwner, ['EditDestenderDestxCpl']);
  ADestinatario.XBairro := DuimpERPTextoEditAny(AOwner, ['EditDestenderDestxBairro']);
  ADestinatario.CMun := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditDestenderDestcMun']));
  ADestinatario.XMun := DuimpERPTextoEditAny(AOwner, ['EditDestenderDestxMun']);
  ADestinatario.UF := UpperCase(DuimpERPTextoEditAny(AOwner, ['EditDestenderDestUF']));
  ADestinatario.CEP := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditDestenderDestCEP']));
  ADestinatario.CPais := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditDestenderDestcPais']));
  ADestinatario.XPais := DuimpERPTextoEditAny(AOwner, ['EditDestenderDestxPais']);
  ADestinatario.Fone := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditDestenderDestFone']));
  ADestinatario.IndIEDest := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditDestindIEDest']));

  ADestinatario.IE := DuimpERPOnlyDigits(DuimpERPTextoEditAny(AOwner, ['EditDestIE']));

  if ADestinatario.IndIEDest = '' then
    ADestinatario.IndIEDest := '9';
end;

function CampoEditInformadoLocal(AOwner: TComponent; const ANomes: array of string): Boolean;
begin
  Result := Trim(DuimpERPTextoEditAny(AOwner, ANomes)) <> '';
end;

function DuimpERPValidarConfigNFe(
  AOwner: TComponent;
  const AConfig: TDuimpNFeConfig
): string;
var
  SL: TStringList;
  V: Integer;
begin
  SL := TStringList.Create;
  try
    if AConfig.CUF <= 0 then
      SL.Add('- ide.cUF nao informado.');
    if Trim(AConfig.NatOp) = '' then
      SL.Add('- ide.natOp nao informado.');
    if AConfig.Serie <= 0 then
      SL.Add('- ide.serie nao informado.');
    if AConfig.NNF <= 0 then
      SL.Add('- ide.nNF nao informado.');

    if not CampoEditInformadoLocal(AOwner, ['EditIdetpNF1', 'EditIdetpNF']) then
      SL.Add('- ide.tpNF nao informado.')
    else
    begin
      V := CampoEditIntLocal(AOwner, ['EditIdetpNF1', 'EditIdetpNF']);
      if (V < 0) or (V > 1) then
        SL.Add('- ide.tpNF invalido. Informe 0=entrada ou 1=saida.');
    end;

    if AConfig.IdDest <= 0 then
      SL.Add('- ide.idDest nao informado.');
    if Trim(AConfig.CMunFG) = '' then
      SL.Add('- ide.cMunFG nao informado.');

    if not CampoEditInformadoLocal(AOwner, ['EditIdetpImp1', 'EditIdetpImp']) then
      SL.Add('- ide.tpImp nao informado.')
    else
    begin
      V := CampoEditIntLocal(AOwner, ['EditIdetpImp1', 'EditIdetpImp']);
      if (V < 0) or (V > 5) then
        SL.Add('- ide.tpImp invalido.');
    end;

    if not CampoEditInformadoLocal(AOwner, ['EditIdetpEmis1', 'EditIdetpEmis']) then
      SL.Add('- ide.tpEmis nao informado.')
    else
    begin
      V := CampoEditIntLocal(AOwner, ['EditIdetpEmis1', 'EditIdetpEmis']);
      if V <= 0 then
        SL.Add('- ide.tpEmis invalido.');
    end;

    if not CampoEditInformadoLocal(AOwner, ['EditIdetpAmb1', 'EditIdetpAmb']) then
      SL.Add('- ide.tpAmb nao informado.')
    else
    begin
      V := CampoEditIntLocal(AOwner, ['EditIdetpAmb1', 'EditIdetpAmb']);
      if (V <> 1) and (V <> 2) then
        SL.Add('- ide.tpAmb invalido. Informe 1=producao ou 2=homologacao.');
    end;

    if AConfig.FinNFe <= 0 then
      SL.Add('- ide.finNFe nao informado.');

    if not CampoEditInformadoLocal(AOwner, ['EditIdeindFinal1', 'EditIdeindFinal']) then
      SL.Add('- ide.indFinal nao informado.')
    else
    begin
      V := CampoEditIntLocal(AOwner, ['EditIdeindFinal1', 'EditIdeindFinal']);
      if (V < 0) or (V > 1) then
        SL.Add('- ide.indFinal invalido.');
    end;

    if not CampoEditInformadoLocal(AOwner, ['EditIdeindPres1', 'EditIdeindPres']) then
      SL.Add('- ide.indPres nao informado.')
    else
    begin
      V := CampoEditIntLocal(AOwner, ['EditIdeindPres1', 'EditIdeindPres']);
      if not (((V >= 0) and (V <= 5)) or (V = 9)) then
        SL.Add('- ide.indPres invalido.');
    end;

    if CampoEditInformadoLocal(AOwner, ['EditIdeindIntermed1', 'EditIdeindIntermed']) then
    begin
      V := CampoEditIntLocal(AOwner, ['EditIdeindIntermed1', 'EditIdeindIntermed']);
      if (V < 0) or (V > 1) then
        SL.Add('- ide.indIntermed invalido.');
    end;

    Result := Trim(SL.Text);
  finally
    SL.Free;
  end;
end;

procedure DuimpERPSalvarTextoUTF8(const AArquivo, ATexto: string);
var
  FS: TFileStream;
  UTF8: UTF8String;
begin
  UTF8 := UTF8Encode(ATexto);
  FS := TFileStream.Create(AArquivo, fmCreate);
  try
    if Length(UTF8) > 0 then
      FS.WriteBuffer(UTF8[1], Length(UTF8));
  finally
    FS.Free;
  end;
end;

end.
