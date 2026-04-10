unit qProduto_Estoque_Etiqueta;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IBSQL, IDGlobal;

type
  TqrpProduto_Estoque_Etiqueta = class(TQuickRep)
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBSumario: TQRBand;
    QRDProduto: TQRDBText;
    QRDDescricao: TQRDBText;
    QRDQuantidade: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    RelatorioC_QUANTIDADE: TStringField;
    QREQuantidade: TQRLabel;
    RelatorioARTIGO: TIBStringField;
    RelatorioPRODUTO: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioCOR: TIBStringField;
    RelatorioETIQUETA: TIBStringField;
    RelatorioQUANTIDADE: TIBBCDField;
    RelatorioROLO: TIntegerField;
    QRDEtiqueta: TQRDBText;
    RelatorioUCOM: TIBStringField;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLProduto: TQRLabel;
    QRLDescricao: TQRLabel;
    QRLEtiqueta: TQRLabel;
    QRLQuantidade: TQRLabel;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBSumarioBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio: TRECRelatorios;
    Quantidade: Double;
    Rolo: Integer;
    procedure _Pesquisa_Categorias;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Estoque_Etiqueta: TqrpProduto_Estoque_Etiqueta;

implementation

uses uPrincipal, bPrincipal,
  pExporta;

{$R *.DFM}

Constructor TqrpProduto_Estoque_Etiqueta.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Estoque_Etiqueta.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            { Modelo }
            if RECRelatorio.Modelo <> 'Padrão' then
            begin
              RECRelatorio.Titulo := StringReplace(RECRelatorio.Titulo,'Produto',RECRelatorio.Modelo,[rfReplaceAll,rfIgnoreCase]);
              QRLProduto.Caption  := StringReplace(QRLProduto.Caption  ,'Produto',RECRelatorio.Modelo,[rfReplaceAll,rfIgnoreCase]);
            end;

            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Inicializando Variáveis }
            Quantidade := 0;
            Rolo := 0;

            { Filtros Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') and
               (RECRelatorio.PEC1CodigoText <> '0')     and (RECRelatorio.PEC2CodigoText <> '0') then
               RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption+' '+RECRelatorio.PEC2CodigoCaption+' '
            else
               RECRelatorio.PEC1CodigoText := '0';

            { Filtros Gerais }
            if RECRelatorio.PEC1ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC1ConsultaAnd := 'AND '+RECRelatorio.IEC1ConsultaField+' '+RECRelatorio.IEC1ConsultaWhere+' '''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if RECRelatorio.PEC2ConsultaText <> 'TODOS' then
            begin
              _Pesquisa_Categorias;
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': ' +RECRelatorio.PEC2ConsultaText +' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC3ConsultaAnd := 'AND PSQ.PRO_DPSQ '        + RECRelatorio.IEC3ConsultaWhere   +' '''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': ' +RECRelatorio.PEC3ConsultaText +' ';
            end;

            if RECRelatorio.PEC4ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC4ConsultaAnd := 'AND PSQ.PRO_DPSQ '        + RECRelatorio.IEC4ConsultaWhere   +' '''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': ' +RECRelatorio.PEC4ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataAnd    := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.IEFKDataAnd  := 'AND ROM_DNFS BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,');
              SQL.Add('       CP.PRO_DPRO||'' ''||TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))) AS DESCRICAO,CP.DECOR AS COR,');
              SQL.Add('       CP.PRO_DUNI AS UCOM,ETQ.EST_CDET AS ETIQUETA,ETQ.EST_CRED AS QUANTIDADE,ETQ.EST_PCRE AS ROLO');
              SQL.Add('FROM   CAD_PRO     AS CP');
              SQL.Add('JOIN   CAD_PRO_PSQ AS PSQ ON (PSQ.ID = CP.IDAK)');

              if RECRelatorio.Tipo = 'Físico' then
                 SQL.Add('JOIN CAD_PRO_EST AS ETQ ON (ETQ.IDCP = CP.ID AND ETQ.IDPK = 0 AND ETQ.REOP = ''E'')')
              else
                 SQL.Add('JOIN CAD_PRO_SEP AS ETQ ON (ETQ.IDCP = CP.ID)');

              SQL.Add('WHERE  CP.ID > 0');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('ORDER BY ARTIGO,COR,ETIQUETA');
              Open;
            end;
            while not Relatorio.Eof do
            begin
              Quantidade := Quantidade + RelatorioQUANTIDADE.AsFloat;
              Rolo       := Rolo       + RelatorioROLO.AsInteger;
              Relatorio.Next;
            end;
          end;
begin
  with qrpProduto_Estoque_Etiqueta do
    try
      _Select;
      _Report;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorio.PrintTAG of
          0: PreviewModal;
          1: Print;

          { PDF }
          2: try
               ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorio.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
               oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
             except
               on E: Exception do
               begin
                 oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                          'Erro: ' + E.Message + '.');
               end;
             end;

          { EXCEL }
          3: try
               ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorio.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
               oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
             except
               on E: Exception do
               begin
                 oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                          'Erro: ' + E.Message + '.');
               end;
             end;

          { WORD }
          4: try
               ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorio.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
               oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
             except
               on E: Exception do
               begin
                 oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                          'Erro: ' + E.Message + '.');
               end;
             end;
        end;
      end else oException(Nil,'Registros não Encontrados !');
    finally
      WinControlFormDestroy(qrpProduto_Estoque_Etiqueta);
    end;
end;

procedure TqrpProduto_Estoque_Etiqueta.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Estoque_Etiqueta);
  end;
end;

procedure TqrpProduto_Estoque_Etiqueta.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;
end;

procedure TqrpProduto_Estoque_Etiqueta.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value         := Relatorio.RecNo;
  RelatorioC_QUANTIDADE.Value := FormatFloat(',##,0.00;-,##,0.00',RelatorioQUANTIDADE.AsFloat)+
                                 IFThen(RelatorioROLO.AsInteger > 1,'/'+RelatorioROLO.AsString,'')+
                                 ' '+RelatorioUCOM.AsString;
end;

procedure TqrpProduto_Estoque_Etiqueta.QRBSumarioBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QREQuantidade.Caption := FormatFloat(',##,0.00;-,##,0.00',Quantidade)+
                           IFThen(Rolo <> 0,'/'+IntToStr(Rolo),'');
end;

procedure TqrpProduto_Estoque_Etiqueta._Pesquisa_Categorias;
var
  DString,DField: String;
  SLPesquisa: TStringList;
  i: Integer;
begin
  SLPesquisa := TStringList.Create;
  try
    SLPesquisa.Clear;
    DString := RECRelatorio.PEC2ConsultaText;
    While Length(DString) > 0 do
    begin
      DField := Fetch(DString,' ');
      if Length(DField) > 0 then
         SLPesquisa.Add(DField);
    end;


    if SLPesquisa.Count > 0 then
       for i := 0 to SLPesquisa.Count - 1 do
           RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaAnd + ' AND PSQ.PRO_DPSQ ' +RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(SLPesquisa.Strings[i])+RECRelatorio.IEC2ConsultaLike2+'''';
  finally
    FreeAndNil(SLPesquisa);
  end;
end;

end.
