unit qProduto_Estoque;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
  IBSQL, IDGlobal;

type
  TqrpProduto_Estoque = class(TQuickRep)
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBSumario: TQRBand;
    QRDSKU: TQRDBText;
    QRDDECP: TQRDBText;
    QRDEPE_QTDE: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    QRDECO_DECO: TQRDBText;
    RelatorioARTIGO: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioUCDBE: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioEEP_QTRL: TIntegerField;
    RelatorioEPE_QTRL: TIntegerField;
    RelatorioECO_DECO: TIBStringField;
    QRDEEP_QTDE: TQRDBText;
    QRDUCOM: TQRDBText;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLProduto: TQRLabel;
    QRLEEP: TQRLabel;
    QRLEPE: TQRLabel;
    QRLUCOM: TQRLabel;
    QRLSKU: TQRLabel;
    RelatorioEEP_UNID: TIntegerField;
    RelatorioEPE_UNID: TIntegerField;
    QRDEPE_QTRL: TQRDBText;
    QRLDEPE_QTRL: TQRLabel;
    QRDEEP_QTRL: TQRDBText;
    QRLDEEP_QTRL: TQRLabel;
    RelatorioEEP_QTDE: TIBBCDField;
    RelatorioEPE_QTDE: TIBBCDField;
    QRLEEEP_QTRL: TQRLabel;
    QRLEEPE_QTRL: TQRLabel;
    QREEEP_QTDE: TQRExpr;
    QREEEP_QTRL: TQRExpr;
    QREEPE_QTDE: TQRExpr;
    QREEPE_QTRL: TQRExpr;
    QRLEPP: TQRLabel;
    QRDEPP_QTRL: TQRDBText;
    QRLDEPP_QTRL: TQRLabel;
    QRDEPP_QTDE: TQRDBText;
    QREEPP_QTDE: TQRExpr;
    QRLEEPP_QTRL: TQRLabel;
    QREEPP_QTRL: TQRExpr;
    RelatorioEPP_QTDE: TIBBCDField;
    RelatorioEPP_QTRL: TIntegerField;
    RelatorioEPP_UNID: TIntegerField;
    RelatorioDECP: TIBStringField;
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
    EPP_UNID,EEP_UNID,EPE_UNID: Word;
    EPP_QTRL,EEP_QTRL,EPE_QTRL: Integer;
    
    procedure _Pesquisa_Categorias;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Estoque: TqrpProduto_Estoque;

implementation

uses uPrincipal, bPrincipal,
  pExporta;

{$R *.DFM}

Constructor TqrpProduto_Estoque.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Estoque.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }

            { Programação }
            if Pos('EPP',RECRelatorio.TipoValor) > 0 then
            begin
              QRLEPP.Enabled       := True;
              QRDEPP_QTDE.Enabled  := True;
              QRLDEPP_QTRL.Enabled := (RECParametros.EST_QTRL);
              QRDEPP_QTRL.Enabled  := (RECParametros.EST_QTRL);
              QREEPP_QTDE.Enabled  := True;
              QRLEEPP_QTRL.Enabled := (RECParametros.EST_QTRL);
              QREEPP_QTRL.Enabled  := (RECParametros.EST_QTRL);

              if not RECParametros.EST_QTRL then
              begin
                QRDEPP_QTDE.Width := QRLEPP.Width;
                QRDEPP_QTDE.Left  := QRLEPP.Left;
                QREEPP_QTDE.Width := QRLEPP.Width;
                QREEPP_QTDE.Left  := QRLEPP.Left;
              end;
            end else
            QRDDECP.Width := QRLEEP.Left - QRDDECP.Left;

            { Saldo Programado }
            if Pos('EEP',RECRelatorio.TipoValor) > 0 then
            begin
              QRLEEP.Enabled       := True;
              QRDEEP_QTDE.Enabled  := True;
              QRLDEEP_QTRL.Enabled := (RECParametros.EST_QTRL);
              QRDEEP_QTRL.Enabled  := (RECParametros.EST_QTRL);
              QREEEP_QTDE.Enabled  := True;
              QRLEEEP_QTRL.Enabled := (RECParametros.EST_QTRL);
              QREEEP_QTRL.Enabled  := (RECParametros.EST_QTRL);

              if not RECParametros.EST_QTRL then
              begin
                QRDEEP_QTDE.Width := QRLEEP.Width;
                QRDEEP_QTDE.Left  := QRLEEP.Left;
                QREEEP_QTDE.Width := QRLEEP.Width;
                QREEEP_QTDE.Left  := QRLEEP.Left;
              end;
            end else
            QRDDECP.Width := QRLEPE.Left - QRDDECP.Left;

            { Pronta Entrega }
            if Pos('EPE',RECRelatorio.TipoValor) > 0 then
            begin
              QRLEPE.Enabled       := True;
              QRDEPE_QTDE.Enabled  := True;
              QRLDEPE_QTRL.Enabled := (RECParametros.EST_QTRL);
              QRDEPE_QTRL.Enabled  := (RECParametros.EST_QTRL);
              QREEPE_QTDE.Enabled  := True;
              QRLEEPE_QTRL.Enabled := (RECParametros.EST_QTRL);
              QREEPE_QTRL.Enabled  := (RECParametros.EST_QTRL);

              if not RECParametros.EST_QTRL then
              begin
                QRDEPE_QTDE.Width := QRLEPE.Width;
                QRDEPE_QTDE.Left  := QRLEPE.Left;
                QREEPE_QTDE.Width := QRLEPE.Width;
                QREEPE_QTDE.Left  := QRLEPE.Left;
              end;
            end;

            if RECRelatorio.TipoValor = 'EPE_EPP' then
            begin
              QRLEPP.Left       := 534;
              QRDEPP_QTDE.Left  := QRDEEP_QTDE.Left;
              QRLDEPP_QTRL.Left := QRLDEEP_QTRL.Left;
              QRDEPP_QTRL.Left  := QRDEEP_QTRL.Left;
              QREEPP_QTDE.Left  := QREEEP_QTDE.Left;
              QRLEEPP_QTRL.Left := QRLEEEP_QTRL.Left;
              QREEPP_QTRL.Left  := QREEEP_QTRL.Left;
            end;
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
              RECRelatorio.IEC1ConsultaAnd := RECRelatorio.IEC1ConsultaField+' '+RECRelatorio.IEC1ConsultaWhere+' '''''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if RECRelatorio.PEC2ConsultaText <> 'TODOS' then
            begin
              _Pesquisa_Categorias;
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': ' +RECRelatorio.PEC2ConsultaText +' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC3ConsultaAnd := 'PSQ.PRO_DPSQ '             + RECRelatorio.IEC3ConsultaWhere   +' '''''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': ' +RECRelatorio.PEC3ConsultaText +' ';
            end;

            if RECRelatorio.PEC4ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC4ConsultaAnd := 'PSQ.PRO_DPSQ '            + RECRelatorio.IEC4ConsultaWhere   +' '''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': ' +RECRelatorio.PEC4ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataField  := IFThen(RECRelatorio.IEDataField = 'DULT','DTPV','DTCA');
              RECRelatorio.IEDataAnd    := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT   ARTIGO,SKU,DECP||'' ''||COALESCE(DGCP,'''')  AS DECP,UCDBE,UCOM,');
              SQL.Add('         SUM(EPP_QTDE) AS EPP_QTDE,CAST(SUM(EPP_QTRL) AS INTEGER) AS EPP_QTRL,CHAR_LENGTH(EPP_QTRL) AS EPP_UNID,');
              SQL.Add('         SUM(EEP_QTDE) AS EEP_QTDE,CAST(SUM(EEP_QTRL) AS INTEGER) AS EEP_QTRL,CHAR_LENGTH(EEP_QTRL) AS EEP_UNID,');
              SQL.Add('         SUM(EPE_QTDE) AS EPE_QTDE,CAST(SUM(EPE_QTRL) AS INTEGER) AS EPE_QTRL,CHAR_LENGTH(EPE_QTRL) AS EPE_UNID,');
              SQL.Add('         MAX(ECO_DECO) AS ECO_DECO');

              SQL.Add('FROM SP_CAD_PRO_PSQ');
              SQL.Add('(');
              SQL.Add(''''+RECParametros.EP_ID+'''');

              if (RECRelatorio.IEC1ConsultaAnd = EmptyStr) AND (RECRelatorio.IEC2ConsultaAnd = EmptyStr) AND (RECRelatorio.IEC3ConsultaAnd = EmptyStr) then
              begin
                SQL.Add(','''+RECRelatorio.IDEP+'''');
                SQL.Add(',''CP.IDEP''');
                SQL.Add(',''TODOS''' );
              end;

              if RECRelatorio.IEC1ConsultaAnd <> EmptyStr then
              begin
                SQL.Add(','''+RECRelatorio.IEC1ConsultaAnd  +'''');
                SQL.Add(','''+RECRelatorio.IEC1ConsultaField+'''');
              end;

              if RECRelatorio.IEC2ConsultaAnd <> EmptyStr then
              begin
                SQL.Add(','''+RECRelatorio.IEC2ConsultaAnd  +'''');
                SQL.Add(','''+RECRelatorio.IEC1ConsultaField+'''');
              end;

              if RECRelatorio.IEC3ConsultaAnd <> EmptyStr then
              begin
                SQL.Add(','''+RECRelatorio.IEC3ConsultaAnd  +'''');
                SQL.Add(','''+RECRelatorio.IEC3ConsultaField+'''');
              end;

              SQL.Add(')');

              if RECRelatorio.Status <> 'TODOS' then
              SQL.Add('WHERE    REST = '''+LeftStr(RECRelatorio.Status,1)+'''');
              SQL.Add('GROUP BY ARTIGO,SKU,DECP,UCDBE,UCOM,EPP_UNID,EEP_UNID,EPE_UNID');

              if RECRelatorio.TipoValor = 'EPE'         then SQL.Add('HAVING SUM(EPE_QTDE)                        >  0');
              if RECRelatorio.TipoValor = 'EPE_EEP'     then SQL.Add('HAVING SUM(ABS(EPE_QTDE+EEP_QTDE))          >  0');
              if RECRelatorio.TipoValor = 'EPE_EPP'     then SQL.Add('HAVING SUM(ABS(EPE_QTDE+EPP_QTDE))          >  0');
              if RECRelatorio.TipoValor = 'EPE_EPP_EEP' then SQL.Add('HAVING SUM(ABS(EPE_QTDE+EPP_QTDE+EEP_QTDE)) >  0');
              if RECRelatorio.TipoValor = 'EPP'         then SQL.Add('HAVING SUM(EPP_QTDE)                        >  0');
              if RECRelatorio.TipoValor = 'EEP'         then SQL.Add('HAVING SUM(EEP_QTDE)                        >  0');
              if RECRelatorio.TipoValor = 'EPP_EEP'     then SQL.Add('HAVING SUM(ABS(EPP_QTDE+EEP_QTDE))          >  0');
              if RECRelatorio.TipoValor = 'F'           then SQL.Add('HAVING SUM(EPE_QTDE)                        <= 0');

              SQL.Add('ORDER BY ARTIGO,DECP');
              Open;
            end;

            while not Relatorio.Eof do
            begin
              if RelatorioEPP_UNID.AsInteger > EPP_UNID then EPP_UNID := RelatorioEPP_UNID.AsInteger;
                                                             EPP_QTRL := EPP_QTRL +RelatorioEPP_QTRL.AsInteger;
              if RelatorioEEP_UNID.AsInteger > EEP_UNID then EEP_UNID := RelatorioEEP_UNID.AsInteger;
                                                             EEP_QTRL := EEP_QTRL +RelatorioEEP_QTRL.AsInteger;
              if RelatorioEPE_UNID.AsInteger > EPE_UNID then EPE_UNID := RelatorioEPE_UNID.AsInteger;
                                                             EPE_QTRL := EPE_QTRL +RelatorioEPE_QTRL.AsInteger;
              Relatorio.Next;
            end;

            { Programação
              Detalhe
            }
            QRDEPP_QTRL.Mask     := oStrZero(0,EPP_UNID);
            QRDEPP_QTRL.AutoSize := True;

            QRLDEPP_QTRL.Left := QRDEPP_QTRL.Left  - ((Length(IntToStr(EPP_QTRL)) * 7) + Length(IntToStr(EEP_QTRL)));
            QRDEPP_QTDE.Left  := QRLDEPP_QTRL.Left -  (QRDEPP_QTDE.Width + 2);

            { Sumário }
            QREEPP_QTRL.Mask     := QRDEPP_QTRL.Mask;
            QREEPP_QTRL.AutoSize := True;

            QRLEEPP_QTRL.Left := QRLDEPP_QTRL.Left;
            QREEPP_QTDE.Left  := QRDEPP_QTDE.Left;

            { Saldo Programado
              Detalhe
            }
            QRDEEP_QTRL.Mask     := oStrZero(0,EEP_UNID);
            QRDEEP_QTRL.AutoSize := True;

            QRLDEEP_QTRL.Left := QRDEEP_QTRL.Left  - ((Length(IntToStr(EEP_QTRL)) * 7) + Length(IntToStr(EEP_QTRL)));
            QRDEEP_QTDE.Left  := QRLDEEP_QTRL.Left -  (QRDEEP_QTDE.Width + 2);

            { Sumário }
            QREEEP_QTRL.Mask     := QRDEEP_QTRL.Mask;
            QREEEP_QTRL.AutoSize := True;

            QRLEEEP_QTRL.Left := QRLDEEP_QTRL.Left;
            QREEEP_QTDE.Left  := QRDEEP_QTDE.Left;

            { Pronta Entrega
              Detalhe
            }
            QRDEPE_QTRL.Mask     := oStrZero(0,EPE_UNID);
            QRDEPE_QTRL.AutoSize := True;

            QRLDEPE_QTRL.Left := QRDEPE_QTRL.Left  - ((Length(IntToStr(EPE_QTRL)) * 7) + Length(IntToStr(EEP_QTRL)));
            QRDEPE_QTDE.Left  := QRLDEPE_QTRL.Left -  (QRDEPE_QTDE.Width + 2);

            { Sumário }
            QREEPE_QTRL.Mask     := QRDEPE_QTRL.Mask;
            QREEPE_QTRL.AutoSize := True;

            QRLEEPE_QTRL.Left := QRLDEPE_QTRL.Left;
            QREEPE_QTDE.Left  := QRDEPE_QTDE.Left;
          end;
begin
  with qrpProduto_Estoque do
       try
         _Report;
         _Select;

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
         WinControlFormDestroy(qrpProduto_Estoque);
       end;
end;

procedure TqrpProduto_Estoque.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Estoque);
  end;
end;

procedure TqrpProduto_Estoque.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00F2F2F2; //$00F5F5F5;

  if Length(RelatorioSKU.AsString) > 12 then
     QRDSKU.Font.Size := 6
  else
     QRDSKU.Font.Size := 7;

  { Programação }
  if Pos('EPP',RECRelatorio.TipoValor) > 0 then
  begin
    QRDEPP_QTDE.Enabled  := (RelatorioEPP_QTDE.AsFloat > 0);
    QRLDEPP_QTRL.Enabled := (RelatorioEPP_QTDE.AsFloat > 0) and (RECParametros.EST_QTRL);
    QRDEPP_QTRL.Enabled  := (RelatorioEPP_QTDE.AsFloat > 0) and (RECParametros.EST_QTRL);
  end;

  { Saldo Programado }
  if Pos('EEP',RECRelatorio.TipoValor) > 0 then
  begin
    QRDEEP_QTDE.Enabled  := (RelatorioEEP_QTDE.AsFloat > 0);
    QRLDEEP_QTRL.Enabled := (RelatorioEEP_QTDE.AsFloat > 0) and (RECParametros.EST_QTRL);
    QRDEEP_QTRL.Enabled  := (RelatorioEEP_QTDE.AsFloat > 0) and (RECParametros.EST_QTRL);
  end;

  QRDECO_DECO.Enabled := ((Pos('EPP',RECRelatorio.TipoValor) > 0) or (Pos('EEP',RECRelatorio.TipoValor) > 0));
  if QRDECO_DECO.Enabled then
     QRBDetalhe.Height := IFThen(RelatorioECO_DECO.AsString <> EmptyStr,21,11);

  { Pronta Entrega }
  if Pos('EPE',RECRelatorio.TipoValor) > 0 then
  begin
    QRDEPE_QTDE.Enabled  := (RelatorioEPE_QTDE.AsFloat > 0);
    QRLDEPE_QTRL.Enabled := (RelatorioEPE_QTDE.AsFloat > 0) and (RECParametros.EST_QTRL);
    QRDEPE_QTRL.Enabled  := (RelatorioEPE_QTDE.AsFloat > 0) and (RECParametros.EST_QTRL);
  end;
end;

procedure TqrpProduto_Estoque.QRBSumarioBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  { Programação }
  if Pos('EPP',RECRelatorio.TipoValor) > 0 then
  begin
    QRLEPP.Enabled       := (QREEPP_QTDE.Value.dblResult > 0);
    QREEPP_QTDE.Enabled  := (QREEPP_QTDE.Value.dblResult > 0);
    QRLEEPP_QTRL.Enabled := (QREEPP_QTDE.Value.dblResult > 0) and (RECParametros.EST_QTRL);
    QREEPP_QTRL.Enabled  := (QREEPP_QTDE.Value.dblResult > 0) and (RECParametros.EST_QTRL);
  end;

  { Saldo Programado }
  if Pos('EEP',RECRelatorio.TipoValor) > 0 then
  begin
    QRLEEP.Enabled       := (QREEEP_QTDE.Value.dblResult > 0);
    QREEEP_QTDE.Enabled  := (QREEEP_QTDE.Value.dblResult > 0);
    QRLEEEP_QTRL.Enabled := (QREEEP_QTDE.Value.dblResult > 0) and (RECParametros.EST_QTRL);
    QREEEP_QTRL.Enabled  := (QREEEP_QTDE.Value.dblResult > 0) and (RECParametros.EST_QTRL);
  end;

  { Pronta Entrega }
  if Pos('EPE',RECRelatorio.TipoValor) > 0 then
  begin
    QRLEPE.Enabled       := (QREEPE_QTDE.Value.dblResult > 0);
    QREEPE_QTDE.Enabled  := (QREEPE_QTDE.Value.dblResult > 0);
    QRLEEPE_QTRL.Enabled := (QREEPE_QTDE.Value.dblResult > 0) and (RECParametros.EST_QTRL);
    QREEPE_QTRL.Enabled  := (QREEPE_QTDE.Value.dblResult > 0) and (RECParametros.EST_QTRL);
  end;
end;

procedure TqrpProduto_Estoque.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value := Relatorio.RecNo;
end;

procedure TqrpProduto_Estoque._Pesquisa_Categorias;
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
           RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaAnd + ' AND ' + RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''''+RECRelatorio.IEC2ConsultaLike1+Trim(SLPesquisa.Strings[i])+RECRelatorio.IEC2ConsultaLike2+'''''';
           RECRelatorio.IEC2ConsultaAnd := oStrTran(Trim(RECRelatorio.IEC2ConsultaAnd),'DEMKP','TMKP.DESCRICAO');
           RECRelatorio.IEC2ConsultaAnd := RightStr(RECRelatorio.IEC2ConsultaAnd,Length(RECRelatorio.IEC2ConsultaAnd) - 4);
  finally
    FreeAndNil(SLPesquisa);
  end;
end;

end.
