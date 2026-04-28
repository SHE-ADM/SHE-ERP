unit pctr_ped;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents, StrUtils,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, dxDBELib, rxSpeedbar, IBSQL,
  ActnList, ActnMan, pPadr2, dxBar, dxDockControl, dxDockPanel, cxGraphics,
  cxControls, dxStatusBar, rxAnimate, rxGIFCtrl;

type
  Tfrmctr_ped = class(TFrmPadr2)
    SIAltera: TSpeedItem;
    SICancela: TSpeedItem;
    DTSFKCadastro: TDataSource;
    SIFinaliza: TSpeedItem;
    SIRomaneio: TSpeedItem;
    fin_rec_bai: TIBDataSet;
    TSEdicao: TIBTransaction;
    SICAD_CLI_CRD: TSpeedItem;
    FKCadastro: TIBQuery;
    fin_rec_baiID: TIntegerField;
    fin_rec_baiFIN_CCAB: TIntegerField;
    fin_rec_baiFIN_CDBX: TIntegerField;
    fin_rec_baiFIN_CDCX: TIntegerField;
    fin_rec_baiFIN_CDRD: TIntegerField;
    fin_rec_baiFIN_CCLI: TIntegerField;
    fin_rec_baiFIN_DFIN: TIBStringField;
    fin_rec_baiFIN_DCLI: TIBStringField;
    fin_rec_baiFIN_RCLI: TIBStringField;
    fin_rec_baiFIN_CVEN: TIntegerField;
    fin_rec_baiFIN_VEND: TIBStringField;
    fin_rec_baiFIN_CREP: TIntegerField;
    fin_rec_baiFIN_DREP: TIBStringField;
    fin_rec_baiFIN_RREP: TIBStringField;
    fin_rec_baiFIN_PRAZ: TSmallintField;
    fin_rec_baiFIN_ATRA: TSmallintField;
    fin_rec_baiFIN_CONC: TSmallintField;
    fin_rec_baiFIN_DCAD: TDateField;
    fin_rec_baiFIN_DVEN: TDateField;
    fin_rec_baiFIN_DPAG: TDateField;
    fin_rec_baiFIN_DMED: TDateField;
    fin_rec_baiFIN_DATR: TDateField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
    fin_rec_baiFIN_STDO: TIBStringField;
    fin_rec_baiFIN_DOCT: TIBStringField;
    fin_rec_baiFIN_BANC: TIBStringField;
    fin_rec_baiFIN_DBAN: TIBStringField;
    fin_rec_baiFIN_AGEN: TIBStringField;
    fin_rec_baiFIN_CONT: TIBStringField;
    fin_rec_baiFIN_NCHQ: TIBStringField;
    fin_rec_baiFIN_MCHQ: TSmallintField;
    fin_rec_baiFIN_VALO: TIBBCDField;
    fin_rec_baiFIN_VPAG: TIBBCDField;
    fin_rec_baiFIN_VPEN: TIBBCDField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    fin_rec_baiFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_VMUL: TIBBCDField;
    fin_rec_baiFIN_PMUL: TIBBCDField;
    fin_rec_baiFIN_VJUR: TIBBCDField;
    fin_rec_baiFIN_PJUR: TIBBCDField;
    fin_rec_baiFIN_VDES: TIBBCDField;
    fin_rec_baiFIN_PDES: TIBBCDField;
    fin_rec_baiFIN_VCHQ: TIBBCDField;
    fin_rec_baiFIN_CPF: TIBStringField;
    fin_rec_baiFIN_STA: TIBStringField;
    fin_rec_baiFIN_COBR: TIBStringField;
    fin_rec_baiFIN_DERD: TIBStringField;
    fin_rec_baiFIN_DTST: TDateTimeField;
    fin_rec_baiFIN_OBSE: TMemoField;
    fin_rec_baiFIN_TIPO: TIBStringField;
    fin_rec_baiFIN_STCO: TIBStringField;
    fin_rec_baiFIN_STFI: TIBStringField;
    fin_rec_baiFIN_TITU: TIBStringField;
    GBFKPedidos: TGroupBox;
    SICAD_CLI_EDI: TSpeedItem;
    Separados: TIBQuery;
    DTSFKSeparados: TDataSource;
    SINovo: TSpeedItem;
    SIDevolucao: TSpeedItem;
    SIAbatimento: TSpeedItem;
    PCFKPedidos: TdxPageControl;
    TSFKPedidos: TdxTabSheet;
    TSFKExpedicao: TdxTabSheet;
    DBGITPED: TdxDBGrid;
    DBGITSEP: TdxDBGrid;
    DBGITSEPSKU: TdxDBGridMaskColumn;
    DBGITSEPQTDE: TdxDBGridMaskColumn;
    DBGITSEPCDET: TdxDBGridMaskColumn;
    DBGITSEPQTRL: TdxDBGridMaskColumn;
    DBGITSEPDESP: TdxDBGridMaskColumn;
    PNLTAB_PRC: TPanel;
    DBGITSEPVPRC_COM: TdxDBGridMaskColumn;
    DBGITSEPTCDE: TdxDBGridMaskColumn;
    TSFKRomaneios: TdxTabSheet;
    DBGITROM: TdxDBGrid;
    Romaneios: TIBQuery;
    DTSFKRomaneios: TDataSource;
    RomaneiosID: TIntegerField;
    RomaneiosIDEP: TSmallintField;
    RomaneiosPRO_CPRO: TIBStringField;
    RomaneiosROM_CDET: TIBStringField;
    RomaneiosROM_QTDE: TIBBCDField;
    RomaneiosROM_QTRL: TIntegerField;
    RomaneiosROM_UNIT: TFloatField;
    RomaneiosROM_TOTA: TIBBCDField;
    RomaneiosSEPARADOR: TIBStringField;
    DBGITROMPRO_CPRO: TdxDBGridMaskColumn;
    DBGITROMROM_CDET: TdxDBGridMaskColumn;
    DBGITROMROM_QTDE: TdxDBGridMaskColumn;
    DBGITROMROM_QTRL: TdxDBGridMaskColumn;
    DBGITROMROM_UNIT: TdxDBGridMaskColumn;
    DBGITROMROM_TOTA: TdxDBGridMaskColumn;
    DBGITROMSEPARADOR: TdxDBGridMaskColumn;
    PNLTAB_PRC_ABAIXO: TPanel;
    LALTAB_PRC_ABAIXO: TLabel;
    LALTAB_PRC_ACIMA_MIN: TLabel;
    PNLTAB_PRC_ACIMA_MIN: TPanel;
    LALTAB_PRC_ACIMA_MAX: TLabel;
    PNLTAB_PRC_ACIMA_MAX: TPanel;
    DSResumos: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    DPREL_PED_PDV_DIA: TdxDockPanel;
    DPREL_PED_PDV_MES: TdxDockPanel;
    RomaneiosDGCP: TIBStringField;
    RomaneiosUCOM: TIBStringField;
    RomaneiosUCON: TIBStringField;
    DBGITROMDGCP: TdxDBGridMaskColumn;
    DBGITSEPDGCP: TdxDBGridMaskColumn;
    SQLFKEdicao: TIBSQL;
    DBGITPEDC_ID: TdxDBGridColumn;
    DBGConsultaDEPK: TdxDBGridColumn;
    DBGConsultaDTPK: TdxDBGridColumn;
    DBGConsultaCTNR: TdxDBGridColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaUFCD: TdxDBGridMaskColumn;
    DBGConsultaDECV: TdxDBGridMaskColumn;
    DBGConsultaDECR: TdxDBGridMaskColumn;
    DBGConsultaSTPD: TdxDBGridColumn;
    DBGConsultaCDNF: TdxDBGridColumn;
    DBGConsultaVIPI: TdxDBGridColumn;
    DBGConsultaVST: TdxDBGridColumn;
    DBGConsultaPDSC: TdxDBGridColumn;
    DBGConsultaVDSC: TdxDBGridColumn;
    DBGConsultaD_DTSA: TdxDBGridColumn;
    DBGConsultaRECO: TdxDBGridColumn;
    DBGConsultaD_STCO: TdxDBGridColumn;
    DBGConsultaD_TCDE: TdxDBGridColumn;
    DBGConsultaVTFA: TdxDBGridColumn;
    DBGConsultaDECT: TdxDBGridMaskColumn;
    DBGConsultaVFRT: TdxDBGridColumn;
    DBGConsultaPSBR: TdxDBGridColumn;
    DBGConsultaPSLQ: TdxDBGridColumn;
    DBGConsultaD_DEST: TdxDBGridColumn;
    DBGConsultaVTSP: TdxDBGridMaskColumn;
    DBGConsultaTPCO: TdxDBGridColumn;
    PNLINFADLOG: TPanel;
    FKCadastroID: TIntegerField;
    FKCadastroIDEP: TSmallintField;
    FKCadastroIDPK: TLargeintField;
    FKCadastroITEM: TIntegerField;
    FKCadastroIDCP: TIntegerField;
    FKCadastroCP_IDEP: TSmallintField;
    FKCadastroCP_DEEP: TIBStringField;
    FKCadastroARTIGO: TIBStringField;
    FKCadastroSKU: TIBStringField;
    FKCadastroDECP: TIBStringField;
    FKCadastroDGCP: TIBStringField;
    FKCadastroUCOM: TIBStringField;
    FKCadastroUCON: TIBStringField;
    FKCadastroQTDE: TIBBCDField;
    FKCadastroQTRL: TIntegerField;
    FKCadastroVPRC_PAD_INI: TFloatField;
    FKCadastroVPRC_PAD_FIM: TFloatField;
    FKCadastroVPRC_PAD: TFloatField;
    FKCadastroPDSC: TIBBCDField;
    FKCadastroVDSC: TFloatField;
    FKCadastroVPRC_COM: TFloatField;
    FKCadastroNCM: TIBStringField;
    FKCadastroPIPI: TIBBCDField;
    FKCadastroVIPI: TFloatField;
    FKCadastroPCOM: TIBBCDField;
    FKCadastroVCOM: TFloatField;
    FKCadastroTSDE: TIBBCDField;
    FKCadastroTCDE: TIBBCDField;
    FKCadastroVTSP: TIBBCDField;
    FKCadastroPSBR: TIBBCDField;
    FKCadastroPSLQ: TIBBCDField;
    FKCadastroIDSP: TSmallintField;
    FKCadastroCDSP: TLargeintField;
    FKCadastroDESP: TIBStringField;
    FKCadastroQTSP: TIBBCDField;
    FKCadastroRLSP: TIntegerField;
    FKCadastroDTSP: TDateTimeField;
    FKCadastroC_ID: TLargeintField;
    DBGITPEDITEM: TdxDBGridMaskColumn;
    DBGITPEDCP_DEEP: TdxDBGridMaskColumn;
    DBGITPEDARTIGO: TdxDBGridMaskColumn;
    DBGITPEDSKU: TdxDBGridMaskColumn;
    DBGITPEDDECP: TdxDBGridMaskColumn;
    DBGITPEDDGCP: TdxDBGridColumn;
    DBGITPEDUCOM: TdxDBGridMaskColumn;
    DBGITPEDQTDE: TdxDBGridMaskColumn;
    DBGITPEDQTRL: TdxDBGridMaskColumn;
    DBGITPEDVPRC_PAD_INI: TdxDBGridMaskColumn;
    DBGITPEDVPRC_PAD_FIM: TdxDBGridMaskColumn;
    DBGITPEDPDSC: TdxDBGridMaskColumn;
    DBGITPEDVPRC_COM: TdxDBGridMaskColumn;
    DBGITPEDNCM: TdxDBGridMaskColumn;
    DBGITPEDPIPI: TdxDBGridMaskColumn;
    DBGITPEDPCOM: TdxDBGridMaskColumn;
    DBGITPEDVDSC: TdxDBGridMaskColumn;
    DBGITPEDTCDE: TdxDBGridMaskColumn;
    DBGITPEDVTSP: TdxDBGridMaskColumn;
    DBGITPEDVIPI: TdxDBGridMaskColumn;
    DBGITPEDVCOM: TdxDBGridMaskColumn;
    DBGITPEDPSBR: TdxDBGridMaskColumn;
    DBGITPEDPSLQ: TdxDBGridMaskColumn;
    DBGITPEDDESP: TdxDBGridColumn;
    DBGITPEDQTSP: TdxDBGridMaskColumn;
    DBGITPEDRLSP: TdxDBGridMaskColumn;
    DBGITPEDDTSP: TdxDBGridDateColumn;
    DBGConsultaVNF: TdxDBGridColumn;
    FKCadastroUN_QTDE: TIBStringField;
    FKCadastroCEAN: TIBStringField;
    DBGConsultaD_MFRT: TdxDBGridMaskColumn;
    LATAB_PRC_ACIMA_MIN: TLabel;
    LATAB_PRC_ACIMA_MAX: TLabel;
    FKCadastroUN_QTSP: TIBStringField;
    PNLINFADCAD: TPanel;
    FKCadastroIMG_PAD: TBlobField;
    FKCadastroIMG_ID: TLargeintField;
    DBGITSEPITEM: TdxDBGridMaskColumn;
    DBGITSEPVPRC_PAD_INI: TdxDBGridMaskColumn;
    DBGITSEPVPRC_PAD_FIM: TdxDBGridMaskColumn;
    SIEstorno: TSpeedItem;
    DBINFADCAD: TdxDBMemo;
    SeparadosID: TIntegerField;
    SeparadosIDEP: TSmallintField;
    SeparadosIDCA: TSmallintField;
    SeparadosCDSP: TLargeintField;
    SeparadosDESP: TIBStringField;
    SeparadosCDRO: TLargeintField;
    SeparadosCDET: TLargeintField;
    SeparadosITEM: TIntegerField;
    SeparadosSKU: TIBStringField;
    SeparadosDGCP: TIBStringField;
    SeparadosUCOM: TIBStringField;
    SeparadosUCON: TIBStringField;
    SeparadosQTDE: TIBBCDField;
    SeparadosQTRL: TIntegerField;
    SeparadosVPRC_PAD_INI: TFloatField;
    SeparadosVPRC_PAD_FIM: TFloatField;
    SeparadosVPRC_COM: TFloatField;
    SeparadosTCDE: TIBBCDField;
    DBGITSEPDTCA: TdxDBGridDateColumn;
    SeparadosIDPK: TLargeintField;
    DBGConsultaLOG_PRN_QTEV: TdxDBGridMaskColumn;
    DBGConsultaLOG_PRN_CDEV: TdxDBGridMaskColumn;
    DBGConsultaTCDE: TdxDBGridColumn;
    DBGConsultaQTRL: TdxDBGridColumn;
    DBGConsultaRLSP: TdxDBGridColumn;
    DBGConsultaPPSP: TdxDBGridMaskColumn;
    DBGConsultaHTPK: TdxDBGridTimeColumn;
    DBGConsultaDTNF: TdxDBGridDateColumn;
    CadastroID: TIntegerField;
    CadastroIDEP: TSmallintField;
    CadastroDEEP: TIBStringField;
    CadastroIDCA: TSmallintField;
    CadastroDTCA: TDateTimeField;
    CadastroHTPK: TTimeField;
    CadastroIDST: TSmallintField;
    CadastroDTST: TDateField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDEST: TIBStringField;
    CadastroINFADST: TIBStringField;
    CadastroIDPK: TLargeintField;
    CadastroDEPK: TIBStringField;
    CadastroDTPK: TDateField;
    CadastroCDCX: TLargeintField;
    CadastroCDPP: TLargeintField;
    CadastroAPI_B2B: TSmallintField;
    CadastroCTNR: TIBStringField;
    CadastroIDSP: TSmallintField;
    CadastroDESP: TIBStringField;
    CadastroDTSP: TDateField;
    CadastroD_DTSP: TDateTimeField;
    CadastroDTSP_INI: TDateTimeField;
    CadastroDTSP_FIM: TDateTimeField;
    CadastroCDRO: TLargeintField;
    CadastroDTRO: TDateField;
    CadastroD_DTRO: TDateTimeField;
    CadastroCDNF: TLargeintField;
    CadastroCFOP: TIBStringField;
    CadastroDTNF: TDateField;
    CadastroD_DTNF: TDateTimeField;
    CadastroIDSA: TSmallintField;
    CadastroDTSA: TDateField;
    CadastroD_DTSA: TDateTimeField;
    CadastroIDCD: TIntegerField;
    CadastroDECD: TIBStringField;
    CadastroRZCD: TIBStringField;
    CadastroPJCD: TIBStringField;
    CadastroGPCD: TIBStringField;
    CadastroCNCD: TSmallintField;
    CadastroCSCD: TSmallintField;
    CadastroUFCD: TIBStringField;
    CadastroRSCD: TIBStringField;
    CadastroIDCV: TSmallintField;
    CadastroDECV: TIBStringField;
    CadastroRSCV: TIBStringField;
    CadastroIDCR: TSmallintField;
    CadastroDECR: TIBStringField;
    CadastroUFCR: TIBStringField;
    CadastroRSCR: TIBStringField;
    CadastroIDCT: TSmallintField;
    CadastroDECT: TIBStringField;
    CadastroUFCT: TIBStringField;
    CadastroRSCT: TIBStringField;
    CadastroITEM: TIntegerField;
    CadastroQTDE: TIBBCDField;
    CadastroQTRL: TIntegerField;
    CadastroITSP: TIntegerField;
    CadastroQTSP: TIBBCDField;
    CadastroRLSP: TIntegerField;
    CadastroPDSC: TIBBCDField;
    CadastroVDSC: TIBBCDField;
    CadastroTSDE: TIBBCDField;
    CadastroD_TSDE: TIBBCDField;
    CadastroTCDE: TIBBCDField;
    CadastroD_TCDE: TIBBCDField;
    CadastroVTSP: TIBBCDField;
    CadastroPPSP: TIBBCDField;
    CadastroVNF: TIBBCDField;
    CadastroVIPI: TIBBCDField;
    CadastroVST: TIBBCDField;
    CadastroVTFA: TIBBCDField;
    CadastroVTAP: TIBBCDField;
    CadastroPCOM: TIBBCDField;
    CadastroVCOM: TIBBCDField;
    CadastroMFRT: TSmallintField;
    CadastroD_MFRT: TIBStringField;
    CadastroVFRT: TIBBCDField;
    CadastroPSBR: TIBBCDField;
    CadastroPSLQ: TIBBCDField;
    CadastroCDPD: TSmallintField;
    CadastroSTPD: TIBStringField;
    CadastroABPD: TSmallintField;
    CadastroDVPD: TSmallintField;
    CadastroSVPD: TSmallintField;
    CadastroFAPD: TSmallintField;
    CadastroBQPD: TSmallintField;
    CadastroBEPD: TSmallintField;
    CadastroQEPD: TSmallintField;
    CadastroSEPD: TSmallintField;
    CadastroDEPD: TSmallintField;
    CadastroCDCO: TSmallintField;
    CadastroSTCO: TIBStringField;
    CadastroD_STCO: TIBStringField;
    CadastroTPCO: TSmallintField;
    CadastroRECO: TIBStringField;
    CadastroCDPG: TSmallintField;
    CadastroDEPG: TIBStringField;
    CadastroAPST: TSmallintField;
    CadastroFBST: TSmallintField;
    CadastroBXST: TSmallintField;
    CadastroLQST: TSmallintField;
    CadastroBQST: TSmallintField;
    CadastroCDBX: TLargeintField;
    CadastroDTBX: TDateField;
    CadastroD_DTBX: TDateTimeField;
    CadastroINFADCAD: TIBStringField;
    CadastroIP: TIBStringField;
    CadastroHOST: TIBStringField;
    CadastroLOG_PRN_CDEV: TSmallintField;
    CadastroLOG_PRN_QTEV: TSmallintField;
    CadastroLOC_NO_CT: TIBStringField;
    DBGConsultaLOC_NO_CT: TdxDBGridMaskColumn;
    DBGConsultaUFCT: TdxDBGridMaskColumn;
    CadastroCDDV: TLargeintField;
    CadastroDTDV: TDateField;
    CadastroDEDV: TIBStringField;
    CadastroFIN_VCRD: TIBBCDField;
    CadastroIDSC: TSmallintField;
    CadastroTDSC: TIBStringField;
    CadastroD_DEST: TIBStringField;
    DBGConsultaVTAP: TdxDBGridMaskColumn;
    CadastroC_IDPK: TLargeintField;
    DBGConsultaC_IDPK: TdxDBGridColumn;
    CadastroD_HTSA: TIBStringField;
    CadastroD_HNSA: TIBBCDField;
    CadastroINFADOS: TIBStringField;
    CadastroINFSTOS: TIBStringField;
    PNLLOGPRN: TPanel;
    PNLINFADPRN: TPanel;
    DBINFADPRN: TdxDBMemo;
    PNLLOGOS: TPanel;
    PNLINFADOS: TPanel;
    DBINFADOS: TdxDBMemo;
    PNLINFSTOS: TPanel;
    DBINFSTOS: TdxDBMemo;
    CadastroINFADPRN: TIBStringField;
    CadastroIDOS: TSmallintField;
    CadastroCDOS: TLargeintField;
    CadastroDTOS: TDateField;
    CadastroD_DTOS: TDateTimeField;
    CadastroD_HTOS: TIBStringField;
    CadastroD_HNOS: TIBBCDField;
    CadastroD_HTSP: TIBStringField;
    CadastroD_HNSP: TIBBCDField;
    DBGConsultaGPCD: TdxDBGridMaskColumn;
    DBGConsultaCNCD: TdxDBGridMaskColumn;
    DBGConsultaFAPD: TdxDBGridMaskColumn;
    DBGConsultaBQPD: TdxDBGridMaskColumn;
    DBGConsultaCSCD: TdxDBGridMaskColumn;
    CadastroHTNF: TTimeField;
    CadastroD_VTSP: TIBBCDField;
    CadastroD_PPSP: TIBBCDField;
    CadastroD_QTDE: TIBBCDField;
    CadastroD_QTRL: TIntegerField;
    CadastroD_QTSP: TIBBCDField;
    CadastroD_RLSP: TIntegerField;
    DBGConsultaD_QTRL: TdxDBGridColumn;
    DBGConsultaDTSP: TdxDBGridColumn;
    CadastroIDEV: TLargeintField;
    CAD_PRO_IMG: TIBQuery;
    CAD_PRO_IMGIMG_ID: TLargeintField;
    CAD_PRO_IMGIMG_NO: TIBStringField;
    CAD_PRO_IMGIMG_PAD: TBlobField;
    CAD_PRO_IMGILA_BMP1: TBlobField;
    CAD_PRO_IMGILA_INS1: TIBStringField;
    CAD_PRO_IMGD_ILA_INS1: TIBStringField;
    CAD_PRO_IMGILA_BMP2: TBlobField;
    CAD_PRO_IMGILA_INS2: TIBStringField;
    CAD_PRO_IMGD_ILA_INS2: TIBStringField;
    CAD_PRO_IMGILA_BMP3: TBlobField;
    CAD_PRO_IMGILA_INS3: TIBStringField;
    CAD_PRO_IMGD_ILA_INS3: TIBStringField;
    CAD_PRO_IMGILA_BMP4: TBlobField;
    CAD_PRO_IMGILA_INS4: TIBStringField;
    CAD_PRO_IMGD_ILA_INS4: TIBStringField;
    CAD_PRO_IMGILA_BMP5: TBlobField;
    CAD_PRO_IMGILA_INS5: TIBStringField;
    CAD_PRO_IMGD_ILA_INS5: TIBStringField;
    CAD_PRO_IMGILA_BMP6: TBlobField;
    CAD_PRO_IMGILA_INS6: TIBStringField;
    CAD_PRO_IMGD_ILA_INS6: TIBStringField;
    CAD_PRO_IMGILA_BMP7: TBlobField;
    CAD_PRO_IMGILA_INS7: TIBStringField;
    CAD_PRO_IMGD_ILA_INS7: TIBStringField;
    CAD_PRO_IMGILA_BMP8: TBlobField;
    CAD_PRO_IMGILA_INS8: TIBStringField;
    CAD_PRO_IMGD_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG: TDataSource;
    ACTMPPedido: TAction;
    ACTMPDevolucao: TAction;
    ACTMPAbatimento: TAction;
    PNLIMG_PAD: TPanel;
    GBIMG_PAD: TGroupBox;
    IMG_PAD: TImage;
    GBIMG_ILA: TGroupBox;
    BVILA_BMP1: TBevel;
    BVILA_BMP2: TBevel;
    BVILA_BMP3: TBevel;
    BVILA_BMP4: TBevel;
    BVILA_BMP5: TBevel;
    BVILA_BMP6: TBevel;
    BVILA_BMP7: TBevel;
    BVILA_BMP8: TBevel;
    DBILA_BMP1: TDBImage;
    DBILA_BMP2: TDBImage;
    DBILA_BMP3: TDBImage;
    DBILA_BMP4: TDBImage;
    DBILA_BMP5: TDBImage;
    DBILA_BMP6: TDBImage;
    DBILA_BMP7: TDBImage;
    DBILA_BMP8: TDBImage;
    DBGConsultaIDOS: TdxDBGridCheckColumn;
    ACTMPRomaneio: TAction;
    ACTMPFinanceiroAppend: TAction;
    ACTMPFinanceiroDelete: TAction;
    ACTMPCAD_CLI_CRD: TAction;
    ACTMPCAD_CLI_EDI: TAction;
    DBGREL_PED_PDV_DIA: TdxDBGrid;
    DBGREL_PED_PDV_DIAPED_EP_NO: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIAPED_DIA: TdxDBGridDateColumn;
    DBGREL_PED_PDV_DIACLI_ITCD: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIACLI_INCD: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIAPED_VLPK: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIAPED_ILPK: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIAPED_VLSP: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIAPED_ILSP: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIAPED_PLSP: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIAPED_VTLQ: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_DIAPED_ITLQ: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_MES: TdxDBGrid;
    DBGREL_PED_PDV_MESPED_EP_NO: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_MESPED_MES: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_MESCLI_ITCD: TdxDBGridColumn;
    DBGREL_PED_PDV_MESCLI_INCD: TdxDBGridColumn;
    DBGREL_PED_PDV_MESPED_VLPK: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_MESPED_ILPK: TdxDBGridColumn;
    DBGREL_PED_PDV_MESPED_VLSP: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_MESPED_ILSP: TdxDBGridColumn;
    DBGREL_PED_PDV_MESPED_PLSP: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_MESPED_VTLQ: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_MESPED_ITLQ: TdxDBGridColumn;
    DBGConsultaD_VTSP: TdxDBGridMaskColumn;
    DBGConsultaD_PPSP: TdxDBGridMaskColumn;
    DBGConsultaD_RLSP: TdxDBGridMaskColumn;
    SeparadosDTCA: TDateTimeField;
    REL_PED_PDV_DIA: TIBQuery;
    REL_PED_PDV_DIACLI_ITCD: TIntegerField;
    REL_PED_PDV_DIACLI_INCD: TIntegerField;
    REL_PED_PDV_DIAPED_VLPK: TIBBCDField;
    REL_PED_PDV_DIAPED_ILPK: TIntegerField;
    REL_PED_PDV_DIAPED_VLSP: TIBBCDField;
    REL_PED_PDV_DIAPED_ILSP: TIntegerField;
    REL_PED_PDV_DIAPED_PLSP: TIBBCDField;
    REL_PED_PDV_DIAPED_VTLQ: TIBBCDField;
    REL_PED_PDV_DIAPED_ITLQ: TIntegerField;
    REL_PED_PDV_MES: TIBQuery;
    DTSREL_PED_PDV_MES: TDataSource;
    DTSREL_PED_PDV_DIA: TDataSource;
    REL_PED_PDV_DIAID: TLargeintField;
    REL_PED_PDV_DIAEP_ID: TSmallintField;
    REL_PED_PDV_DIAPED_EP_ID: TSmallintField;
    REL_PED_PDV_DIAPED_EP_NO: TIBStringField;
    REL_PED_PDV_DIAPED_DIA: TDateField;
    REL_PED_PDV_DIACREATED_AT: TDateTimeField;
    REL_PED_PDV_MESID: TLargeintField;
    REL_PED_PDV_MESEP_ID: TSmallintField;
    REL_PED_PDV_MESPED_EP_ID: TSmallintField;
    REL_PED_PDV_MESPED_EP_NO: TIBStringField;
    REL_PED_PDV_MESPED_MES: TIBStringField;
    REL_PED_PDV_MESPED_ANO_MES: TIBStringField;
    REL_PED_PDV_MESPED_VLPK: TIBBCDField;
    REL_PED_PDV_MESPED_ILPK: TIntegerField;
    REL_PED_PDV_MESCLI_ITCD: TIntegerField;
    REL_PED_PDV_MESCLI_INCD: TIntegerField;
    REL_PED_PDV_MESPED_VLSP: TIBBCDField;
    REL_PED_PDV_MESPED_ILSP: TIntegerField;
    REL_PED_PDV_MESPED_PLSP: TIBBCDField;
    REL_PED_PDV_MESPED_VTLQ: TIBBCDField;
    REL_PED_PDV_MESPED_ITLQ: TIntegerField;
    REL_PED_PDV_MESCREATED_AT: TDateTimeField;
    DPREL_PED_PDV_ANO: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DBGREL_PED_PDV_ANO: TdxDBGrid;
    REL_PED_PDV_ANO: TIBQuery;
    DTSREL_PED_PDV_ANO: TDataSource;
    REL_PED_PDV_ANOID: TLargeintField;
    REL_PED_PDV_ANOEP_ID: TSmallintField;
    REL_PED_PDV_ANOPED_EP_ID: TSmallintField;
    REL_PED_PDV_ANOPED_EP_NO: TIBStringField;
    REL_PED_PDV_ANOPED_ANO: TSmallintField;
    REL_PED_PDV_ANOPED_VLPK: TIBBCDField;
    REL_PED_PDV_ANOPED_ILPK: TIntegerField;
    REL_PED_PDV_ANOCLI_ITCD: TIntegerField;
    REL_PED_PDV_ANOCLI_INCD: TIntegerField;
    REL_PED_PDV_ANOPED_VLSP: TIBBCDField;
    REL_PED_PDV_ANOPED_ILSP: TIntegerField;
    REL_PED_PDV_ANOPED_PLSP: TIBBCDField;
    REL_PED_PDV_ANOPED_VTLQ: TIBBCDField;
    REL_PED_PDV_ANOPED_ITLQ: TIntegerField;
    REL_PED_PDV_ANOCREATED_AT: TDateTimeField;
    DBGREL_PED_PDV_ANOPED_EP_NO: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOPED_ANO: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOPED_VLPK: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOPED_ILPK: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOCLI_ITCD: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOCLI_INCD: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOPED_VLSP: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOPED_ILSP: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOPED_PLSP: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOPED_VTLQ: TdxDBGridMaskColumn;
    DBGREL_PED_PDV_ANOPED_ITLQ: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure DTSFKCadastroDataChange(Sender: TObject; Field: TField);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGITPEDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure IMG_PADClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FKCadastroAfterScroll(DataSet: TDataSet);
    procedure SeparadosAfterScroll(DataSet: TDataSet);
    procedure DTSFKSeparadosDataChange(Sender: TObject; Field: TField);
    procedure RomaneiosAfterScroll(DataSet: TDataSet);
    procedure DTSFKRomaneiosDataChange(Sender: TObject; Field: TField);
    procedure FKCadastroCalcFields(DataSet: TDataSet);
    procedure CadastroAfterScroll(DataSet: TDataSet);
    procedure CadastroBeforeScroll(DataSet: TDataSet);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure DBGREL_PED_PDV_DIACustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure DBGREL_PED_PDV_MESCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure ACTMPDevolucaoExecute(Sender: TObject);
    procedure ACTMPAbatimentoExecute(Sender: TObject);
    procedure ACTMPPedidoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure FKCadastroAfterOpen(DataSet: TDataSet);
    procedure FKCadastroBeforeClose(DataSet: TDataSet);
    procedure ACTMPAppendExecute(Sender: TObject);
    procedure ACTMPEditExecute(Sender: TObject);
    procedure ACTMPDeleteExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTMPRomaneioExecute(Sender: TObject);
    procedure ACTMPFinanceiroAppendExecute(Sender: TObject);
    procedure ACTMPFinanceiroDeleteExecute(Sender: TObject);
    procedure ACTMPCAD_CLI_CRDExecute(Sender: TObject);
    procedure ACTMPCAD_CLI_EDIExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RECPedidos: TRECPedidos;
  end;

var
  frmctr_ped: Tfrmctr_ped;

implementation

uses uPrincipal, bPrincipal,
     pPesquisa_OLD, pctr_ped_bai, pven_ped,
     pProduto_Devolucao_Cancelamento, pcad_cli_edi, prelatorio_geral,
     pven_nfe, pven_rom;

{$R *.dfm}

procedure Tfrmctr_ped.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PDV_ADM'; { Eventos }

  { SET GRANT ROMANEIOS }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Romaneios';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  oUSER(REC_SHE_DEF);
  ACTMPRomaneio.Enabled   := REC_SHE_DEF.GAppend;

  { SET GRANT FINANCEIRO }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Financeiro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  oUSER(REC_SHE_DEF);
  ACTMPFinanceiroAppend.Enabled := (REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit) or (RECUsuarios.Grupo = 'FIN');
  ACTMPFinanceiroDelete.Enabled := (REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit) or (RECUsuarios.Grupo = 'FIN');

  { SET GRANT DEVOLUÇÕES }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Vendas';
  REC_SHE_DEF.GRegra      := 'Devoluções';
  oUSER(REC_SHE_DEF);
  ACTMPDevolucao.Enabled  := REC_SHE_DEF.GAppend;

  { SET GRANT ABATIMENTOS }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Vendas';
  REC_SHE_DEF.GRegra      := 'Abatimentos';
  oUSER(REC_SHE_DEF);
  ACTMPAbatimento.Enabled := REC_SHE_DEF.GAppend;

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Vendas';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  { CLIENTE }
  ACTMPCAD_CLI_EDI.Enabled := (REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit) or (RECUsuarios.Grupo = 'FIN');
  ACTMPCAD_CLI_CRD.Enabled := (REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit) or (RECUsuarios.Grupo = 'FIN');

  Cadastro.SQL.Text := oStrTran(Cadastro.SQL.Text,'VW_PED_VEN_CAB',oREPZero('VW_PED_VEN_CAB','_',RECParametros.EP_ID,3));
end;

procedure Tfrmctr_ped.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsultaDEPK.Field.FocusControl;
  DBGITPEDSKU.Field.FocusControl;
end;

procedure Tfrmctr_ped.FormDestroy(Sender: TObject);
begin
  inherited;

  Finalize(RECPedidos);
  FillChar(RECPedidos,SizeOf(RECPedidos),0);

  frmctr_ped := Nil;
end;

procedure Tfrmctr_ped.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { Cores
    Vermelho: $000000F0
    Mostarda: $0000F0F0
    Amarelho: $00C3F0F0
    Ciano   : $00C3F018
    Ciano   : $00C3C318
    Ciano   : $0075750E
    Verde   : $0000C318
    Azul    : $00C31818
    Azul    : $00C3750E


  }  

  if not ASelected then
  begin
    if ANode.Values[DBGConsultaD_DEST.Index] = 'CANCELADO' then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    if (ANode.Values[DBGConsultaFAPD.Index] = 0) or (ANode.Values[DBGConsultaCSCD.Index] = 1) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clWindowText;
    end else
    begin
      if ANode.Values[DBGConsultaC_IDPK.Index] <> Null then
      if ANode.Values[DBGConsultaC_IDPK.Index] mod 2 <> 0 then
         AColor := $00EAEBEC else
         AColor := clHighLightText;

      { Pedido
      if (AColumn = DBGConsultaDEPK) then
      begin
        AColor      := clGrayText;
        AFont.Color := clHighLightText;
      end; }

      if AColumn = DBGConsultaD_DEST then
      if Pos('BLQ',ANode.Values[DBGConsultaD_DEST.Index]) > 0 then
      begin
        AColor      := $000031F4; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
        AFont.Color := clHighLightText;
      end else

      if Pos('SEP',ANode.Values[DBGConsultaD_DEST.Index]) > 0 then
      begin
        AColor      := clWindowText;
        AFont.Color := clHighLightText;
      end else

      if Pos('FAT',ANode.Values[DBGConsultaD_DEST.Index]) > 0 then
      begin
        AColor      := $009FFF9F;
        AFont.Color := clWindowText;
      end else

      if Pos('PAG',ANode.Values[DBGConsultaD_DEST.Index]) > 0 then
      begin
        AColor      := $00C4FFC4;
        AFont.Color := clWindowText;
      end;

      { Cliente }
      if (AColumn = DBGConsultaDECD) and (ANode.Values[DBGConsultaCNCD.Index] = 1) then
      AFont.Style := [fsUnderline];

      { Entradas
      if (AColumn = DBGConsultaQTRL) or (AColumn = DBGConsultaTCDE) then
      begin
        AColor      := clHighLightText;
        AFont.Color := clWindowText;
      end; }

      { Expedição }
      if (AColumn = DBGConsultaDTSP) or (AColumn = DBGConsultaRLSP) or (AColumn = DBGConsultaVTSP) then
      if (ANode.Values[DBGConsultaPPSP.Index] >= 100) then
      begin
        AColor      := clWindowText;
        AFont.Color := clHighLightText;
      end;

      if (AColumn = DBGConsultaPPSP) then
      if (ANode.Values[DBGConsultaPPSP.Index] > 0) then
      begin
        AColor      := clWindowText;
        AFont.Color := clHighLightText;

        if ANode.Values[DBGConsultaPPSP.Index] < 100 then
        begin
          AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
          AFont.Color := clWindowText;
        end;
      end;

      if (AColumn = DBGConsultaPDSC) and (ANode.Values[DBGConsultaPDSC.Index] > 0) then
      begin
        AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
        AFont.Color := clWindowText;
      end;

      if (AColumn = DBGConsultaVDSC) and (ANode.Values[DBGConsultaVDSC.Index] > 0) then
      begin
        AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
        AFont.Color := clWindowText;
      end;

      if AColumn = DBGConsultaVTFA then
      begin
        AColor      := $009FFF9F;
        AFont.Color := clBlack;
      end;

      if AColumn = DBGConsultaVTAP then
      begin
        AColor      := $00FCF4ED;
        AFont.Color := $00725416;
      end;

     { if (AColumn = DBGConsultaVIPI) or (AColumn = DBGConsultaVST) then
      begin
        AColor      := $00AEFFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF $00AEFFFF;
        AFont.Color := clWindowText;
      end; }

      if (AColumn = DBGConsultaVIPI) and (ANode.Values[DBGConsultaVIPI.Index] > 0) then
      begin
        AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
        AFont.Color := clWindowText;
      end;

      if (AColumn = DBGConsultaVST) and (ANode.Values[DBGConsultaVST.Index] > 0) then
      begin
        AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
        AFont.Color := clWindowText;
      end;
    end;

    if AColumn = DBGConsultaRECO then
    if ANode.Values[DBGConsultaTPCO.Index] <> 1 then
    AFont.Style := [fsBold];

    if (AColumn = DBGConsultaDEPK) and (ANode.Values[DBGConsultaLOG_PRN_QTEV.Index] > 0) then
    AFont.Style := [fsUnderline];
  end;
end;

procedure Tfrmctr_ped.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaCTNR.Visible   := False;
  DBGConsultaCDNF.Visible   := False;
  DBGConsultaDTNF.Visible   := False;
  DBGConsultaD_DTSA.Visible := False;

  { Clientes }
  DBGConsultaGPCD.Visible := False; { Grupo Comercial }

  { Vendedores }
  DBGConsultaDECV.Visible      := False;
  DBGConsultaDECR.Visible      := False;
  DBGConsulta.Bands[2].Visible := False;

  { Descontos }
  DBGConsulta.Bands[04].Visible := False;
  DBGConsultaPDSC.Visible := False;

  DBGConsulta.Bands[05].Visible := False; { Expedição }
  DBGConsulta.Bands[07].Visible := False; { Impostos  }
end;

procedure Tfrmctr_ped.cadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if FKCadastro.State = dsInactive then FKCadastro.Open;
  if Separados.State  = dsInactive then Separados.Open;
  if Romaneios.State  = dsInactive then Romaneios.Open;

  if REL_PED_PDV_DIA.State = dsInactive then REL_PED_PDV_DIA.Open;
  if REL_PED_PDV_MES.State = dsInactive then REL_PED_PDV_MES.Open;
  if REL_PED_PDV_ANO.State = dsInactive then REL_PED_PDV_ANO.Open;
end;

procedure Tfrmctr_ped.CadastroAfterScroll(DataSet: TDataSet);
begin
  { Fiscal }
  if CadastroCDNF.AsInteger > 0 then
  begin
    DBGConsultaCDNF.Visible := True;
    DBGConsultaDTNF.Visible := True;
  end;

  { Clientes }
  if CadastroGPCD.AsString <> EmptyStr then
  DBGConsultaGPCD.Visible := True; { Grupo Comercial }

  { Vendedor }
  if RECUsuarios.ID <> CadastroIDCV.AsInteger then
  DBGConsultaDECV.Visible := True;

  { Representante }
  if (RECParametros.EP_NO <> CadastroDECR.AsString) and (CadastroDECR.AsString <> CadastroDECV.AsString) then
  DBGConsultaDECR.Visible := True;

  if (DBGConsultaDECV.Visible) or (DBGConsultaDECR.Visible) then
  DBGConsulta.Bands[2].Visible := True;

  { Descontos }
  if (CadastroPDSC.AsFloat > 0) or (CadastroVDSC.AsFloat > 0) then
  DBGConsulta.Bands[04].Visible := True;

  { Expedição }
  if CadastroVTSP.AsFloat > 0 then
  begin
    DBGConsulta.Bands[05].Visible := True;
    DBGITPED.FocusedAbsoluteIndex := DBGITPEDQTSP.Index;
  end else
  DBGITPED.FocusedAbsoluteIndex := DBGITPEDQTDE.Index;

  { Impostos }
  if CadastroVNF.AsFloat > 0 then
  DBGConsulta.Bands[07].Visible := True;
end;

procedure Tfrmctr_ped.CadastroBeforeScroll(DataSet: TDataSet);
begin
  TSFKRomaneios.TabVisible  := False;
  TSFKExpedicao.TabVisible  := False;

  PCFKPedidos.ActivePage := TSFKPedidos;

  DBGITPED.Bands[1].Visible := False;
  DBGITPED.Bands[2].Visible := False;
  DBGITPED.Bands[4].Visible := False;

  DBGITPEDVIPI.Visible := False;
end;

procedure Tfrmctr_ped.dtscadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  if REC_SHE_DEF.GEdit then
  ACTMPEdit.Enabled := (CadastroID.AsInteger > 0) and (CadastroREST.AsString <> 'C') and (CadastroCDBX.AsInteger = 0);

  if REC_SHE_DEF.GCancel then
  SICancela.Enabled := (CadastroID.AsInteger > 0) and (CadastroREST.AsString <> 'C') and (CadastroCDBX.AsInteger = 0) and (CadastroCDNF.AsInteger = 0);

  if REC_SHE_DEF.GControl then
  begin
    SIRomaneio.Enabled := (CadastroID.AsInteger > 0) and (CadastroREST.AsString <> 'C') and (CadastroCDBX.AsInteger = 0) and (CadastroCDNF.AsInteger   = 0) and (CadastroCDRO.AsInteger = 0) and (Pos(LeftStr(CadastroD_DEST.AsString,3),'BLQ') = 0);
    SIFinaliza.Enabled := (CadastroID.AsInteger > 0) and (CadastroREST.AsString <> 'C') and (CadastroCDBX.AsInteger = 0) and (((CadastroCDNF.AsInteger > 0) and (LeftStr(CadastroRECO.AsString,1) = 'B')) or (LeftStr(CadastroRECO.AsString,1) <> 'B'));
    SIEstorno.Enabled  := (CadastroID.AsInteger > 0) and (CadastroREST.AsString <> 'C') and (CadastroCDBX.AsInteger > 0);
  end;
  
  { Admin }
  if RECUsuarios.ID = 0 then
  SIRomaneio.Enabled := True;

  { Container }
  DBGConsultaCTNR.Visible := (CadastroCTNR.AsString > EmptyStr);

  { Saídas }
  if CadastroD_DTSA.AsDateTime > 0 then
  DBGConsultaD_DTSA.Visible := True;

  { Descontos }
  if CadastroPDSC.AsFloat > 0 then
  DBGConsultaPDSC.Visible := True;

  DBGConsulta.ApplyBestFit(DBGConsultaDEPK);
  DBGConsulta.ApplyBestFit(DBGConsultaQTRL); DBGConsultaQTRL.Width := DBGConsultaQTRL.Width + 08;
  DBGConsulta.ApplyBestFit(DBGConsultaRLSP); DBGConsultaRLSP.Width := DBGConsultaQTRL.Width;

  DBGConsulta.ApplyBestFit(DBGConsultaVDSC); DBGConsultaVDSC.Width := DBGConsultaVDSC.Width + 05;

  DBGConsulta.ApplyBestFit(DBGConsultaTCDE); DBGConsultaTCDE.Width := DBGConsultaTCDE.Width + 17;
  DBGConsulta.ApplyBestFit(DBGConsultaVTSP); DBGConsultaVTSP.Width := DBGConsultaTCDE.Width;
  DBGConsulta.ApplyBestFit(DBGConsultaVTFA); DBGConsultaVTFA.Width := DBGConsultaTCDE.Width;
  DBGConsulta.ApplyBestFit(DBGConsultaVNF ); DBGConsultaVNF.Width  := DBGConsultaTCDE.Width;
  DBGConsulta.ApplyBestFit(DBGConsultaVTAP); DBGConsultaVTAP.Width := DBGConsultaTCDE.Width;

  DBGConsulta.ApplyBestFit(DBGConsultaVIPI); DBGConsultaVIPI.Width := DBGConsultaVIPI.Width + 08;
  DBGConsulta.ApplyBestFit(DBGConsultaVST ); DBGConsultaVST.Width  := DBGConsultaVIPI.Width;

  if (PCFKPedidos.ActivePage <> TSFKPedidos) and (Separados.RecNo = 0) and (Romaneios.RecNo = 0) then
      PCFKPedidos.ActivePage := TSFKPedidos;

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,70))));

  PNLLOGOS.Visible  := (CadastroINFADOS.AsString  <> EmptyStr);
  PNLLOGPRN.Visible := (CadastroINFADPRN.AsString <> EmptyStr);

  if LeftStr(CadastroINFSTOS.AsString,3) = 'AGU' then
  begin
    DBINFSTOS.Color      := clGrayText;
    DBINFSTOS.Font.Color := $0080FFFF;
  end else

  if LeftStr(CadastroINFSTOS.AsString,3) = 'PRO' then
  begin
    DBINFSTOS.Color      := clGrayText;
    DBINFSTOS.Font.Color := $0080FFFF;
  end else

  if LeftStr(CadastroINFSTOS.AsString,3) = 'FIN' then
  begin
    DBINFSTOS.Color      := clGrayText;
    DBINFSTOS.Font.Color := $00C4FFC4;
  end;

  PNLINFADLOG.Height := IFThen(PNLLOGOS.Visible or PNLLOGPRN.Visible,25,0);
end;

procedure Tfrmctr_ped.FKCadastroAfterScroll(DataSet: TDataSet);
begin
  if FKCadastroQTSP.AsFloat > 0 then
     DBGITPED.Bands[2].Visible := True;

  if FKCadastroVIPI.AsFloat > 0 then
     DBGITPEDVIPI.Visible := True;

  { Expedição não precisa ver descontos, nem comissões }   
  if RECUsuarios.Grupo <> 'PCP' then
  begin
    if FKCadastroPDSC.AsFloat > 0 then
       DBGITPED.Bands[1].Visible := True;

    if FKCadastroPCOM.AsFloat > 0 then
       DBGITPED.Bands[4].Visible := True;
  end;
end;

procedure Tfrmctr_ped.DTSFKCadastroDataChange(Sender: TObject; Field: TField);
begin
  DBGITPED.Bands[2].Caption := IFThen((CadastroCDRO.AsInteger = 0) and (CadastroCDNF.AsInteger = 0) and (CadastroCDBX.AsInteger = 0),'Separando','Separado');

  { Tabela de Preços }
  LATAB_PRC_ACIMA_MIN.Caption := FormatFloat('R$ #,0.00',FKCadastroVPRC_PAD_INI.AsCurrency);
  LATAB_PRC_ACIMA_MAX.Caption := FormatFloat('R$ #,0.00',FKCadastroVPRC_PAD_FIM.AsCurrency);
  if (FKCadastroVPRC_COM.AsFloat <> FKCadastroVPRC_PAD_INI.AsCurrency) or (FKCadastroVPRC_COM.AsFloat <> FKCadastroVPRC_PAD_FIM.AsCurrency) or (FKCadastroVPRC_PAD_INI.AsCurrency <> FKCadastroVPRC_PAD_FIM.AsCurrency) then
  PNLTAB_PRC.Height := 22 else
  PNLTAB_PRC.Height := 0;

  { Conteúdo }
  if Pos('COM',FKCadastroUCON.AsString) > 0 then
  begin
    PNLTAB_PRC.Caption := 'Conteúdo '+FKCadastroUCON.AsString+'  ';
    PNLTAB_PRC.Height  := 22;
  end else
  PNLTAB_PRC.Caption := EmptyStr;

  { Fit Colunas }
  DBGITPED.ApplyBestFit(DBGITPEDSKU    );
  DBGITPED.ApplyBestFit(DBGITPEDDGCP   );
  DBGITPED.ApplyBestFit(DBGITPEDUCOM   );
  DBGITPED.ApplyBestFit(DBGITPEDDESP   );
  DBGITPED.ApplyBestFit(DBGITPEDCP_DEEP);
end;

procedure Tfrmctr_ped.SeparadosAfterScroll(DataSet: TDataSet);
begin
  if not Separados.Eof then TSFKExpedicao.TabVisible := True;
end;

procedure Tfrmctr_ped.DTSFKSeparadosDataChange(Sender: TObject;
  Field: TField);
begin
  DBGITSEPQTRL.Visible := (RECParametros.EST_QTRL);

  DBGITSEP.ApplyBestFit(DBGITSEPSKU );
  DBGITSEP.ApplyBestFit(DBGITSEPDGCP);
end;

procedure Tfrmctr_ped.RomaneiosAfterScroll(DataSet: TDataSet);
begin
  if not Romaneios.Eof then TSFKRomaneios.TabVisible := True;
end;

procedure Tfrmctr_ped.DTSFKRomaneiosDataChange(Sender: TObject;
  Field: TField);
begin
  DBGITROM.ApplyBestFit(DBGITROMPRO_CPRO );
  DBGITROM.ApplyBestFit(DBGITROMDGCP     );
  DBGITROM.ApplyBestFit(DBGITROMSEPARADOR);

  DBGITROMROM_QTRL.Visible  := (RECParametros.EST_QTRL);
end;

procedure Tfrmctr_ped.DBGITPEDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGITPEDTCDE.Index] = 0 then
    begin
      AColor      := clInfoBk;
      AFont.Color := clWindowText;
    end else
    begin
      if (ANode.Values[DBGITPEDQTSP.Index] > 0) and ((AColumn = DBGITPEDQTSP) or (AColumn = DBGITPEDRLSP) or (AColumn = DBGITPEDVTSP) or (AColumn = DBGITPEDDESP) or (AColumn = DBGITPEDDTSP)) then
      if (ANode.Values[DBGITPEDQTSP.Index] <> ANode.Values[DBGITPEDQTDE.Index]) then
      begin
        AColor      := clInfobk;   //$0080FFFF;
        AFont.Color := clBlack;
      end else
      begin
        AColor      := clBlack;   //$0080FFFF;
        AFont.Color := clWhite;
      end;

      if AColumn = DBGITPEDITEM then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
      end;

      if ((AColumn = DBGITPEDPIPI) or (AColumn = DBGITPEDVIPI)) and (ANode.Values[DBGITPEDPIPI.Index] > 0) then
      AFont.Style := [fsBold];

      if ((AColumn = DBGITPEDPCOM) or (AColumn = DBGITPEDVCOM)) and (ANode.Values[DBGITPEDPCOM.Index] > 0) then
      AFont.Style := [fsBold];
    END;
  end;

  if (ANode.Values[DBGITPEDTCDE.Index] > 0) then
  if (AColumn = DBGITPEDQTDE) or (AColumn = DBGITPEDQTRL) or (AColumn = DBGITPEDVPRC_COM) or (AColumn = DBGITPEDTCDE) then
  if (ANode.Values[DBGITPEDVPRC_COM.Index] < ANode.Values[DBGITPEDVPRC_PAD_INI.Index]) then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWhite;
    AColor      := $000024B3;
  end else
  if ANode.Values[DBGITPEDVPRC_COM.Index] >= ANode.Values[DBGITPEDVPRC_PAD_FIM.Index] then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWhite;
    AColor      := $00E1AD40
  end else
  if ANode.Values[DBGITPEDVPRC_COM.Index] > ANode.Values[DBGITPEDVPRC_PAD_INI.Index] then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
    AColor      := $00C4FFC4;
  end;

  if ANode.Selected then
  begin
    AColor      := $00750000;//$00400000;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure Tfrmctr_ped.IMG_PADClick(Sender: TObject);
begin
  uLoadZoom(IMG_PAD.Picture,[FKCadastroARTIGO.AsString,
                             FKCadastroSKU.AsString,
                             FKCadastroDGCP.AsString,
                             FKCadastroDECP.AsString,
                             EmptyStr,   {QEstoqueCST.AsString}
                             EmptyStr]); {QEstoqueSTCadastro.AsString}
end;

procedure Tfrmctr_ped.FKCadastroCalcFields(DataSet: TDataSet);
begin
  FKCadastroC_ID.Value := Cadastro.RecNo;
end;

procedure Tfrmctr_ped.DBGREL_PED_PDV_DIACustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Eficiência Separação }
    if (AColumn = DBGREL_PED_PDV_DIAPED_PLSP) then
    if (ANode.Values[DBGREL_PED_PDV_DIAPED_PLSP.Index] > 0) and (ANode.Values[DBGREL_PED_PDV_DIAPED_PLSP.Index] < 90) then
    begin
      AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
      AFont.Color := clWindowText;
    end;
  end;
end;

procedure Tfrmctr_ped.DBGREL_PED_PDV_MESCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Eficiência Separação }
    if (AColumn = DBGREL_PED_PDV_MESPED_PLSP) then
    if (ANode.Values[DBGREL_PED_PDV_MESPED_PLSP.Index] > 0) and (ANode.Values[DBGREL_PED_PDV_MESPED_PLSP.Index] < 90) then
    begin
      AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
      AFont.Color := clWindowText;
    end;
  end;
end;

procedure Tfrmctr_ped.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_IDPK.Value := Cadastro.RecNo;
end;


procedure Tfrmctr_ped.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IMG_PAD,True);

  DBILA_BMP1.Hint := CAD_PRO_IMGILA_INS1.AsString;
  DBILA_BMP2.Hint := CAD_PRO_IMGILA_INS2.AsString;
  DBILA_BMP3.Hint := CAD_PRO_IMGILA_INS3.AsString;
  DBILA_BMP4.Hint := CAD_PRO_IMGILA_INS4.AsString;
  DBILA_BMP5.Hint := CAD_PRO_IMGILA_INS5.AsString;
  DBILA_BMP6.Hint := CAD_PRO_IMGILA_INS6.AsString;
  DBILA_BMP7.Hint := CAD_PRO_IMGILA_INS7.AsString;
  DBILA_BMP8.Hint := CAD_PRO_IMGILA_INS8.AsString;

  BVILA_BMP1.Hint := DBILA_BMP1.Hint;
  BVILA_BMP2.Hint := DBILA_BMP2.Hint;
  BVILA_BMP3.Hint := DBILA_BMP3.Hint;
  BVILA_BMP4.Hint := DBILA_BMP4.Hint;
  BVILA_BMP5.Hint := DBILA_BMP5.Hint;
  BVILA_BMP6.Hint := DBILA_BMP6.Hint;
  BVILA_BMP7.Hint := DBILA_BMP7.Hint;
  BVILA_BMP8.Hint := DBILA_BMP8.Hint;
end;

procedure Tfrmctr_ped.FKCadastroAfterOpen(DataSet: TDataSet);
begin
  if CAD_PRO_IMG.State = dsInactive then
     CAD_PRO_IMG.Open;
end;

procedure Tfrmctr_ped.FKCadastroBeforeClose(DataSet: TDataSet);
begin
  if CAD_PRO_IMG.State = dsBrowse then
     CAD_PRO_IMG.Close;
end;

procedure Tfrmctr_ped.ACTMPPedidoExecute(Sender: TObject);
begin
  if Assigned(FrmVEN_PED) then FrmVEN_PED.BringToFront else
  begin
    TFrmVEN_PED._ExecForm(
  
    Self,       { Owner }
    FrmVEN_PED, { Form }
    False,      { Pesquisa }
    fsMDIChild, { Style }
  
    ACTMPPedido.Tag,         { Código Principal }
    ACTMPPedido.HelpKeyword, { Descrição Principal }
  
    CadastroIDEV.AsInteger,      { Código Evento }
    ACTMPPedido.HelpContext, { Tipo   Evento }
  
    '', { Tabela }
    ''  { Get }
    );
  end;
end;

procedure Tfrmctr_ped.ACTMPAppendExecute(Sender: TObject);
begin
  ACTMPPedido.HelpContext := 0; { Novo }
  ACTMPPedido.HelpKeyword := EmptyStr; { Pedido }
  ACTMPPedido.Tag := 0; { Cadastro }
  ACTMPPedido.Execute;
end;

procedure Tfrmctr_ped.ACTMPEditExecute(Sender: TObject);
begin
  ACTMPPedido.HelpContext := 1; { Edição }
  ACTMPPedido.HelpKeyword := CadastroDEPK.AsString; { Pedido }
  ACTMPPedido.Tag := CadastroIDPK.AsLargeInt; { Cadastro }
  ACTMPPedido.Execute;
end;

procedure Tfrmctr_ped.ACTMPDevolucaoExecute(Sender: TObject);
begin
  if (Cadastro.State <> dsBrowse) or (Cadastro.RecNo = 0) then
  Abort;

  ACTMPPedido.HelpContext := 2; { Devolução }
  ACTMPPedido.HelpKeyword := CadastroDEPK.AsString; { Pedido }
  ACTMPPedido.Tag := CadastroIDPK.AsLargeInt; { Cadastro }
  ACTMPPedido.Execute;
end;

procedure Tfrmctr_ped.ACTMPAbatimentoExecute(Sender: TObject);
begin
  if (Cadastro.State <> dsBrowse) or (Cadastro.RecNo = 0) then
  Abort;

  ACTMPPedido.HelpContext := 3; { Abatimento }
  ACTMPPedido.HelpKeyword := CadastroDEPK.AsString; { Pedido }
  ACTMPPedido.Tag := CadastroIDPK.AsLargeInt; { Cadastro }
  ACTMPPedido.Execute;
end;

procedure Tfrmctr_ped.ACTMPRomaneioExecute(Sender: TObject);
var
  ACDRO: Integer;
begin
  if oYesNo(handle,'Romanear Pedido '+CadastroDEPK.AsString+' ?') = mrNo then
  Abort;

  if CadastroId.AsInteger = 0 then
  oException(DBGConsulta,'Pedido não Selecionado !');

  if RECParametros.STCX <>  'Caixa Aberto' then
  oException(DBGConsulta,'Geração de Romaneio não Permitida !'+#13+
                            'Abertura de caixa não registrada.');

  if Pos(LeftStr(CadastroDEST.AsString,3),'CAN') > 0 then
  oException(DBGConsulta,'Geração de Romaneio não Permitida !'+#13+
                            'Pedido já Cancelado !');

  if CadastroBQST.AsInteger > 0 then
  oException(DBGConsulta,'Geração de Romaneio não Permitida !'+#13+
                            'Pedido possui bloqueio financeiro.');

  if CadastroCDBX.AsInteger > 0 then
  oException(DBGConsulta,'Geração de Romaneio não Permitida !'+#13+
                            'Pedido já Finalizado !');

  if CadastroCDNF.AsInteger > 0 then
  oException(DBGConsulta,'Geração de Romaneio não Permitida !'+#13+
                            'Nota Fiscal já Emitida !');

  if CadastroCDRO.AsInteger > 0 then
  oException(DBGConsulta,'Geração de Romaneio não Permitida !'+#13+
                            'Pedido já Romaneado !');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM ' + oREPZero('ROM_CAB','_',RECParametros.EP_ID,3)+' AS PK');
    SQL.Add('WHERE  PK.DERO = ''' + CadastroDEPK.AsString + '''');
    SQL.Add('AND    PK.IDCD = ''' + CadastroIDCD.AsString + '''');
    ExecQuery;

    if Current.Vars[0].AsInteger > 0 then
    oException(DBGConsulta,'Geração de Romaneio não Permitida !'+#13+
                           'Pedido já Romaneado !' +#13+#13+
                           'Favor cancelar romaneio para continuar.');

    if CadastroSEPD.AsInteger > 0 then
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) FROM CAD_PRO_SEP AS PK');
      SQL.Add('WHERE  PK.IDEP = ''' + RECParametros.EP_ID      + '''');
      SQL.Add('AND    PK.IDPK = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      if Current.Vars[0].AsInteger = 0 then
      oException(DBGConsulta,'Geração de Romaneio não Permitida !'+#13+
                             'Pedido sem itens separados.');
    end;
  end;

  frmven_rom := Tfrmven_rom.Create(Nil,CadastroId.AsInteger);

  frmven_rom.Pedidos.Prepare;
  frmven_rom.Pedidos.Open;

  frmven_rom.FKPedidos.Prepare;
  frmven_rom.FKPedidos.Open;

  if frmven_rom.PedidosSEPD.AsInteger = 1 then
     frmven_rom._Etiquetas else
     frmven_rom._Produtos;

  oRTransact(frmven_rom.TSEdicao);

  try
    frmven_rom.ShowModal;
  finally
    ACDRO := frmven_rom.RECPedido.IDFK;
    FreeAndNil(frmven_rom);
  end;

  if ACDRO > 0 then
  begin
    TFrmVEN_NFE._ExecForm(

    Nil,        { Owner    }
    FrmVEN_NFE, { Form     }
    False,      { Pesquisa }
    fsMDIChild, { Tipo     }

    ACDRO, { Código Principal }
    '',    { Descrição Principal }

    0, { Evento Principal }
    1, { Código Evento - 0: Triangular 1: Normal 2: Complementar 3: Ajustes 4:Devolução }
    2, { Tipo   Evento - 0: Copiado    1: Vazio  2: Romaneado }

    oREPZero('ROM_CAB','_',RECParametros.EP_ID,3), { Tabela }
    '' { Get }
    );
  end;
end;

procedure Tfrmctr_ped.ACTMPFinanceiroAppendExecute(Sender: TObject);
var
  CDBX: Variant;
begin
  if oYesNo(handle,'Finalizar Pedido '+CadastroDEPK.AsString+' ?') = mrNo then
  Abort;

  if CadastroId.AsInteger = 0 then
  oException(DBGConsulta,'Pedido não Selecionado !');

  if RECParametros.STCX <>  'Caixa Aberto' then
  oException(DBGConsulta,'Finalização não Permitida !'+#13+
                            'Abertura de caixa não registrada.');

  if Pos(LeftStr(CadastroDEST.AsString,3),'CAN') > 0 then
  oException(DBGConsulta,'Finalização não Permitida !'+#13+
                            'Pedido já Cancelado !');

  if CadastroBQST.AsInteger > 0 then
  oException(DBGConsulta,'Finalização não Permitida !'+#13+
                            'Pedido possui bloqueio financeiro.');

  if CadastroCDBX.AsInteger > 0 then
  oException(DBGConsulta,'Finalização não Permitida !'+#13+
                            'Pedido já Finalizado !');

  if (CadastroCDRO.AsInteger > 0) and (CadastroCDNF.AsInteger = 0) and (CadastroTPCO.AsInteger > 0) then
  begin
    oException(DBGConsulta,'Finalização não Permitida !'+#13+#13+
                           'Emissão de nota fiscal fiscal pendente.'+#13+
                           'Romaneio Nº '+CadastroCDRO.AsString+'.');
  end;

  if (CadastroCDNF.AsInteger = 0) and (Pos(LeftStr(CadastroSTCO.AsString,3),'BANBOLDUP') > 0) and (Pos(LeftStr(CadastroSTPD.AsString,3),'DEVABA') = 0) and (CadastroTPCO.AsInteger > 0) then
  begin
    oException(DBGConsulta,'Finalização não Permitida !'+#13+#13+
                           'Emissão de nota fiscal fiscal obrigatória para'+#13+
                           'pedidos com cobrança bancária.');
  end;

  if (CadastroSEPD.AsInteger > 0) and (CadastroTPCO.AsInteger > 0) and (CadastroRECO.AsString <> '***') and (CadastroCDNF.AsFloat = 0) then
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM CAD_PRO_SEP AS PK');
    SQL.Add('WHERE  PK.IDEP = ''' + RECParametros.EP_ID      + '''');
    SQL.Add('AND    PK.IDPK = ''' + CadastroIDPK.AsString + '''');
    ExecQuery;

    if Current.Vars[0].AsInteger > 0 then
    oException(DBGConsulta,'Finalização não Permitida !'+#13+
                           'Pedido em processo de separação.');
  end;

  if (CadastroFAPD.AsInteger = 0) and (CadastroCSCD.AsInteger = 0) then
  begin
    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
        ExecQuery;
        CDBX := Current.Vars[0].AsString;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET   ROM_CDBX = ''' + CDBX+''',');
        SQL.Add('      ROM_DBAI = ''' + FormatDateTime('mm/dd/yy'      ,IFThen(CadastroDTNF.AsDateTime > 0,CadastroDTNF.AsDateTime,CadastroDTPK.AsDateTime))      + ''',');
        SQL.Add('      DTBX     = ''' + FormatDateTime('mm/dd/yy hh:mm',IFThen(CadastroDTNF.AsDateTime > 0,CadastroDTNF.AsDateTime,CadastroDTPK.AsDateTime)+TIME) + '''');
        SQL.Add('WHERE IDPK     = ''' + CadastroIDPK.AsString + '''');
        ExecQuery;
      end;
      oCTransact(TEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(DBGConsulta,'Falha ao tentar finalizar pedido !'                     +#13+
                               'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                               'Error Code: '+E.Message+'.'+#13+
                                Caption+'.');
      end;
    end;
  end else

  if (LeftStr(CadastroRECO.AsString,1) = 'B') and (CadastroCDNF.AsInteger > 0) and (CadastroRECO.AsString <> 'C 0') then
  bBAI_FINANCEIRO(CadastroCDNF.AsInteger,0) else

  if ((Pos(LeftStr(CadastroSTPD.AsString,3),'DEVABA') > 0) or (CadastroCSCD.AsInteger = 1)) and (CadastroRECO.AsString <> 'C 0') then
  bBAI_FINANCEIRO(0,CadastroId.AsInteger) else

  try
    frmctr_ped_bai := Tfrmctr_ped_bai.Create(Nil,CadastroId.AsInteger);
    frmctr_ped_bai.ShowModal;
  finally
    FreeAndNil(frmctr_ped_bai);
  end;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_RES');
      SQL.Add('WHERE  EP_ID = ''' + RECParametros.EP_ID   + '''');
      SQL.Add('AND    IDPK  = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;
    end;
    oCTransact(TEdicao);
  except
    oCTransact(TEdicao,ltRollback);
  end;

  { ATUALIZA ESTOQUE }
  uCAD_PRO_EST_LAN_UPD(oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3),
                       RECParametros.EP_ID ,
                       CadastroIDPK.AsString,

                       'EP_ID',
                       'IDPK' ,
                       'CP_ID');

  oRefresh(Cadastro);
end;

procedure Tfrmctr_ped.ACTMPFinanceiroDeleteExecute(Sender: TObject);
begin
  if oYesNo(handle,'Cancelar Recebimento Financeiro ?' + #13+
                   'Pedido '+CadastroDEPK.AsString) = mrNo then
  Abort;

  if CadastroId.AsInteger = 0 then
  oException(DBGConsulta,'Pedido não Selecionado !');

  if Pos(LeftStr(CadastroDEST.AsString,3),'CAN') > 0 then
  oException(DBGConsulta,'Cancelamento não Permitido !'+#13+
                         'Pedido já Cancelado !');

  if CadastroCDBX.AsInteger = 0 then
  oException(DBGConsulta,'Cancelamento não Permitido !'+#13+
                         'Pedido não Finalizado !');

  try
    Cadastro.DisableControls;

    FKCadastro.DisableControls;
    FKCadastro.First;

    Separados.DisableControls;
    Romaneios.DisableControls;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FIRST 1 TITULO,RECO,DTVC,VTPG,DTPG,DEST,API_ST,IIF(API_DTED > API_DTCA,API_DTED,API_DTCA) AS API_DT,API_CA,DTBC,CANCELA_NF');
      SQL.Add('FROM (');
      SQL.Add('SELECT   B.TITULO,B.RECO,B.FIN_DVEN AS DTVC,B.FIN_VPAG AS VTPG,B.FIN_DPAG AS DTPG,B.DEST,B.API_ST,B.API_DTCA,B.API_DTED,B.API_CA,B.FIN_DTBC AS DTBC,B.CANCELA_NF FROM ' + SLPrincipal.Values['fin_rec_ban_bai'] + ' AS B');
      SQL.Add('WHERE    B.IDEP      = '''+CadastroIDEP.AsString    +'''');
      SQL.Add('AND      B.DOCUMENTO = '''+IFThen(CadastroCDNF.AsInteger > 0,CadastroCDNF.AsString,CadastroDEPK.AsString)+'''');
      SQL.Add('AND      B.IDCD      = '''+CadastroIDCD.AsString+'''');
      SQL.Add('AND     (B.FIN_VPAG > 0 OR B.DEST <> ''PENDENTE'' AND B.DEST <> ''PRORROGADO'' OR POSITION(LEFT(B.API_ST,3) IN ''LIQREGSALEMI'') > 0)');
      SQL.Add('UNION');
      SQL.Add('SELECT   C.TITULO,C.RECO,C.FIN_DVEN AS DTVC,C.FIN_VPAG AS VTPG,C.FIN_DPAG AS DTPG,C.DEST,C.API_ST,C.API_DTCA,C.API_DTED,C.API_CA,C.FIN_DTBC AS DTBC,C.CANCELA_NF FROM ' + SLPrincipal.Values['fin_rec_car_bai'] + ' AS C');
      SQL.Add('WHERE    C.IDEP      = '''+CadastroIDEP.AsString    +'''');
      SQL.Add('AND      C.DOCUMENTO = '''+IFThen(CadastroCDNF.AsInteger > 0,CadastroCDNF.AsString,CadastroDEPK.AsString)+'''');
      SQL.Add('AND      C.IDCD      = '''+CadastroIDCD.AsString+'''');
      SQL.Add('AND     (C.FIN_VPAG > 0 OR C.DEST <> ''PENDENTE'' AND C.DEST <> ''PRORROGADO'' OR POSITION(LEFT(C.API_ST,3) IN ''LIQREGSALEMI'') > 0)');
      SQL.Add('ORDER BY 1 DESC');
      SQL.Add(')');
      ExecQuery;

      if Current.ByName('TITULO').AsString <> EmptyStr then
      if Pos(LeftStr(Current.ByName('DEST').AsString,3),'BAICAN') = 0 then
         oException(DBGConsulta,'CANCELAMENTO NEGADO !'+#13+
                                'Cliente com título(s) ' + IFThen(Current.ByName('VTPG').AsFloat > 0,'pagos','abertos') + ' em contas a receber !'+#13+#13+
                                'Título Nº '      + Current.ByName('TITULO').AsString + ' [ '+Current.ByName('RECO').AsString+' ] de '  + FormatDateTime('dd/mm/yy',Current.ByName('DTVC').AsDateTime) + #13  +
                                'Recebimento(s)  '+ Current.ByName('DEST').AsString   + IFThen(Current.ByName('VTPG').AsFloat > 0,FormatFloat(' R$ ,##,0.00',Current.ByName('VTPG').AsFloat)+ ' em ' +FormatDateTime('dd/mm/yy',Current.ByName('DTPG').AsDateTime),'') + #13+#13+
                                'Boleto '         + IFThen(Current.ByName('API_ST').AsString <> EmptyStr,Current.ByName('API_ST').AsString + '! ' + FormatDateTime('dd/mm/yy hh:mm',Current.ByName('API_DT').AsDateTime) + '.','NÃO REGISTRADO!') +#13+
                                'Carteira Nº '    + IFThen(Length(Current.ByName('API_CA').AsString) > 1,Current.ByName('API_CA').AsString + '. ' + IFThen(Current.ByName('DTBC').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTBC').AsDateTime) + '.',''),'NÃO ENVIADO!')+#13+#13+
                                'Favor entrar em contato com o departamento financeiro.' );
    end;

    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE ' + SLPrincipal.Values['fin_rec_ban_bai'] );
        SQL.Add('SET    FIN_STFI = ''CANCELADO''');
        SQL.Add('WHERE  CDBX = '''+IntToStr(CadastroCDBX.AsInteger)+'''');
        SQL.Add('AND    STPD = '''+CadastroSTPD.AsString+'''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE ' + SLPrincipal.Values['fin_rec_car_bai'] );
        SQL.Add('SET    FIN_STFI = ''CANCELADO''');
        SQL.Add('WHERE  CDBX = '''+IntToStr(CadastroCDBX.AsInteger)+'''');
        SQL.Add('AND    STPD = '''+CadastroSTPD.AsString+'''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_ban_bai'] );
        SQL.Add('WHERE  CDBX = '''+IntToStr(CadastroCDBX.AsInteger)+'''');
        SQL.Add('AND    DEST <> ''BAIXADO''');
        SQL.Add('AND    DEST <> ''CANCELADO''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_bai'] );
        SQL.Add('WHERE  CDBX = '''+IntToStr(CadastroCDBX.AsInteger)+'''');
        SQL.Add('AND    DEST <> ''BAIXADO''');
        SQL.Add('AND    DEST <> ''CANCELADO''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET    ROM_CDBX = NULL');
        SQL.Add('WHERE  CDBX     = '''+IntToStr(CadastroCDBX.AsInteger)+'''');
        ExecQuery;
      end;

      oCTransact(TEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar cancelar baixa financeira !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    Cadastro.EnableControls;
    FKCadastro.EnableControls;

    Separados.EnableControls;
    Romaneios.EnableControls;
  end;

  oAviso(Self.Handle,'Cancelamento Concluído com Sucesso !');
  oRefresh(Cadastro);
end;

procedure Tfrmctr_ped.ACTMPCAD_CLI_EDIExecute(Sender: TObject);
begin
  if CadastroId.AsInteger = 0 then
     oException(DBGConsulta,'Cliente não Selecionado !');

  frmcad_cli_edi := TFrmcad_cli_edi.Create(Nil,CadastroIDCD.AsInteger);
  try frmcad_cli_edi.ShowModal;
  finally
    FreeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmctr_ped.ACTMPCAD_CLI_CRDExecute(Sender: TObject);
begin
  if CadastroId.AsInteger = 0 then
  oException(DBGConsulta,'Cliente não Selecionado !');

  uPSQSCORE(self,CadastroIDCD.AsString,EmptyStr);
end;

procedure Tfrmctr_ped.ACTMPDeleteExecute(Sender: TObject);
begin
  if oYesNo(handle,'Cancelar Pedido '+CadastroDEPK.AsString+' ?') = mrNo then
  Abort;

  if CadastroId.AsInteger = 0 then
     oException(DBGConsulta,'Pedido não Selecionado !');

  if Pos(LeftStr(CadastroDEST.AsString,3),'CAN') > 0 then
     oException(DBGConsulta,'Cancelamento não Permitido !'+#13+
                            'Pedido já Cancelado !');

  if CadastroCDBX.AsInteger > 0 then
     oException(DBGConsulta,'Cancelamento não Permitido !'+#13+
                            'Pedido Finalizado !');

  if CadastroCDNF.AsInteger > 0 then
     oException(DBGConsulta,'Cancelamento não Permitido !'+#13+
                            'Pedido possui nota fiscal emitida.');

  if CadastroCDRO.AsInteger > 0 then
     oException(DBGConsulta,'Cancelamento não Permitido !'+#13+
                            'Pedido Romaneado.');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM CAD_PRO_SEP AS PK');
    SQL.Add('WHERE  PK.IDEP = ''' + RECParametros.EP_ID      + '''');
    SQL.Add('AND    PK.IDPK = ''' + CadastroIDPK.AsString + '''');
    ExecQuery;

    if Current.Vars[0].AsInteger > 0 then
    oException(DBGConsulta,'Finalização não Permitida !'+#13+
                           'Pedido em processo de separação.');

    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM CAD_PRO_EST AS PK');
    SQL.Add('WHERE  PK.IDEP = ''' + RECParametros.EP_ID      + '''');
    SQL.Add('AND    PK.IDPK = ''' + CadastroIDPK.AsString + '''');
    ExecQuery;

    if Current.Vars[0].AsInteger > 0 then
    oException(DBGConsulta,'Finalização não Permitida !'+#13+
                           'Pedido possui etiquetas separadas.');
  end;

  try
    Cadastro.DisableControls;

    FKCadastro.DisableControls;
    FKCadastro.First;

    Separados.DisableControls;
    Romaneios.DisableControls;
    try
      TFrmProduto_Devolucao_Cancelamento._ExecForm(Nil,FrmProduto_Devolucao_Cancelamento,false,fsNormal)
    finally
      if not FrmProduto_Devolucao_Cancelamento.Editado then
      Abort;

      if oEmpty(FrmProduto_Devolucao_Cancelamento.IEMotivo.Text) then
      oException(DBGConsulta,'Motivo de cancelamento Incorreto ou não Informado !');

      try
        oOTransact(TEdicao);

        with SQLEdicao do
        begin
          { Cancelamento do estoque feito via trigger }
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
          SQL.Add('SET   ROM_STFI = ''CANCELADO'',');
          SQL.Add('      ROM_OBSE = '''+FrmProduto_Devolucao_Cancelamento.IEMotivo.Text   + #13+#13+
                                        FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Text + '''');
          SQL.Add('WHERE IDPK = ''' + CadastroIDPK.AsString + '''');
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM CAD_PRO_RES');
          SQL.Add('WHERE  EP_ID = ''' + RECParametros.EP_ID   + '''');
          SQL.Add('AND    IDPK  = ''' + CadastroIDPK.AsString + '''');
          ExecQuery;
        end;

        try
          FKCadastro.DisableControls;
          FKCadastro.First;

          while not FKCadastro.Eof do
          begin
            SPEdicao.StoredProcName := 'SP_PED_VEN_CAN';
            SPEdicao.Prepare;

            SPEdicao.ParamByName('AIDEP').Value       := RECParametros.EP_ID;
            SPEdicao.ParamByName('AIDCA').Value       := RECUsuarios.Id;
            SPEdicao.ParamByName('AIDED').Value       := RECUsuarios.Id;
            SPEdicao.ParamByName('AIDPK').Value       := CadastroId.AsInteger;
            SPEdicao.ParamByName('ACDPK').Value       := CadastroDEPK.AsString;
            SPEdicao.ParamByName('ADTPK').Value       := RECParametros.SHE_DATA;
            SPEdicao.ParamByName('ADTFK').Value       := CadastroDTPK.AsDateTime;
            SPEdicao.ParamByName('AIDCL').Value       := CadastroIDCD.AsInteger;
            SPEdicao.ParamByName('AIDCV').Value       := CadastroIDCV.AsInteger;
            SPEdicao.ParamByName('AIDCR').Value       := CadastroIDCR.AsInteger;
            SPEdicao.ParamByName('AIDCP').Value       := FKCadastroIDCP.AsInteger;
            SPEdicao.ParamByName('AARTIGO').Value     := FKCadastroARTIGO.AsString;
            SPEdicao.ParamByName('APRODUTO').Value    := FKCadastroSKU.AsString;
            SPEdicao.ParamByName('ADESCRICAO').Value  := FKCadastroDECP.AsString;
            SPEdicao.ParamByName('ACOR').Value        := LeftStr(FKCadastroDGCP.AsString,30);
            SPEdicao.ParamByName('AUCOM').Value       := FKCadastroUCOM.AsString;
            SPEdicao.ParamByName('AQUANTIDADE').Value := FKCadastroQTDE.AsFloat;
            SPEdicao.ParamByName('AROLO').Value       := FKCadastroQTRL.AsInteger;
            SPEdicao.ParamByName('AVUPV').Value       := FKCadastroVPRC_COM.AsFloat;
            SPEdicao.ParamByName('AMOTIVO').Value     := FrmProduto_Devolucao_Cancelamento.IEMotivo.Text;
            SPEdicao.ParamByName('AINFADCAD').Value   := FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Text;

            SPEdicao.ExecProc;
            SPEdicao.UnPrepare;

            uSP_CAD_PRO_EST_LAN(SPEdicao,RECParametros.EP_ID,FKCadastroIDCP.AsInteger);
            FKCadastro.Next;
          end;

        finally
          FKCadastro.EnableControls;
        end;
          
        oCTransact(TEdicao);
        oAviso(Self.Handle,'Pedido Cancelado com Sucesso !');
        oRefresh(Cadastro);
      except
        on E: Exception do
        begin
          oCTransact(TEdicao,ltRollback);
          oException(Nil,'Falha ao tentar cancelar pedido !'+#13+
                         'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                         'Erro: '+E.Message);
        end;
      end;
    end;
  finally
    Cadastro.EnableControls;
    FKCadastro.EnableControls;

    Separados.EnableControls;
    Romaneios.EnableControls;
  end;
end;

procedure Tfrmctr_ped.ACTRelatoriosExecute(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(Nil);
  try
    frmrelatorio_geral.CDPD                 := cadastroID.AsString;
    frmrelatorio_geral.CDRO                 := cadastroCDRO.AsString;
    frmrelatorio_geral.CDBX                 := cadastroCDBX.AsString;
    frmrelatorio_geral.CDNF                 := cadastroCDNF.AsString;
    frmrelatorio_geral.tsVEN_PED.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsVEN_PED;
    frmrelatorio_geral.cbVEN_PED_TREL.Text  := 'PEDIDO DE VENDA';
    frmrelatorio_geral.ShowModal;
  finally
    RECParametros.REL_PAD := frmrelatorio_geral.cbVEN_PED_TREL.Text;
    freeAndNil(frmrelatorio_geral);
  end;

  oRefresh(Cadastro);
end;

procedure Tfrmctr_ped.ACTConsultaExecute(Sender: TObject);
begin
  inherited;

  with REL_PED_PDV_DIA do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.* FROM REL_PED_PDV_DIA AS PK');
    SQL.Add('WHERE    PK.EP_ID = ''' + RECParametros.EP_ID + '''');
    SQL.Add('AND      PK.PED_DIA BETWEEN ''' + FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA_MES_PK) + ''' AND ''' + FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA_MES_FK) + '''');
    SQL.Add('ORDER BY PK.PED_DIA DESC');
    Prepare;
  end;

  with REL_PED_PDV_MES do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.* FROM REL_PED_PDV_MES AS PK');
    SQL.Add('WHERE    PK.EP_ID = ''' + RECParametros.EP_ID + '''');
    SQL.Add('AND      PK.PED_ANO_MES LIKE Extract(Year FROM CURRENT_DATE) || ''%''');
    SQL.Add('ORDER BY PK.PED_ANO_MES DESC');
    Prepare;
  end;  

  with REL_PED_PDV_ANO do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.* FROM REL_PED_PDV_ANO AS PK');
    SQL.Add('WHERE    PK.EP_ID = ''' + RECParametros.EP_ID + '''');
    SQL.Add('AND      PK.PED_ANO >= Extract(Year FROM CURRENT_DATE) - 5');
    SQL.Add('ORDER BY PK.PED_ANO DESC');
    Prepare;
  end;  

  with FKCadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.ID    ,PK.IDEP,');
    SQL.Add('         PK.IDPK  ,PK.ITEM,');
    SQL.Add('         PK.IDCP  ,PK.CP_IDEP,PK.CP_DEEP,');
    SQL.Add('         PK.ARTIGO,PK.SKU ,PK.CEAN,');
    SQL.Add('         PK.DECP  ,PK.DGCP,');
    SQL.Add('         PK.UCOM,PK.UCON,PK.QTDE,PK.QTRL,PK.UN_QTDE,');
    SQL.Add('         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
    SQL.Add('         PK.VPRC_PAD    ,PK.PDSC,PK.VDSC,PK.VPRC_COM,');
    SQL.Add('         PK.NCM   ,PK.PIPI,PK.VIPI,');
    SQL.Add('         PK.PCOM  ,PK.VCOM,');
    SQL.Add('         PK.TSDE  ,PK.TCDE,PK.VTSP,');
    SQL.Add('         PK.PSBR  ,PK.PSLQ,');
    SQL.Add('         PK.IDSP  ,PK.CDSP,PK.DESP,PK.QTSP,PK.UN_QTSP,PK.RLSP,PK.DTSP,');
    SQL.Add('         PK.IMG_ID,PK.IMG_PAD');

    SQL.Add('FROM   '+oREPZero('VW_PED_VEN_ITE','_',RECParametros.EP_ID,3)+' AS PK');

    SQL.Add('WHERE    PK.IDEP = :IDEP');
    SQL.Add('AND      PK.IDPK = :IDPK');
    SQL.Add('ORDER BY PK.ITEM');
    Prepare;
  end;

  with Romaneios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FK.ID,PK.ROM_CDEP AS IDEP,CP.PRO_CPRO,');
    SQL.Add('         FK.DGCP,FK.UCOM,FK.UCON,');
    SQL.Add('         FK.ROM_CDET,FK.ROM_QTDE,FK.ROM_QTRL,FK.ROM_UNIT*PK.ROM_CONC AS ROM_UNIT,CAST(FK.ROM_QTDE*(FK.ROM_UNIT*PK.ROM_CONC) AS NUMERIC(15,2)) AS ROM_TOTA,');
    SQL.Add('         FK.ROM_DSEP||''  ''||CAST(LPAD(EXTRACT(DAY  FROM FK.ROM_DTSP),2,0)||''/''||LPAD(EXTRACT(MONTH  FROM FK.ROM_DTSP),2,0)||''/''|| RIGHT(LPAD(EXTRACT(YEAR FROM FK.ROM_DTSP),4,0),2)||'' ''||');
    SQL.Add('                                   LPAD(EXTRACT(HOUR FROM FK.ROM_DTSP),2,0)||'':''||LPAD(EXTRACT(MINUTE FROM FK.ROM_DTSP),2,0) AS VARCHAR(14)) AS SEPARADOR');

    SQL.Add('FROM '  +SLPrincipal.Values['rom_cab']+' AS PK ');
    SQL.Add('JOIN '  +SLPrincipal.Values['rom_ite']+' AS FK ON (FK.CDRO = PK.CDRO)');
    SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = FK.IDCP)');

    SQL.Add('WHERE    PK.IDEP = :IDEP');
    SQL.Add('AND      PK.CDRO = :CDRO');
    SQL.Add('ORDER BY FK.ITEM');
    Prepare;
  end;

  Separados.ParamByName('IDEP').Value := RECParametros.EP_ID;
  Separados.Prepare;
end;

procedure Tfrmctr_ped.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;

  if REC_SHE_DEF.FInitialize then
  begin
    Cadastro.SQL.Add('SELECT DISTINCT PK.* FROM CTE_PSQ AS PK');

    if RECUsuarios.Grupo = 'VEN' then
    Cadastro.SQL.Add('WHERE    PK.IDCV = ''' + RECUsuarios.ID + '''');
    Cadastro.SQL.Add('ORDER BY PK.DTCA DESC');
  end else

  try
    FrmPesquisa_OLD := TFrmPesquisa_OLD.Create(Nil);
    FrmPesquisa_OLD.Tag := 7;
    FrmPesquisa_OLD.ShowModal;
  finally
    if   FrmPesquisa_OLD.Editado then
    with Cadastro do
    begin
      oCTransact(TConsulta);
      oOTransact(TConsulta);

      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.DEEP,');
      SQL.Add('       PK.IDEV,PK.IDCA,PK.DTCA,PK.HTPK,');
      SQL.Add('       PK.IDST,PK.DTST,PK.CDST,PK.REST,PK.DEST  ,PK.D_DEST  ,PK.INFADST,');
      SQL.Add('       PK.IDPK,PK.DEPK,PK.DTPK,PK.CDCX,PK.CDPP  ,PK.API_B2B ,PK.CTNR   ,');

      SQL.Add('       PK.IDOS,PK.CDOS,PK.DTOS,PK.D_DTOS,PK.D_HTOS,PK.D_HNOS,');
      SQL.Add('       PK.INFADOS,PK.INFSTOS,');
      SQL.Add('       PK.IDSP,PK.DESP,PK.DTSP,PK.D_DTSP,PK.DTSP_INI,PK.DTSP_FIM,PK.D_HTSP,PK.D_HNSP,');

      SQL.Add('       PK.CDRO,PK.DTRO,D_DTRO ,');
      SQL.Add('       NULLIF(PK.CDNF,0) AS CDNF,PK.DTNF,PK.HTNF,PK.D_DTNF,PK.CFOP,');
      SQL.Add('       PK.CDDV,PK.DTDV,PK.DEDV,');
      SQL.Add('       PK.IDSA,PK.DTSA,PK.D_DTSA,PK.D_HTSA,PK.D_HNSA,');
      SQL.Add('       PK.IDCD,PK.DECD,PK.RZCD,PK.PJCD,PK.GPCD,PK.CNCD,PK.CSCD,PK.FIN_VCRD,PK.UFCD,PK.RSCD,');
      SQL.Add('       PK.IDCV,PK.DECV,PK.RSCV,');
      SQL.Add('       PK.IDCR,PK.DECR,PK.UFCR,PK.RSCR,');
      SQL.Add('       PK.IDCT,PK.DECT,PK.LOC_NO_CT   ,PK.UFCT,PK.RSCT,');
      SQL.Add('       PK.ITEM,PK.QTDE,PK.D_QTDE,PK.QTRL,PK.D_QTRL,');
      SQL.Add('       PK.ITSP,PK.QTSP,PK.D_QTSP,PK.RLSP,PK.D_RLSP,');
      SQL.Add('       PK.IDSC,PK.TDSC,PK.PDSC  ,PK.VDSC  ,');
      SQL.Add('       PK.TSDE,PK.D_TSDE,PK.TCDE,PK.D_TCDE,');
      SQL.Add('       PK.VTSP,PK.D_VTSP,PK.PPSP,PK.D_PPSP,');
      SQL.Add('       PK.VNF ,PK.VIPI,PK.VST,');
      SQL.Add('       PK.VTFA,PK.VTAP,');
      SQL.Add('       PK.PCOM,PK.VCOM,');
      SQL.Add('       PK.MFRT,PK.D_MFRT,PK.VFRT  ,PK.PSBR,PK.PSLQ,');
      SQL.Add('       PK.CDPD,PK.STPD  ,PK.SVPD  ,PK.ABPD,PK.DVPD,PK.FAPD,PK.BQPD,');
      SQL.Add('       PK.BEPD,PK.QEPD  ,PK.SEPD  ,PK.DEPD,');
      SQL.Add('       PK.CDCO,PK.STCO  ,PK.D_STCO,PK.TPCO,PK.RECO,');
      SQL.Add('       PK.CDPG,PK.DEPG,');
      SQL.Add('       PK.APST,PK.FBST,PK.BXST  ,PK.LQST,PK.BQST,');
      SQL.Add('       PK.CDBX,PK.DTBX,PK.D_DTBX,');
      SQL.Add('       PK.INFADCAD,PK.IP,PK.HOST,');
      SQL.Add('       PK.LOG_PRN_CDEV,PK.LOG_PRN_QTEV,PK.INFADPRN');

      SQL.Add('FROM ' + oREPZero('VW_PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PK');

      { PESQUISA DATA }
      if (FrmPesquisa_OLD.dxDT1.Date > 0) and (FrmPesquisa_OLD.dxDT2.Date > 0) and (FrmPesquisa_OLD.dxDT1.Date <= FrmPesquisa_OLD.dxDT2.Date) then
      begin
        SQL.Add('WHERE ' + FrmPesquisa_OLD.cData + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',FrmPesquisa_OLD.dxDT1.Date) + ''' AND ''' + FormatDateTime('mm/dd/yy',FrmPesquisa_OLD.dxDT2.Date) + '''');
        SBRodape.Panels[1].Text := 'Pesquisado Data ' + FrmPesquisa_OLD.cbData.Text + ' ' + FormatDateTime('mm/dd/yy',FrmPesquisa_OLD.dxDT1.Date) + ' até ' + FormatDateTime('mm/dd/yy',FrmPesquisa_OLD.dxDT2.Date);
      end;

      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS (');

      { RECURSIVE SQL }
      SQL.Add('SELECT PK.* FROM PK');

      { PESQUISA TEXTO PRINCIPAL }
      if (FrmPesquisa_OLD.EDTXT.Text <> EmptyStr) and (LeftStr(FrmPesquisa_OLD.CField,2) = 'PK') then
      SQL.Add('WHERE ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');
      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT DISTINCT PK.* FROM CTE_PSQ AS PK');

      { SUB QUERY }
      if (FrmPesquisa_OLD.EDTXT.Text <> EmptyStr) and (LeftStr(FrmPesquisa_OLD.CField,2) <> 'PK') then
      begin
        { INÍCIO }
        SQL.Add('WHERE EXISTS');
        SQL.Add('(');

        { PEDIDOS }
        if Pos('PV_PK.',FrmPesquisa_OLD.CField) > 0 then
        begin
          FrmPesquisa_OLD.CField     := oStrTran(FrmPesquisa_OLD.CField,'PV_PK.','FK.');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS FK');
        end;

        { FINANCEIRO BANCÁRIO }
        if Pos('FN_PK.',FrmPesquisa_OLD.CField) > 0 then
        begin
          FrmPesquisa_OLD.CField     := oStrTran(FrmPesquisa_OLD.CField,'FN_PK.','FK.');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('VW_PSQ_FIN_REC_BAN','_',RECParametros.EP_ID,3) + ' AS FK');
        end;

        { PESQUISA TEXTO SECUNDÁRIO }
        SQL.Add('WHERE FK.CD_ID = PK.CD_ID');
        SQL.Add('AND ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');
        SQL.Add(')'); { FIM }

        { FINANCEIRO CARTEIRA }
        if Pos('FIN_REC_BAN',Cadastro.SQL.Text) > 0 then
        begin
          SQL.Add('OR EXISTS');
          SQL.Add('(');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('VW_PSQ_FIN_REC_CAR','_',RECParametros.EP_ID,3) + ' AS FK');

          { PESQUISA TEXTO SECUNDÁRIO }
          SQL.Add('WHERE FK.CD_ID = PK.CD_ID');
          SQL.Add('AND ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');
          SQL.Add(')'); { FIM }
        end;
      end;

      SQL.Add('ORDER BY PK.ID DESC'); //+ IFThen(LeftStr(FrmPesquisa_OLD.CField,2) = 'PK',FrmPesquisa_OLD.CField,'PK.CD_NO'));
    end;

    if FrmPesquisa_OLD.EDTXT.Text <> EmptyStr then
    begin
      APSQ_PED_PDV := FrmPesquisa_OLD.cbCAMPO.Text;
      SBRodape.Panels[1].Text := SBRodape.Panels[1].Text + ' Pesquisado ' + FrmPesquisa_OLD.cbCampo.Text + ' ' + FrmPesquisa_OLD.EDTXT.Text;
    end;

    FreeAndNil(FrmPesquisa_OLD);
  end;

  if Cadastro.State = dsInactive then
  begin
    Cadastro.Prepare;
    Cadastro.Open;
  end;

  DBGConsulta.Filter.Clear;
  DBGITPED.Filter.Clear;
  DBGITSEP.Filter.Clear;
  DBGITROM.Filter.Clear;
  
  DBGConsultaDEPK.Field.FocusControl;
  DBGITPEDSKU.Field.FocusControl;

  if (Showing) then
  if (PNLDBG.Enabled) and (PNLDBG.Visible) then
  if (GBDET.Enabled ) and (GBDET.Visible ) then
  if (DBGConsulta.Enabled) and (DBGConsulta.Visible) then
  if (Cadastro.RecNo > 0) then
  oSetFocus(DBGConsulta);
end;

end.
