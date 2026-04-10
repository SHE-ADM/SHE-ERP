unit qGER_EST_INV;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, DateUtils, QRPDFFilt, QRExport;

type
  TQRPGER_EST_INV = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDBGrupoTitulo: TQRDBText;
    Relatorio: TIBQuery;
    TRelatorio: TIBTransaction;
    QRLSubGrupoNCM: TQRLabel;
    QRDBSubGrupoNCM: TQRDBText;
    QRLSubGrupoDescricao: TQRLabel;
    QRLSubGrupoUnidade: TQRLabel;
    QRDBSubGrupoVLUnit: TQRDBText;
    QRDBSubGrupoTotal: TQRDBText;
    QRLTotalGeral: TQRLabel;
    QRETotalGeralSaldo: TQRExpr;
    QRETotalGeralTotal: TQRExpr;
    QRSTotalGeral_1: TQRShape;
    QRSubGrupo_2: TQRShape;
    QRLSubGrupoSaldo: TQRLabel;
    QRLSubGrupoVLUnit: TQRLabel;
    QRLSubGrupoTotal: TQRLabel;
    QRDBSubGrupoSaldo: TQRDBText;
    QRDBSubGrupoDescricao: TQRDBText;
    QRDBSubGrupoUnidade: TQRDBText;
    QRETotalGeralRecNo: TQRExpr;
    QRSubGrupo_1: TQRShape;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLSite: TQRLabel;
    QRIInstagram: TQRImage;
    QRLInstagram: TQRLabel;
    QRIFacebook: TQRImage;
    QRLFacebook: TQRLabel;
    RelatorioDATA: TDateField;
    RelatorioIDEP: TIntegerField;
    RelatorioDEEP: TIBStringField;
    RelatorioNCM: TIBStringField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioEF_QTDE: TIBBCDField;
    RelatorioEF_VPRC: TFloatField;
    RelatorioEF_TOTAL: TIBBCDField;
    RelatorioMESANO: TIBStringField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
  private
    RECRelatorio: TREC_SHE_REL;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TREC_SHE_REL); reintroduce; overload;
  end;

var
  QRPGER_EST_INV: TQRPGER_EST_INV;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TQRPGER_EST_INV.Create(AOwner: TComponent; const ARECRelatorio: TREC_SHE_REL);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPGER_EST_INV.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Monta Relatório }
            oOTransact(TRelatorio);
            with FrmRelatorios, Relatorio do
            begin
              { Filtro Inicial }
              RECRelatorio.QRLRODAPE := 'Empresa: Otimotex '+
                                            'Período: '+FormatDateTime('dd/mm/yy',MCData1.Date)+' até '+FormatDateTime('dd/mm/yy',MCData2.Date)+' '+
                                            '( Dt. Emissão )';
              Close;
              SQL.Clear;
              SQL.Add('SELECT   CAST('''+oRETMesExtenso(MCData2.Date)+' de '+oStrZero(YearOF(MCData2.Date),4)+''' AS VARCHAR(20)) AS MESANO,');
              SQL.Add('         PK.Data AS DATA,PK.IDEmpresa AS IDEP,PK.DEEmpresa AS DEEP,PK.NCM,PK.INVDescricao AS DESCRICAO,PK.INVUnidade AS UCOM,');
              SQL.Add('         PK.INVEstoque AS EF_QTDE,PK.INVPreco AS EF_VPRC,PK.INVTotal AS EF_TOTAL');
              SQL.Add('FROM     INVENTARIO AS PK');
              SQL.Add('WHERE    PK.DATA BETWEEN '''+FormatDateTime('mm/dd/yy',MCData1.Date)+''' AND '''+formatDateTime('mm/dd/yy',MCData2.Date)+'''');

              if RECRelatorio.EP_ID > 0 then
              SQL.Add('AND      PK.IDEMPRESA = ''' + RECRelatorio.EP_ID + '''');
              SQL.Add('ORDER BY PK.NCM');
              Open;
            end;
          end;

begin
  with qrpGER_EST_INV do
    try
      _Select;
      _Report;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorio.TAGPrint of
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
      WinControlFormDestroy(qrpGER_EST_INV);
    end;
end;

procedure TQRPGER_EST_INV.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGER_EST_INV);
  end;
end;

end.
