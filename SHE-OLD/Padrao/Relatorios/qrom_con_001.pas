unit qrom_con_001;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, math, StrUtils, QRPDFFilt, QRExport;

type
  Tqrprom_con_001 = class(TQuickRep)
    Relatorio: TIBQuery;
    QConsulta: TIBQuery;
    QRBand8: TQRBand;
    qrpcab: TQRGroup;
    qrdbdrep: TQRDBText;
    qrpsub: TQRGroup;
    QRBand9: TQRBand;
    qrlvend: TQRLabel;
    PageFooterBand1: TQRBand;
    QRDBText3: TQRDBText;
    RelatorioID: TIntegerField;
    RelatorioROM_DERO: TIBStringField;
    RelatorioROM_CDNF: TIntegerField;
    RelatorioROM_DROM: TDateField;
    RelatorioROM_DNFS: TDateField;
    RelatorioROM_CONC: TSmallintField;
    RelatorioROM_TCDE: TIBBCDField;
    RelatorioROM_TSDE: TIBBCDField;
    RelatorioROM_STCO: TIBStringField;
    RelatorioROM_CPAG: TIntegerField;
    RelatorioPAG_DPAG: TIBStringField;
    RelatorioROM_CVEN: TIntegerField;
    RelatorioROM_CREP: TIntegerField;
    RelatorioREP_FANT: TIBStringField;
    RelatorioROM_CCLI: TIntegerField;
    RelatorioCLI_FANT: TIBStringField;
    RelatorioCLI_RAZA: TIBStringField;
    RelatorioROM_CDET: TIBStringField;
    RelatorioROM_ITEM: TIBStringField;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_CPRO: TIBStringField;
    RelatorioROM_DPRO: TIBStringField;
    RelatorioROM_DUNI: TIBStringField;
    RelatorioROM_QTDE: TIBBCDField;
    RelatorioROM_QTPD: TIBBCDField;
    RelatorioROM_UNIT: TFloatField;
    RelatorioROM_TOTA: TIBBCDField;
    QRDBText2: TQRDBText;
    RelatorioROM_UNID: TStringField;
    QRDBText5: TQRDBText;
    qrlsubt: TQRLabel;
    qrltota: TQRLabel;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    RelatorioROM_REFE: TStringField;
    RelatorioROM_CPRO: TStringField;
    RelatorioPRO_COMP: TIBStringField;
    QRDBText4: TQRDBText;
    QRBand10: TQRBand;
    RelatorioROM_DCLI: TStringField;
    RelatorioROM_DUSU: TStringField;
    RelatorioROM_DREP: TStringField;
    RelatorioROM_OBSE: TMemoField;
    RelatorioRPED: TIntegerField;
    TCadastro: TIBTransaction;
    RelatorioROM_RLPD: TIntegerField;
    RelatorioRROM: TIntegerField;
    QRExpr5: TQRExpr;
    RelatorioROM_QTRL: TIntegerField;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel61: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioC_UCOM: TStringField;
    QRShape2: TQRShape;
    QRShape8: TQRShape;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    QRDBImage3: TQRDBImage;
    QRDBImage4: TQRDBImage;
    QRDBImage5: TQRDBImage;
    QRDBImage7: TQRDBImage;
    QRDBImage6: TQRDBImage;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRBEmpresa: TQRBand;
    QRIEmpresa: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    RelatorioDGCP: TIBStringField;
    RelatorioDECV: TIBStringField;
    RelatorioILA_BMP1: TBlobField;
    RelatorioILA_BMP2: TBlobField;
    RelatorioILA_BMP3: TBlobField;
    RelatorioILA_BMP4: TBlobField;
    RelatorioILA_BMP5: TBlobField;
    RelatorioILA_BMP6: TBlobField;
    RelatorioILA_BMP7: TBlobField;
    RelatorioILA_BMP8: TBlobField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private
    RECRelatorios: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios); reintroduce; overload;
  end;

var
  qrprom_con_001: Tqrprom_con_001;

implementation

uses uPrincipal, bPrincipal, pExporta;

{$R *.DFM}

Constructor Tqrprom_con_001.Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios);
begin
  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);
  RECRelatorios := ARECRelatorios;

  inherited Create(AOwner);
end;

procedure Tqrprom_con_001.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorios); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorios); { Rodapé }
          end;

          procedure _Select;
          begin
            oOTransact(TCadastro);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT PK.ID        ,PK.ROM_DERO,PK.ROM_CDNF,PK.ROM_DROM,PK.ROM_DNFS,PK.ROM_CONC,PK.ROM_TCDE,PK.ROM_TSDE,PK.ROM_STCO,PK.ROM_CPAG,TPG.PAG_DPAG,');
              SQL.Add('       PK.ROM_CCLI,PK.ROM_OBSE,CL.CLI_FANT,CL.CLI_RAZA,PK.ROM_CVEN  ,CV.LOGIN AS DECV,PK.ROM_CREP,CR.REP_FANT,');
              SQL.Add('       FK.ROM_CDET  ,FK.ROM_ITEM,CP.PRO_CART,CP.PRO_CPRO,CP.PRO_COMP,FK.DGCP,FK.ROM_DPRO,FK.ROM_DUNI,');
              SQL.Add('       TUC.DESCRICAO,FK.ROM_QTDE,FK.ROM_QTRL,FK.ROM_QTPD,FK.ROM_RLPD,FK.ROM_UNIT,FK.ROM_TOTA,');
              SQL.Add('       ILA.ILA_BMP1,ILA.ILA_BMP2,ILA.ILA_BMP3,ILA.ILA_BMP4,ILA.ILA_BMP5,ILA.ILA_BMP6,ILA.ILA_BMP7,ILA.ILA_BMP8');
              SQL.Add('FROM '+SLPrincipal.Values['rom_cab']+' AS PK');
              SQL.Add('JOIN '+SLPrincipal.Values['rom_ite']+' AS FK ON (FK.IDPK = PK.ID)');
              SQL.Add('JOIN      CAD_CLI        AS CL  ON (CL.ID          = PK.IDCL)');
              SQL.Add('JOIN      TAB_USER       AS CV  ON (CV.ID          = PK.IDCV)');
              SQL.Add('JOIN      CAD_REP        AS CR  ON (CR.ID          = PK.IDCR)');
              SQL.Add('JOIN      TAB_PAG        AS TPG ON (TPG.ID         = PK.CDPG)');
              SQL.Add('JOIN      CAD_PRO        AS CP  ON (CP.ID          = FK.IDCP)');
              SQL.Add('JOIN      TAB_UCOM       AS TUC ON (TUC.REFERENCIA = FK.UCOM)');
              SQL.Add('LEFT JOIN VW_CAD_PRO_ILA AS ILA ON (ILA.ID         = CP.IDAK)');
              SQL.Add('WHERE PK.ID = '''+RECRelatorios.Id+'''');
              SQL.Add('ORDER BY FK.UCOM,CP.PRO_CPRO');
              Prepare;
              Open;
            end;
          end;
begin
  with qrprom_con_001 do
    try
      _Report;
      _Select;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorios.PrintTAG of
          0: PreviewModal;
          1: Print;

          { PDF }
          2: try
               ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorios.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
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
               ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorios.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
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
               ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorios.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
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
      WinControlFormDestroy(qrprom_con_001);
    end;
end;

procedure Tqrprom_con_001.RelatorioCalcFields(DataSet: TDataSet);
begin
  relatorioROM_REFE.Value := relatorioPRO_CART.AsString+' '+relatorioROM_DPRO.AsString;
  relatorioROM_CPRO.Value := relatorioPRO_CPRO.AsString+' '+relatorioDGCP.AsString;
  relatorioROM_DCLI.Value := oStrZero(relatorioROM_CCLI.AsInteger,5)+' - '+relatorioCLI_FANT.AsString;
  relatorioROM_DUSU.Value := oStrZero(relatorioROM_CVEN.AsInteger,5)+' - '+relatorioDECV.AsString;
  relatorioROM_DREP.Value := oStrZero(relatorioROM_CREP.AsInteger,5)+' - '+relatorioREP_FANT.AsString;
  relatorioC_UCOM.Value   := RelatorioDESCRICAO.AsString;

  relatorioRPED.Value := relatorioROM_RLPD.AsInteger;
  relatorioRROM.Value := relatorioROM_QTRL.AsInteger;
end;

procedure Tqrprom_con_001.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TCadastro);
    Finalize(RECRelatorios);
    FillChar(RECRelatorios,SizeOf(RECRelatorios),0);
  finally
    oPRN_EXE(Application.Handle,'Relatórios');
    FreeAndNil(qrprom_con_001);
  end;
end;

procedure Tqrprom_con_001.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRBand9.Enabled := (RelatorioPRO_CART.AsString <> RelatorioPRO_CPRO.AsString);
end;

procedure Tqrprom_con_001.QuickRepAfterPrint(Sender: TObject);
begin
  if RelatorioID.AsInteger > 0 then
     with FBird do
     try
       oOTransact(TFBEdicao);
       with SQLFBEdicao do
       begin
         { Romaneio }
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('ROM_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('SET LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
         SQL.Add('    LOG_PRN_CDEV = 7,');

         SQL.Add('LOG_PRN_IDEV = ''' + RECUsuarios.Id     + ''',');
         SQL.Add('LOG_PRN_IP   = ''' + RECParametros.IP   + ''',');
         SQL.Add('LOG_PRN_HOST = ''' + RECParametros.HOST + '''' );

         SQL.Add('WHERE ID = ''' + RelatorioID.AsString + '''');
         ExecQuery;

         { Pedido }
         Close;
         SQL.Clear;
         SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('SET LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
         SQL.Add('    LOG_PRN_CDEV = 7,');

         SQL.Add('LOG_PRN_IDEV = ''' + RECUsuarios.Id     + ''',');
         SQL.Add('LOG_PRN_IP   = ''' + RECParametros.IP   + ''',');
         SQL.Add('LOG_PRN_HOST = ''' + RECParametros.HOST + '''' );

         SQL.Add('WHERE CDRO = ''' + RelatorioID.AsString + '''');
         ExecQuery;
       end;
     finally
       oCTransact(TFBEdicao);
     end;
end;

end.
