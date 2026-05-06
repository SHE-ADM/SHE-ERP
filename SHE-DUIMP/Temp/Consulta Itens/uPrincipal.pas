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

  TForm1 = class(TForm)
    EditNumeroDuimp: TEdit;
    EditVersaoDuimp: TEdit;
    BTNAutentica: TButton;
    MemoRetorno: TMemo;
    EditNumeroItem: TEdit;
    BTNConsultaDUIMP: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDUIMPClick(Sender: TObject);
    procedure BTNConsultaItemsClick(Sender: TObject);
  private
    FClient: TPortalUnicoClientD7;
    FDuimpItensProdutos: TArrayDuimpItemProdutoInfo;

    procedure GarantirAutenticado;
    procedure ExibirRetorno(const ATitulo, ARetorno: string);

    function GetNumeroDuimp: string;
    function GetVersaoDuimp: Integer;

    function JsonStr(AObj: ISuperObject; const APath: string): string;
    function JsonInt(AObj: ISuperObject; const APath: string): Integer;
    function JsonStrAny(AObj: ISuperObject; const APaths: array of string): string;
    function JsonIntAny(AObj: ISuperObject; const APaths: array of string): Integer;

    function GetJsonArrayFromRoot(ARoot: ISuperObject): TSuperArray;
    function OnlyDigits(const AValue: string): string;
    function NormalizarCpfCnpjRaiz(const AValue: string): string;
    function ExtrairCpfCnpjRaizDoJsonGeral(ARoot: ISuperObject): string;

    procedure LimparDuimpItemProdutoInfo(var AInfo: TDuimpItemProdutoInfo);
    procedure ParseDuimpItemProduto(AObjItem: ISuperObject; const ACpfCnpjRaizPadrao: string; var AInfo: TDuimpItemProdutoInfo);
    procedure PreencherProdutoCatp(AObjProduto: ISuperObject; var AInfo: TDuimpItemProdutoInfo);
    procedure ConsultarProdutoCatpDoItem(var AInfo: TDuimpItemProdutoInfo);
    procedure ExibirItemProdutoNoMemo(const AInfo: TDuimpItemProdutoInfo);
  public
    function DuimpItemProdutoCount: Integer;
    function DuimpItemProdutoByIndex(const AIndex: Integer): TDuimpItemProdutoInfo;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FClient := nil;
  SetLength(FDuimpItensProdutos, 0);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(FClient) then
    FreeAndNil(FClient);

  SetLength(FDuimpItensProdutos, 0);
end;

procedure TForm1.GarantirAutenticado;
begin
  if not Assigned(FClient) then
    raise Exception.Create('Cliente não autenticado. Clique primeiro em Autenticar.');
end;

function TForm1.GetNumeroDuimp: string;
begin
  Result := Trim(EditNumeroDuimp.Text);

  if Result = '' then
    raise Exception.Create('Informe o número da DUIMP.');
end;

function TForm1.GetVersaoDuimp: Integer;
begin
  Result := StrToIntDef(Trim(EditVersaoDuimp.Text), 0);

  if Result <= 0 then
    raise Exception.Create('Informe uma versão válida da DUIMP. Exemplo: 1');
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
        'Erro ao autenticar no Portal Único:' + sLineBreak +
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
    MemoRetorno.Lines.Add('Número: ' + NumeroDuimp);
    MemoRetorno.Lines.Add('Versão: ' + IntToStr(VersaoDuimp));
    MemoRetorno.Lines.Add('');

    Retorno := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);

    ExibirRetorno(
      'DUIMP CONSULTADA COM SUCESSO' + sLineBreak +
      'Número: ' + NumeroDuimp + sLineBreak +
      'Versão: ' + IntToStr(VersaoDuimp) + sLineBreak +
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
    AInfo.StatusConsultaCatp := 'Não consultado: CPF/CNPJ raiz não encontrado no item/DUIMP.';
    Exit;
  end;

  if Trim(AInfo.CodigoProduto) = '' then
  begin
    AInfo.StatusConsultaCatp := 'Não consultado: código do produto não encontrado no item da DUIMP.';
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
      AInfo.StatusConsultaCatp := 'CATP retornou JSON inválido.';
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
          { Mantém o erro original abaixo }
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
  MemoRetorno.Lines.Add('Código Produto......: ' + AInfo.CodigoProduto);
  MemoRetorno.Lines.Add('Versão Produto......: ' + AInfo.VersaoProduto);
  MemoRetorno.Lines.Add('CPF/CNPJ Raiz.......: ' + AInfo.CpfCnpjRaiz);
  MemoRetorno.Lines.Add('Descrição na DUIMP..: ' + AInfo.DescricaoDuimp);
  MemoRetorno.Lines.Add('');

  MemoRetorno.Lines.Add('CATÁLOGO DE PRODUTOS / CATP');
  MemoRetorno.Lines.Add(StringOfChar('-', 80));
  MemoRetorno.Lines.Add('Status..............: ' + AInfo.StatusConsultaCatp);
  MemoRetorno.Lines.Add('Código CATP.........: ' + AInfo.CodigoCatp);
  MemoRetorno.Lines.Add('Versão CATP.........: ' + AInfo.VersaoCatp);
  MemoRetorno.Lines.Add('NCM CATP............: ' + AInfo.NcmCatp);
  MemoRetorno.Lines.Add('Situação CATP.......: ' + AInfo.SituacaoCatp);
  MemoRetorno.Lines.Add('Modalidade CATP.....: ' + AInfo.ModalidadeCatp);
  MemoRetorno.Lines.Add('Denominação CATP....: ' + AInfo.DenominacaoCatp);
  MemoRetorno.Lines.Add('Descrição CATP......: ' + AInfo.DescricaoCatp);
  MemoRetorno.Lines.Add('');
  MemoRetorno.Lines.Add(StringOfChar('=', 80));
  MemoRetorno.Lines.Add('');
end;

procedure TForm1.BTNConsultaItemsClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  RetornoDuimp: string;
  RetornoItens: string;
  RootDuimp: ISuperObject;
  RootItens: ISuperObject;
  ArrItens: TSuperArray;
  I: Integer;
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
    MemoRetorno.Lines.Add('Versão: ' + IntToStr(VersaoDuimp));
    MemoRetorno.Lines.Add('');

    { Consulta dados gerais para tentar obter CPF/CNPJ raiz do importador/responsável }
    RetornoDuimp := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);
    RootDuimp := SO(RetornoDuimp);

    CpfCnpjRaizPadrao := '';
    if Assigned(RootDuimp) then
      CpfCnpjRaizPadrao := ExtrairCpfCnpjRaizDoJsonGeral(RootDuimp);

    MemoRetorno.Lines.Add('CPF/CNPJ raiz padrão identificado: ' + CpfCnpjRaizPadrao);
    MemoRetorno.Lines.Add('');

    RetornoItens := FClient.ConsultarDuimpItens(NumeroDuimp, VersaoDuimp);
    RootItens := SO(RetornoItens);

    if not Assigned(RootItens) then
      raise Exception.Create('JSON inválido no retorno dos itens da DUIMP.');

    ArrItens := GetJsonArrayFromRoot(RootItens);

    if not Assigned(ArrItens) then
    begin
      MemoRetorno.Lines.Add('Não foi encontrado array de itens no retorno da DUIMP.');
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

end.
