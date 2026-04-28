unit qGProduto_Tabela_Preco;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TqrpGProduto_Tabela_Preco = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDDECLCVCR: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLArtigo: TQRLabel;
    Relatorio: TIBQuery;
    QRDVPRC_PAD: TQRDBText;
    QRDProduto: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRLDescricao: TQRLabel;
    QRDDescricao: TQRDBText;
    QRLVPRC_PAD: TQRLabel;
    QRESubTotal_ITEM: TQRExpr;
    QRLSubTotal: TQRLabel;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    QRLVPRC_PRZ: TQRLabel;
    QRLVPRC_PRO: TQRLabel;
    QRLPIPI: TQRLabel;
    QRLC_VUICMS_ST: TQRLabel;
    QRLC_VUNET: TQRLabel;
    QRDVPRC_PRZ: TQRDBText;
    QRDVPRC_PRO: TQRDBText;
    QRDPIPI: TQRDBText;
    QRDC_VUICMS_ST: TQRDBText;
    QRDC_VUNET: TQRDBText;
    RelatorioC_ID: TIntegerField;
    RelatorioC_VUNET: TFloatField;
    RelatorioC_PICMS: TFloatField;
    RelatorioC_PICMS_ST: TFloatField;
    RelatorioC_VICMS_ST: TFloatField;
    RelatorioC_VBC: TFloatField;
    RelatorioC_VICMS: TFloatField;
    RelatorioC_VBC_ST: TFloatField;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QConsulta: TIBQuery;
    QRLNCM: TQRLabel;
    QRDNCM: TQRDBText;
    RelatorioEMPRESA: TIBStringField;
    RelatorioARTIGO: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioORIG: TSmallintField;
    RelatorioFPAIS: TIBStringField;
    RelatorioCATEGORIA: TIBStringField;
    RelatorioSUBCATEGORIA: TIBStringField;
    RelatorioNCM: TIBStringField;
    RelatorioPIPI: TIBBCDField;
    RelatorioVPRC_PAD: TFloatField;
    RelatorioVPRC_PAD_PRZ: TFloatField;
    RelatorioVPRC_PAD_PRO: TFloatField;
    RelatorioVICMS_ST_04: TIBBCDField;
    RelatorioVICMS_ST_07: TIBBCDField;
    RelatorioVICMS_ST_12: TIBBCDField;
    RelatorioVICMS_ST_18: TIBBCDField;
    RelatorioCOL_40: TIBBCDField;
    RelatorioPRC_40: TFloatField;
    RelatorioCOL_45: TIBBCDField;
    RelatorioPRC_45: TFloatField;
    RelatorioCOL_50: TIBBCDField;
    RelatorioPRC_50: TFloatField;
    RelatorioCOL_55: TIBBCDField;
    RelatorioPRC_55: TFloatField;
    RelatorioCOL_60: TIBBCDField;
    RelatorioPRC_60: TFloatField;
    RelatorioCOL_70: TIBBCDField;
    RelatorioPRC_70: TFloatField;
    RelatorioCOL_80: TIBBCDField;
    RelatorioPRC_80: TFloatField;
    RelatorioC_VIPI: TFloatField;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio: TRECRelatorios;
    vPICMS,
    vPICMSInter,
    vPFCP: Double;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGProduto_Tabela_Preco: TqrpGProduto_Tabela_Preco;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGProduto_Tabela_Preco.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGProduto_Tabela_Preco.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
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
              if RECRelatorio.IEC2ConsultaCaption = 'Categorias' then
                 RECRelatorio.IEC2ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+''')'
              else
                 RECRelatorio.IEC2ConsultaAnd := 'AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC3ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK AND '+RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+''')';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataAnd    := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.IEFKDataAnd  := 'AND ROM_DNFS BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);

            if ((RECRelatorio.PEC4ConsultaText <> EmptyStr) and (RECRelatorio.PEC4ConsultaText <> 'TODOS')) then
            begin
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
              with QConsulta do
              begin
                SQL.Clear;
                SQL.Add('SELECT ALQ_ICMS,ALQ_ICMI,ALQ_FCP FROM TAB_ALQ');
                SQL.Add('WHERE  ALQ_ESTA = '''+RECRelatorio.PEC4ConsultaText+'''');
                Open;
                vPICMS      := Fields[0].AsFloat;
                vPICMSInter := Fields[1].AsFloat;
                vPFCP       := Fields[2].AsFloat;
              end;
            end else
            begin
              vPICMS      := 0;
              vPICMSInter := 0;
              vPFCP       := 0;
            end;

            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT   EMPRESA  ,ARTIGO,DESCRICAO,UCOM,ORIG,TRIM(IIF(POSITION(ORIG IN ''1267'') > 0,''PRODUTO IMPORTADO'',''INDÚSTRIA BRASILEIRA'')) AS FPAIS,');
              SQL.Add('         CATEGORIA,SUBCATEGORIA,');
              SQL.Add('         NCM,PIPI,');
              SQL.Add('         IIF(PIPI = 0,VPRC_PAD    ,VPRC_PAD     / ((CAST(PIPI AS DOUBLE PRECISION)/100) + 1)) AS VPRC_PAD    ,');
              SQL.Add('         IIF(PIPI = 0,VPRC_PAD_PRZ,VPRC_PAD_PRZ / ((CAST(PIPI AS DOUBLE PRECISION)/100) + 1)) AS VPRC_PAD_PRZ,');
              SQL.Add('         IIF(PIPI = 0,VPRC_PAD_PRO,VPRC_PAD_PRO / ((CAST(PIPI AS DOUBLE PRECISION)/100) + 1)) AS VPRC_PAD_PRO,');
              SQL.Add('         COALESCE(VICMS_ST_04,0) AS VICMS_ST_04,COALESCE(VICMS_ST_07,0) AS VICMS_ST_07,COALESCE(VICMS_ST_12,0) AS VICMS_ST_12,COALESCE(VICMS_ST_18,0) AS VICMS_ST_18,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''4.0'',SEQUENCIA   ,0)),0) AS COL_40,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''4.0'',VPRC_PAD_TAB,0)),0) AS PRC_40,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''4.5'',SEQUENCIA   ,0)),0) AS COL_45,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''4.5'',VPRC_PAD_TAB,0)),0) AS PRC_45,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''5.0'',SEQUENCIA   ,0)),0) AS COL_50,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''5.0'',VPRC_PAD_TAB,0)),0) AS PRC_50,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''5.5'',SEQUENCIA   ,0)),0) AS COL_55,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''5.5'',VPRC_PAD_TAB,0)),0) AS PRC_55,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''6.0'',SEQUENCIA   ,0)),0) AS COL_60,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''6.0'',VPRC_PAD_TAB,0)),0) AS PRC_60,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''7.0'',SEQUENCIA   ,0)),0) AS COL_70,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''7.0'',VPRC_PAD_TAB,0)),0) AS PRC_70,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''8.0'',SEQUENCIA   ,0)),0) AS COL_80,');
              SQL.Add('         COALESCE(SUM(DECODE(SEQUENCIA,''8.0'',VPRC_PAD_TAB,0)),0) AS PRC_80' );
              SQL.Add('FROM (');
              SQL.Add('SELECT   PS.FANTASIA    AS EMPRESA  ,CP.PRO_CART    AS ARTIGO,CP.PRO_DPRO AS DESCRICAO,CP.UCOM,CP.ORIG,');
              SQL.Add('         TCAT.DESCRICAO AS CATEGORIA,TSCT.DESCRICAO AS SUBCATEGORIA,CP.NCM,IIF(CP.ORIG = 1,CP.PIPI,0) AS PIPI,');
              SQL.Add('         CP.PRO_PREC    AS VPRC_PAD   ,CP.PRO_PPRZ   AS VPRC_PAD_PRZ,CP.PRO_PPRO  AS VPRC_PAD_PRO,');
              SQL.Add('         CLF.CLF_VI04   AS VICMS_ST_04,CLF.CLF_VI07  AS VICMS_ST_07 ,CLF.CLF_VI12 AS VICMS_ST_12,CLF.CLF_VISP AS VICMS_ST_18,');
              SQL.Add('         PRC.PUCOM_PAD  AS SEQUENCIA  ,PRC.VUPRC_INI AS VPRC_PAD_TAB');
              SQL.Add('FROM     CAD_PRO        AS CP');
              SQL.Add('JOIN     CAD_PRO_PSQ    AS PSQ  ON (PSQ.ID  = CP.IDAK )');
              SQL.Add('JOIN     TAB_PAR_SIS    AS PS   ON (PS.ID   = CP.IDEP )');
              SQL.Add('JOIN     TAB_SEG        AS TSEG ON (TSEG.ID = CP.IDSEG)');
              SQL.Add('JOIN     TAB_GRP        AS TGRP ON (TGRP.ID = CP.IDGRP)');
              SQL.Add('JOIN     TAB_SGP        AS TSGP ON (TSGP.ID = CP.IDSGP)');
              SQL.Add('JOIN     TAB_CAT        AS TCAT ON (TCAT.ID = CP.IDCAT)');
              SQL.Add('JOIN     TAB_SCT        AS TSCT ON (TSCT.ID = CP.IDSCT)');

              SQL.Add('LEFT');
              SQL.Add('JOIN     TAB_CLF        AS CLF  ON (CLF.CLF_CCLF = CP.NCM AND CLF.CLF_UF = '''+RECRelatorio.PEC4ConsultaText+''')');
              SQL.Add('LEFT');
              SQL.Add('JOIN     TAB_SCT_PRC    AS PRC  ON (PRC.ID = CP.IDSCT)');
              
              SQL.Add('WHERE    CP.ID > 0');

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then
                 SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');
              
              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('GROUP BY EMPRESA,ARTIGO,DESCRICAO,UCOM,ORIG,CATEGORIA,SUBCATEGORIA,NCM,PIPI,VPRC_PAD,VPRC_PAD_PRZ,VPRC_PAD_PRO,VICMS_ST_04,VICMS_ST_07,VICMS_ST_12,VICMS_ST_18,SEQUENCIA,VPRC_PAD_TAB');
              SQL.Add(')');
              SQL.Add('GROUP BY EMPRESA,ARTIGO,DESCRICAO,UCOM,ORIG,CATEGORIA,SUBCATEGORIA,NCM,PIPI,VPRC_PAD,VPRC_PAD_PRZ,VPRC_PAD_PRO,VICMS_ST_04,VICMS_ST_07,VICMS_ST_12,VICMS_ST_18');
              SQL.Add('ORDER BY EMPRESA,ARTIGO');
              Open;
            end;
          end;
begin
  with qrpGProduto_Tabela_Preco do
    try
      _Report;
      _Select;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorio.PrintTAG of
          0: PreviewModal;
          1: Print;
          2: ExportToFilter(TQRPDFDocumentFilter.Create(PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.PDF')));
          3: ExportToFilter(TQRXLSFilter.Create        (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.XLS')));
          4: ExportToFilter(TQRRTFExportFilter.Create  (PChar(FrmExporta.DELocal.Text+'\'+FrmExporta.EDArquivo.Text+'.DOC')));
        end;
      end else oException(Nil,'Registros não Encontrados !');
    finally
      WinControlFormDestroy(qrpGProduto_Tabela_Preco);
    end;
end;

procedure TqrpGProduto_Tabela_Preco.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGProduto_Tabela_Preco);
  end;
end;

procedure TqrpGProduto_Tabela_Preco.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value       := Relatorio.RecNo;
  RelatorioC_VIPI.Value     := RelatorioVPRC_PAD.AsFloat * (RelatorioPIPI.AsFloat / 100);
  RelatorioC_VBC.Value      := 0;
  RelatorioC_PICMS.Value    := 0;
  RelatorioC_VICMS.Value    := 0;
  RelatorioC_VBC_ST.Value   := 0;
  RelatorioC_PICMS_ST.Value := 0;
  RelatorioC_VICMS_ST.Value := 0;
  RelatorioC_VUNET.Value    := 0;

  if vPICMS > 0 then
  begin
    RelatorioC_PICMS.Value   := IFThen((Pos(RelatorioORIG.AsString,'123') > 0) and (RECRelatorio.PEC4ConsultaText <> RECParametros.EP_SG_NO),4,vPICMS);
    RelatorioC_VICMS.AsFloat := RelatorioVPRC_PAD.AsFloat * (RelatorioC_PICMS.AsFloat / 100);

    if RelatorioVICMS_ST_04.AsFloat+RelatorioVICMS_ST_07.AsFloat+RelatorioVICMS_ST_12.AsFloat+RelatorioVICMS_ST_18.AsFloat > 0 then
    begin
      if (RelatorioC_PICMS.AsFloat = 4)  and (RelatorioVICMS_ST_04.AsFloat > 0) then
      begin
        RelatorioC_VBC_ST.AsFloat := RelatorioVPRC_PAD.AsFloat +   RelatorioC_VIPI.AsFloat;
        RelatorioC_VBC_ST.AsFloat := RelatorioC_VBC_ST.AsFloat + ((RelatorioC_VBC_ST.AsFloat * RelatorioVICMS_ST_04.AsFloat)/100);
      end else
      if (RelatorioC_PICMS.AsFloat = 7)  and (RelatorioVICMS_ST_07.AsFloat > 0) then
      begin
        RelatorioC_VBC_ST.AsFloat := RelatorioVPRC_PAD.AsFloat +   RelatorioC_VIPI.AsFloat;
        RelatorioC_VBC_ST.AsFloat := RelatorioC_VBC_ST.AsFloat + ((RelatorioC_VBC_ST.AsFloat * RelatorioVICMS_ST_07.AsFloat)/100);
      end else
      if (RelatorioC_PICMS.AsFloat = 12)  and (RelatorioVICMS_ST_12.AsFloat > 0) then
      begin
        RelatorioC_VBC_ST.AsFloat := RelatorioVPRC_PAD.AsFloat +   RelatorioC_VIPI.AsFloat;
        RelatorioC_VBC_ST.AsFloat := RelatorioC_VBC_ST.AsFloat + ((RelatorioC_VBC_ST.AsFloat * RelatorioVICMS_ST_12.AsFloat)/100);
      end else
      if (RelatorioC_PICMS.AsFloat = 18)  and (RelatorioVICMS_ST_18.AsFloat > 0) then
      begin
        RelatorioC_VBC_ST.AsFloat := RelatorioVPRC_PAD.AsFloat +   RelatorioC_VIPI.AsFloat;
        RelatorioC_VBC_ST.AsFloat := RelatorioC_VBC_ST.AsFloat + ((RelatorioC_VBC_ST.AsFloat * RelatorioVICMS_ST_18.AsFloat)/100);
      end;

      RelatorioC_PICMS_ST.Value :=   vPICMSInter + vPFCP;
      RelatorioC_VICMS_ST.Value := ((RelatorioC_VBC_ST.AsFloat*RelatorioC_PICMS_ST.AsFloat)/100) - RelatorioC_VICMS.AsFloat;
    end;
  end;

  RelatorioC_VUNET.Value := RelatorioVPRC_PAD.AsFloat + RelatorioC_VIPI.AsFloat + RelatorioC_VICMS_ST.AsFloat;
end;

procedure TqrpGProduto_Tabela_Preco.QRBDetalheBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00F2F2F2; //$00F5F5F5;
end;

end.
