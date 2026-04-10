unit qProduto_Venda_Mensal;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     DateUtils, IDGlobal;

type
  TqrpProduto_Venda_Mensal = class(TQuickRep)
    QRBFKCabecalho: TQRBand;
    QRBDetalhes: TQRBand;
    QRBSumario: TQRBand;
    QRDC_ARTIGO: TQRDBText;
    QRDC_VALOR_01: TQRDBText;
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRSSumario: TQRShape;
    QRDC_VALOR_02: TQRDBText;
    QRDC_VALOR_03: TQRDBText;
    QRDC_VALOR_04: TQRDBText;
    QRDC_VALOR_05: TQRDBText;
    QRDC_VALOR_06: TQRDBText;
    QRDC_VALOR_07: TQRDBText;
    QRDC_VALOR_08: TQRDBText;
    QRDC_VALOR_09: TQRDBText;
    QRDC_VALOR_10: TQRDBText;
    QRDC_VALOR_11: TQRDBText;
    QRDC_VALOR_12: TQRDBText;
    RelatorioC_VALOR_01: TFloatField;
    RelatorioC_VALOR_02: TFloatField;
    RelatorioC_VALOR_03: TFloatField;
    RelatorioC_VALOR_04: TFloatField;
    RelatorioC_VALOR_05: TFloatField;
    RelatorioC_VALOR_06: TFloatField;
    RelatorioC_VALOR_07: TFloatField;
    RelatorioC_VALOR_08: TFloatField;
    RelatorioC_VALOR_09: TFloatField;
    RelatorioC_VALOR_10: TFloatField;
    RelatorioC_VALOR_11: TFloatField;
    RelatorioC_VALOR_12: TFloatField;
    QRDC_DESCRICAO: TQRDBText;
    RelatorioC_ARTIGO: TStringField;
    RelatorioC_DESCRICAO: TStringField;
    QRLTotal: TQRLabel;
    QRETotal_ITEM: TQRExpr;
    QREC_VALOR_01: TQRExpr;
    QREC_VALOR_02: TQRExpr;
    QREC_VALOR_03: TQRExpr;
    QREC_VALOR_04: TQRExpr;
    QREC_VALOR_05: TQRExpr;
    QREC_VALOR_06: TQRExpr;
    QREC_VALOR_07: TQRExpr;
    QREC_VALOR_08: TQRExpr;
    QREC_VALOR_11: TQRExpr;
    QREC_VALOR_10: TQRExpr;
    QREC_VALOR_09: TQRExpr;
    QREC_VALOR_12: TQRExpr;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLC_ARTIGO: TQRLabel;
    QRLTC_VALOR_01: TQRLabel;
    QRLTC_VALOR_02: TQRLabel;
    QRLTC_VALOR_03: TQRLabel;
    QRLTC_VALOR_04: TQRLabel;
    QRLTC_VALOR_05: TQRLabel;
    QRLTC_VALOR_06: TQRLabel;
    QRLTC_VALOR_07: TQRLabel;
    QRLTC_VALOR_08: TQRLabel;
    QRLTC_VALOR_09: TQRLabel;
    QRLTC_VALOR_10: TQRLabel;
    QRLTC_VALOR_11: TQRLabel;
    QRLTC_VALOR_12: TQRLabel;
    QRLC_VALOR_01: TQRLabel;
    QRLC_VALOR_02: TQRLabel;
    QRLC_VALOR_03: TQRLabel;
    QRLC_VALOR_04: TQRLabel;
    QRLC_VALOR_05: TQRLabel;
    QRLC_VALOR_06: TQRLabel;
    QRLC_VALOR_07: TQRLabel;
    QRLC_VALOR_08: TQRLabel;
    QRLC_VALOR_09: TQRLabel;
    QRLC_VALOR_10: TQRLabel;
    QRLC_VALOR_11: TQRLabel;
    QRLC_VALOR_12: TQRLabel;
    RelatorioARTIGO: TIBStringField;
    RelatorioPRODUTO: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioCOR: TIBStringField;
    RelatorioDECPL: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioRENDIMENTO: TIBBCDField;
    RelatorioQTUN: TIBBCDField;
    RelatorioPERIODO_01: TIBStringField;
    RelatorioQTPV_01: TIBBCDField;
    RelatorioVTPV_01: TIBBCDField;
    RelatorioPERIODO_02: TIBStringField;
    RelatorioQTPV_02: TIBBCDField;
    RelatorioVTPV_02: TIBBCDField;
    RelatorioPERIODO_03: TIBStringField;
    RelatorioQTPV_03: TIBBCDField;
    RelatorioVTPV_03: TIBBCDField;
    RelatorioPERIODO_04: TIBStringField;
    RelatorioQTPV_04: TIBBCDField;
    RelatorioVTPV_04: TIBBCDField;
    RelatorioPERIODO_05: TIBStringField;
    RelatorioQTPV_05: TIBBCDField;
    RelatorioVTPV_05: TIBBCDField;
    RelatorioPERIODO_06: TIBStringField;
    RelatorioQTPV_06: TIBBCDField;
    RelatorioVTPV_06: TIBBCDField;
    RelatorioPERIODO_07: TIBStringField;
    RelatorioQTPV_07: TIBBCDField;
    RelatorioVTPV_07: TIBBCDField;
    RelatorioPERIODO_08: TIBStringField;
    RelatorioQTPV_08: TIBBCDField;
    RelatorioVTPV_08: TIBBCDField;
    RelatorioPERIODO_09: TIBStringField;
    RelatorioQTPV_09: TIBBCDField;
    RelatorioVTPV_09: TIBBCDField;
    RelatorioPERIODO_10: TIBStringField;
    RelatorioQTPV_10: TIBBCDField;
    RelatorioVTPV_10: TIBBCDField;
    RelatorioPERIODO_11: TIBStringField;
    RelatorioQTPV_11: TIBBCDField;
    RelatorioVTPV_11: TIBBCDField;
    RelatorioPERIODO_12: TIBStringField;
    RelatorioQTPV_12: TIBBCDField;
    RelatorioVTPV_12: TIBBCDField;
    RelatorioPESOB: TIBBCDField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalhesBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
    TAB_PK,TAB_PK_ITE,TAB_FK,TAB_FK_ITE,
    SQLAdd: String;
    procedure _Pesquisa_Categorias;
    procedure _Pesquisa_Fornecedor;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Venda_Mensal: TqrpProduto_Venda_Mensal;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpProduto_Venda_Mensal.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Venda_Mensal.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }

            QRDC_DESCRICAO.Width := QRDC_VALOR_01.Left - QRDC_ARTIGO.Width;
            QRDC_DESCRICAO.Left  := QRDC_ARTIGO.Width;

            if Pos('Metro',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_01.Caption := 'Metros' else
            if Pos('Kilo',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_01.Caption := 'Kilos' else
            if Pos('Valor',RECRelatorio.Modelo) > 0 then
               QRLTC_VALOR_01.Caption := 'Valor-R$';

            QRLTC_VALOR_02.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_03.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_04.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_05.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_06.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_07.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_08.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_09.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_10.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_11.Caption := QRLTC_VALOR_01.Caption;
            QRLTC_VALOR_12.Caption := QRLTC_VALOR_01.Caption;
          end;

          procedure _Select;
          begin
            { Modelo }
            if Pos('Artigo',RECRelatorio.Modelo) > 0 then
            begin
              RECRelatorio.Titulo := StringReplace(RECRelatorio.Titulo,'Produtos',RECRelatorio.Modelo,[rfReplaceAll,rfIgnoreCase]);

              QRLC_ARTIGO.Caption := 'Artigo';
              QRDC_ARTIGO.Width   := 60;

              SQLAdd := 'LPad(Extract(Year  FROM PK.ROM_DNFS),4,0)||''/''||LPad(Extract(Month FROM PK.ROM_DNFS),2,0) PERIODO,CP.PRO_CART AS ARTIGO,CP.PRO_CART AS PRODUTO,CP.PRO_DPRO AS DESCRICAO,NULL AS COR,NULL AS DECPL,FK.ROM_DUNI AS UCOM,';
            end else
            begin
              QRLC_ARTIGO.Caption := 'Produto';
              QRDC_ARTIGO.Width   := 90;

              SQLAdd := 'LPad(Extract(Year  FROM PK.ROM_DNFS),4,0)||''/''||LPad(Extract(Month FROM PK.ROM_DNFS),2,0) PERIODO,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,FK.ROM_DPRO AS DESCRICAO,FK.ROM_DCOR AS COR,'+
                        'TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))) AS DECPL,FK.ROM_DUNI AS UCOM,';
            end;

            { Definindo Tabelas }
            TAB_PK     := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_CAB','PED_VEN_CAB'),'_',RECParametros.EP_ID,3);
            TAB_PK_ITE := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_ITE','PED_VEN_ITE'),'_',RECParametros.EP_ID,3);
            TAB_FK     := EmptyStr;
            TAB_FK_ITE := EmptyStr;
            if ((RECRelatorio.Status = 'Faturados') and (RECRelatorio.Tipo <> 'Programações')) then
            begin
              TAB_FK     := oREPZero('ROM_CAB','_',RECParametros.EP_ID,3);
              TAB_FK_ITE := oREPZero('ROM_ITE','_',RECParametros.EP_ID,3);
            end;

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
                 _Pesquisa_Categorias
              else
                 RECRelatorio.IEC2ConsultaAnd := 'AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              _Pesquisa_Fornecedor;
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if RECRelatorio.PEC4ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC4ConsultaAnd := 'AND '+RECRelatorio.IEC4ConsultaField+' '+RECRelatorio.IEC4ConsultaWhere+' '''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataText1  := StrToDate('01/01/'+oStrZero(oRETAno(RECRelatorio.IEDataText1),4));
              RECRelatorio.IEDataText2  := StrToDate('31/12/'+oStrZero(oRETAno(RECRelatorio.IEDataText1),4));
              RECRelatorio.IEDataField  := IFThen(((RECRelatorio.Status = 'Faturados') and (RECRelatorio.Tipo <> 'Programações')),'ROM_DBAI','ROM_DROM');
              RECRelatorio.IEDataAnd    := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.IEFKDataAnd  := 'AND ROM_DNFS BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            { Meses/Ano }
            QRLC_VALOR_01.Caption := LeftStr(oRETMesExtenso(RECRelatorio.IEDataText1)              ,3)+'/'+RightStr(IntToStr(YearOf(RECRelatorio.IEDataText1))              ,2);
            QRLC_VALOR_02.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+01)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+01))),2);
            QRLC_VALOR_03.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+02)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+02))),2);
            QRLC_VALOR_04.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+03)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+03))),2);
            QRLC_VALOR_05.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+04)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+04))),2);
            QRLC_VALOR_06.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+05)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+05))),2);
            QRLC_VALOR_07.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+06)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+06))),2);
            QRLC_VALOR_08.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+07)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+07))),2);
            QRLC_VALOR_09.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+08)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+08))),2);
            QRLC_VALOR_10.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+09)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+09))),2);
            QRLC_VALOR_11.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+10)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+10))),2);
            QRLC_VALOR_12.Caption := LeftStr(oRETMesExtenso(IncMonth(RECRelatorio.IEDataText1,+11)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(RECRelatorio.IEDataText1,+11))),2);

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ARTIGO,PRODUTO,');

              SQL.Add('       DESCRICAO,COR,DECPL,UCOM,');
              SQL.Add('       AVG(RENDIMENTO) AS RENDIMENTO,AVG(PESOB) AS PESOB,AVG(QTUN) AS QTUN,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''01'',PERIODO,Null)) AS PERIODO_01,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''01'',QTPV      ,Null)),0) AS QTPV_01,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''01'',VTPV ,Null)),0) AS VTPV_01,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''02'',PERIODO,Null)) AS PERIODO_02,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''02'',QTPV      ,Null)),0) AS QTPV_02,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''02'',VTPV ,Null)),0) AS VTPV_02,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''03'',PERIODO,Null)) AS PERIODO_03,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''03'',QTPV      ,Null)),0) AS QTPV_03,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''03'',VTPV ,Null)),0) AS VTPV_03,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''04'',PERIODO,Null)) AS PERIODO_04,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''04'',QTPV      ,Null)),0) AS QTPV_04,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''04'',VTPV ,Null)),0) AS VTPV_04,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''05'',PERIODO,Null)) AS PERIODO_05,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''05'',QTPV      ,Null)),0) AS QTPV_05,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''05'',VTPV ,Null)),0) AS VTPV_05,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''06'',PERIODO,Null)) AS PERIODO_06,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''06'',QTPV      ,Null)),0) AS QTPV_06,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''06'',VTPV ,Null)),0) AS VTPV_06,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''07'',PERIODO,Null)) AS PERIODO_07,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''07'',QTPV      ,Null)),0) AS QTPV_07,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''07'',VTPV ,Null)),0) AS VTPV_07,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''08'',PERIODO,Null)) AS PERIODO_08,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''08'',QTPV      ,Null)),0) AS QTPV_08,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''08'',VTPV ,Null)),0) AS VTPV_08,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''09'',PERIODO,Null)) AS PERIODO_09,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''09'',QTPV      ,Null)),0) AS QTPV_09,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''09'',VTPV ,Null)),0) AS VTPV_09,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''10'',PERIODO,Null)) AS PERIODO_10,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''10'',QTPV      ,Null)),0) AS QTPV_10,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''10'',VTPV ,Null)),0) AS VTPV_10,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''11'',PERIODO,Null)) AS PERIODO_11,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''11'',QTPV      ,Null)),0) AS QTPV_11,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''11'',VTPV ,Null)),0) AS VTPV_11,');
              SQL.Add('       MAX(DECODE(RIGHT(PERIODO,2),''12'',PERIODO,Null)) AS PERIODO_12,');
              SQL.Add('       COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''12'',QTPV      ,Null)),0) AS QTPV_12,COALESCE(SUM(DECODE(RIGHT(PERIODO,2),''12'',VTPV ,Null)),0) AS VTPV_12');

              SQL.Add('FROM (');

              { TAB_PK }
              SQL.Add('SELECT '+SQLAdd);
              SQL.Add(' AVG(CP.PRO_REND) AS RENDIMENTO,AVG(CP.PRO_PESO) AS PESOB,AVG(CP.UQTDE) AS QTUN,');
              SQL.Add(' SUM(FK.ROM_QTDE) AS QTPV,CAST(SUM(IIF(PK.ROM_STPD = ''DEVOLUÇÃO'',FK.ROM_TOTA*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1),FK.ROM_TOTA)) AS NUMERIC(15,2)) AS VTPV');


              SQL.Add('FROM '+TAB_PK+'     AS PK');
              SQL.Add('JOIN   TAB_PED      AS TP  ON (TP.VEN_TIPO = PK.ROM_STPD)');
              SQL.Add('JOIN   CAD_CLI      AS CL  ON (CL.ID = PK.ROM_CCLI)');
              SQL.Add('JOIN '+TAB_PK_ITE+' AS FK  ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   CAD_PRO      AS CP  ON (CP.ID = FK.ROM_CPRO)');
              SQL.Add('JOIN   TAB_CAT      AS TCT ON (TCT.ID = CP.IDCAT)');
              SQL.Add('JOIN   TAB_SCT      AS TSC ON (TSC.ID = CP.IDSCT)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_RMT AS RM ON (CL.CLI_CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_RNA AS RN ON (CL.CLI_CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_UFE     AS UF ON (UF.SIGLA = CL.CLI_ESTA)');

              SQL.Add('WHERE PK.IDEP = '''+RECParametros.EP_ID+'''');
              SQL.Add('AND   PK.STPD <> ''ABATIMENTO''');
              SQL.Add('AND   PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

              if RECRelatorio.Status = 'Faturados' then
              begin
                SQL.Add('AND PK.FAPD = 1');
                SQL.Add('AND PK.ROM_CDNF IS NULL');
              end;

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('GROUP BY PERIODO,ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');

              { Faturados }
              if ((not oEmpty(TAB_FK)) and (not oEmpty(TAB_FK_ITE))) then
              begin
                { TAB_FK }
                SQL.Add('UNION');
                SQL.Add('SELECT '+SQLAdd);
                SQL.Add('       AVG(CP.PRO_REND) AS RENDIMENTO,AVG(CP.PRO_PESO) AS PESOB,AVG(CP.UQTDE) AS QTUN,');
                SQL.Add('       SUM(FK.ROM_QTDE) AS QTPV,CAST(SUM(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1)) AS NUMERIC(15,2)) AS VTPV');

                SQL.Add('FROM '+TAB_FK+'     AS PK');
                SQL.Add('JOIN   TAB_PED      AS TP ON (TP.VEN_TIPO = PK.ROM_STPD)');
                SQL.Add('JOIN   CAD_CLI      AS CL ON (CL.ID = PK.ROM_CCLI)');
                SQL.Add('JOIN '+TAB_FK_ITE+' AS FK ON (FK.ROM_CCAB = PK.ID)');
                SQL.Add('JOIN   CAD_PRO      AS CP ON (CP.ID = FK.ROM_CPRO)');
                SQL.Add('JOIN   TAB_CAT      AS TCT ON (TCT.ID = CP.IDCAT)');
                SQL.Add('JOIN   TAB_SCT      AS TSC ON (TSC.ID = CP.IDSCT)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_RMT AS RM ON (CL.CLI_CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_RNA AS RN ON (CL.CLI_CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_UFE AS UF ON (UF.SIGLA = CL.CLI_ESTA)');

                SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
                SQL.Add('AND    PK.FAPD = 1');
                SQL.Add('AND    PK.STPD <> ''ABATIMENTO''');
                SQL.Add('AND    PK.STPD '+IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'=','<>')+' ''DEVOLUÇÃO''');

                if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

                SQL.Add(RECRelatorio.IEC1ConsultaAnd);
                SQL.Add(RECRelatorio.IEC2ConsultaAnd);
                SQL.Add(RECRelatorio.IEC3ConsultaAnd);
                SQL.Add(RECRelatorio.IEC4ConsultaAnd);
                SQL.Add(RECRelatorio.IEFKDataAnd);

                SQL.Add('GROUP BY PERIODO,ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');
              end;

              SQL.Add(')');
              SQL.Add('GROUP BY ARTIGO,PRODUTO,DESCRICAO,COR,DECPL,UCOM');
              SQL.Add('ORDER BY ARTIGO,COR');
              Open;
            end;
          end;
begin
  with qrpProduto_Venda_Mensal do
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
      WinControlFormDestroy(qrpProduto_Venda_Mensal);
    end;
end;

procedure TqrpProduto_Venda_Mensal.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Venda_Mensal);
  end;
end;

procedure TqrpProduto_Venda_Mensal.QRBDetalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Relatorio.RecNo mod 2 = 0 then
     QRBDetalhes.Color := clBtnFace else QRBDetalhes.Color := clWhite;
end;

procedure TqrpProduto_Venda_Mensal.RelatorioCalcFields(DataSet: TDataSet);
begin
  if Pos('Artigo',RECRelatorio.Modelo) > 0 then
  begin
    RelatorioC_ARTIGO.Value    := RelatorioArtigo.AsString;
    RelatorioC_DESCRICAO.Value := RelatorioDescricao.AsString;
  end else
  begin
    RelatorioC_ARTIGO.Value    := RelatorioProduto.AsString;
    RelatorioC_DESCRICAO.Value := Trim(RelatorioDECPL.AsString+' '+RelatorioCor.AsString);
  end;

  RelatorioC_VALOR_01.Value := RelatorioQTPV_01.AsFloat;
  RelatorioC_VALOR_02.Value := RelatorioQTPV_02.AsFloat;
  RelatorioC_VALOR_03.Value := RelatorioQTPV_03.AsFloat;
  RelatorioC_VALOR_04.Value := RelatorioQTPV_04.AsFloat;
  RelatorioC_VALOR_05.Value := RelatorioQTPV_05.AsFloat;
  RelatorioC_VALOR_06.Value := RelatorioQTPV_06.AsFloat;
  RelatorioC_VALOR_07.Value := RelatorioQTPV_07.AsFloat;
  RelatorioC_VALOR_08.Value := RelatorioQTPV_08.AsFloat;
  RelatorioC_VALOR_09.Value := RelatorioQTPV_09.AsFloat;
  RelatorioC_VALOR_10.Value := RelatorioQTPV_10.AsFloat;
  RelatorioC_VALOR_11.Value := RelatorioQTPV_11.AsFloat;
  RelatorioC_VALOR_12.Value := RelatorioQTPV_12.AsFloat;

  if Pos('Metro',RECRelatorio.Modelo) > 0 then
  begin
    if RelatorioUCOM.AsString = 'KG' then
    begin
      RelatorioC_VALOR_01.Value := RelatorioC_VALOR_01.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_07.Value := RelatorioC_VALOR_07.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_08.Value := RelatorioC_VALOR_08.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_09.Value := RelatorioC_VALOR_09.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_10.Value := RelatorioC_VALOR_10.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_11.Value := RelatorioC_VALOR_11.AsFloat * RelatorioRendimento.AsFloat;
      RelatorioC_VALOR_12.Value := RelatorioC_VALOR_12.AsFloat * RelatorioRendimento.AsFloat;
    end else
    if RelatorioUCOM.AsString = 'M' then
    begin
      RelatorioC_VALOR_01.Value := RelatorioC_VALOR_01.AsFloat;
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat;
      RelatorioC_VALOR_07.Value := RelatorioC_VALOR_07.AsFloat;
      RelatorioC_VALOR_08.Value := RelatorioC_VALOR_08.AsFloat;
      RelatorioC_VALOR_09.Value := RelatorioC_VALOR_09.AsFloat;
      RelatorioC_VALOR_10.Value := RelatorioC_VALOR_10.AsFloat;
      RelatorioC_VALOR_11.Value := RelatorioC_VALOR_11.AsFloat;
      RelatorioC_VALOR_12.Value := RelatorioC_VALOR_12.AsFloat;
    end;
  end else
  if Pos('Kilo',RECRelatorio.Modelo) > 0 then
  begin
    if RelatorioUCOM.AsString = 'KG' then
    begin
      RelatorioC_VALOR_01.Value := RelatorioC_VALOR_01.AsFloat;
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat;
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat;
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat;
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat;
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat;
      RelatorioC_VALOR_07.Value := RelatorioC_VALOR_07.AsFloat;
      RelatorioC_VALOR_08.Value := RelatorioC_VALOR_08.AsFloat;
      RelatorioC_VALOR_09.Value := RelatorioC_VALOR_09.AsFloat;
      RelatorioC_VALOR_10.Value := RelatorioC_VALOR_10.AsFloat;
      RelatorioC_VALOR_11.Value := RelatorioC_VALOR_11.AsFloat;
      RelatorioC_VALOR_12.Value := RelatorioC_VALOR_12.AsFloat;
    end else
    begin
      RelatorioC_VALOR_01.Value := RelatorioC_VALOR_02.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_02.Value := RelatorioC_VALOR_02.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_03.Value := RelatorioC_VALOR_03.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_04.Value := RelatorioC_VALOR_04.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_05.Value := RelatorioC_VALOR_05.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_06.Value := RelatorioC_VALOR_06.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_07.Value := RelatorioC_VALOR_07.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_08.Value := RelatorioC_VALOR_08.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_09.Value := RelatorioC_VALOR_09.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_10.Value := RelatorioC_VALOR_10.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_11.Value := RelatorioC_VALOR_11.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
      RelatorioC_VALOR_12.Value := RelatorioC_VALOR_12.AsFloat * (RelatorioPesoB.AsFloat / RelatorioQTUN.AsFloat);
    end;
  end else
  if Pos('Valor',RECRelatorio.Modelo) > 0 then
  begin
    RelatorioC_VALOR_01.Value := RelatorioVTPV_01.AsFloat;
    RelatorioC_VALOR_02.Value := RelatorioVTPV_02.AsFloat;
    RelatorioC_VALOR_03.Value := RelatorioVTPV_03.AsFloat;
    RelatorioC_VALOR_04.Value := RelatorioVTPV_04.AsFloat;
    RelatorioC_VALOR_05.Value := RelatorioVTPV_05.AsFloat;
    RelatorioC_VALOR_06.Value := RelatorioVTPV_06.AsFloat;
    RelatorioC_VALOR_07.Value := RelatorioVTPV_07.AsFloat;
    RelatorioC_VALOR_08.Value := RelatorioVTPV_08.AsFloat;
    RelatorioC_VALOR_09.Value := RelatorioVTPV_09.AsFloat;
    RelatorioC_VALOR_10.Value := RelatorioVTPV_10.AsFloat;
    RelatorioC_VALOR_11.Value := RelatorioVTPV_11.AsFloat;
    RelatorioC_VALOR_12.Value := RelatorioVTPV_12.AsFloat;
  end;
end;

procedure TqrpProduto_Venda_Mensal._Pesquisa_Categorias;
var
  DString,DField: String;
  SLPesquisa: TStringList;
  i: Integer;
begin
  RECRelatorio.IEC2ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK';

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
           RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaAnd + ' AND ' + RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(SLPesquisa.Strings[i])+RECRelatorio.IEC2ConsultaLike2+'''';

    RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaAnd + ')';
  finally
    FreeAndNil(SLPesquisa);
  end;
end;

procedure TqrpProduto_Venda_Mensal._Pesquisa_Fornecedor;
var
  DString,DField: String;
  SLPesquisa: TStringList;
  i: Integer;
begin
  RECRelatorio.IEC3ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK';

  SLPesquisa := TStringList.Create;
  try
    SLPesquisa.Clear;
    DString := RECRelatorio.PEC3ConsultaText;
    While Length(DString) > 0 do
    begin
      DField := Fetch(DString,' ');
      if Length(DField) > 0 then
         SLPesquisa.Add(DField);
    end;

    if SLPesquisa.Count > 0 then
       for i := 0 to SLPesquisa.Count - 1 do
           RECRelatorio.IEC3ConsultaAnd := RECRelatorio.IEC3ConsultaAnd + ' AND ' + RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''+RECRelatorio.IEC3ConsultaLike1+Trim(SLPesquisa.Strings[i])+RECRelatorio.IEC3ConsultaLike2+'''';

    RECRelatorio.IEC3ConsultaAnd := RECRelatorio.IEC3ConsultaAnd + ')';
  finally
    FreeAndNil(SLPesquisa);
  end;
end;

end.
