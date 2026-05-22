unit pEstoque;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefault, dxExEdtr, cxGraphics, DB, IBQuery, dxBar, ImgList,
  ActnList, dxDockControl, dxBarExtItems, IBEvents, IBCustomDataSet,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxEditor, dxEdLib, dxDBELib,
  dxDBTLCl, dxGrClms,
  math, StrUtils, DBCtrls;

type
  TFrmEstoque = class(TFrmDefault)
    FKConsulta: TIBQuery;
    DTSFKConsulta: TDataSource;
    DSFKConsulta: TdxDockSite;
    LDSFKConsulta: TdxLayoutDockSite;
    DPFKConsulta: TdxDockPanel;
    DBGFKConsulta: TdxDBGrid;
    DBGFKConsultaITEM: TdxDBGridMaskColumn;
    DBGFKConsultaCDET: TdxDBGridColumn;
    DBGFKConsultaQTRL: TdxDBGridMaskColumn;
    DBGFKConsultaPSBR: TdxDBGridMaskColumn;
    DBGFKConsultaPSLQ: TdxDBGridMaskColumn;
    DBGFKConsultaSKU: TdxDBGridMaskColumn;
    DBGFKConsultaDGCP: TdxDBGridColumn;
    DBGFKConsultaCP_DEEP: TdxDBGridMaskColumn;
    DBGFKConsultaDETP: TdxDBGridMaskColumn;
    DBGFKConsultaDEDF: TdxDBGridColumn;
    DBGFKConsultaCDSP: TdxDBGridColumn;
    DBGFKConsultaLGSP: TdxDBGridMaskColumn;
    DBGFKConsultaDTSP: TdxDBGridDateColumn;
    DBGFKConsultaNCM: TdxDBGridMaskColumn;
    DBGFKConsultaPIPI: TdxDBGridMaskColumn;
    DBGFKConsultaNFCI: TdxDBGridMaskColumn;
    DBGFKConsultaD_ORIG: TdxDBGridBlobColumn;
    DBGFKConsultaFPAIS: TdxDBGridColumn;
    DBGFKConsultaXPAIS: TdxDBGridMaskColumn;
    DBGFKConsultaDEST: TdxDBGridMaskColumn;
    DBGFKConsultaLGCA: TdxDBGridMaskColumn;
    DBGFKConsultaDTCA: TdxDBGridDateColumn;
    DBGFKConsultaLGED: TdxDBGridMaskColumn;
    DBGFKConsultaDTED: TdxDBGridDateColumn;
    DBGFKConsultaIP: TdxDBGridMaskColumn;
    DBGFKConsultaHOST: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    Bevel1: TBevel;
    DBINFADCAD: TdxDBMemo;
    DPFT: TdxDockPanel;
    ConsultaC_ID: TIntegerField;
    DBGConsultaLGCA: TdxDBGridMaskColumn;
    DBGConsultaREST: TdxDBGridMaskColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaCDRO: TdxDBGridMaskColumn;
    DBGConsultaDTRO: TdxDBGridColumn;
    DBGConsultaCTNR: TdxDBGridMaskColumn;
    DBGConsultaD_DEOP: TdxDBGridMaskColumn;
    DBGConsultaDETP: TdxDBGridMaskColumn;
    DBGConsultaCDNF: TdxDBGridColumn;
    DBGConsultaDTNF: TdxDBGridDateColumn;
    DBGConsultaDEPD: TdxDBGridMaskColumn;
    DBGConsultaDTPD: TdxDBGridDateColumn;
    DBGConsultaC_ID: TdxDBGridColumn;
    BLBEST_INS: TdxBarLargeButton;
    ACTEST_GER: TAction;
    ACTEST_REV: TAction;
    ACTEST_ENV: TAction;
    ACTREL_ROM_EST: TAction;
    ACTREL_ETQ_PAD: TAction;
    ACTREL_ETQ_RED: TAction;
    BLBEST_GER: TdxBarLargeButton;
    BLBEST_REV: TdxBarLargeButton;
    BLBEST_ENV: TdxBarLargeButton;
    BLBREL_ROM_EST: TdxBarLargeButton;
    BLBREL_ETQ_PAD: TdxBarLargeButton;
    BLBREL_ETQ_RED: TdxBarLargeButton;
    PMRelatorios: TdxBarPopupMenu;
    ACTEtiquetas: TAction;
    BLBEST_ETQ: TdxBarLargeButton;
    PMEtiquetas: TdxBarPopupMenu;
    BLBETQ_CON_MAN: TdxBarLargeButton;
    DBGFKConsultaDEPK: TdxDBGridMaskColumn;
    DBGFKConsultaDTPK: TdxDBGridColumn;
    DBGFKConsultaDECD: TdxDBGridMaskColumn;
    DBGFKConsultaDECV: TdxDBGridMaskColumn;
    DBGFKConsultaDECR: TdxDBGridMaskColumn;
    DBGFKConsultaIDPK: TdxDBGridColumn;
    DBGFKConsultaCDNF: TdxDBGridColumn;
    DBGFKConsultaDTNF: TdxDBGridDateColumn;
    DBGFKConsultaDTSA: TdxDBGridDateColumn;
    DBGFKConsultaARTIGO: TdxDBGridMaskColumn;
    DBGFKConsultaREST: TdxDBGridMaskColumn;
    DBGFKConsultaCOL_NO: TdxDBGridMaskColumn;
    DBGFKConsultaDTDF: TdxDBGridDateColumn;
    DBGFKConsultaDTST: TdxDBGridDateColumn;
    DBGFKConsultaLGST: TdxDBGridMaskColumn;
    DBGFKConsultaLOTE: TdxDBGridMaskColumn;
    DBGFKConsultaMAPA: TdxDBGridMaskColumn;
    FKConsultaC_ID: TIntegerField;
    DBGFKConsultaC_ID: TdxDBGridColumn;
    ConsultaIDEP: TSmallintField;
    ConsultaDEEP: TIBStringField;
    ConsultaIDCA: TSmallintField;
    ConsultaDTCA: TDateTimeField;
    ConsultaLGCA: TIBStringField;
    ConsultaIDED: TSmallintField;
    ConsultaDTED: TDateTimeField;
    ConsultaLGED: TIBStringField;
    ConsultaIDST: TSmallintField;
    ConsultaDTST: TDateTimeField;
    ConsultaLGST: TIBStringField;
    ConsultaCDST: TSmallintField;
    ConsultaREST: TIBStringField;
    ConsultaDEST: TIBStringField;
    ConsultaDTRO: TDateField;
    ConsultaCTNR: TIBStringField;
    ConsultaLOTE: TIBStringField;
    ConsultaCDI: TSmallintField;
    ConsultaCDOP: TSmallintField;
    ConsultaDEOP: TIBStringField;
    ConsultaREOP: TIBStringField;
    ConsultaCDTP: TSmallintField;
    ConsultaDETP: TIBStringField;
    ConsultaDTNF: TDateField;
    ConsultaCDNF: TLargeintField;
    ConsultaTPNF: TSmallintField;
    ConsultaD_TPNF: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaIDEV: TLargeintField;
    ConsultaIP: TIBStringField;
    ConsultaHOST: TIBStringField;
    DBGConsultaDECE: TdxDBGridMaskColumn;
    DBGConsultaD_TPCE: TdxDBGridColumn;
    DBGConsultaD_TPPD: TdxDBGridColumn;
    DBGConsultaD_TPNF: TdxDBGridColumn;
    FKConsultaIDEP: TSmallintField;
    FKConsultaDEEP: TIBStringField;
    FKConsultaDTRO: TDateField;
    FKConsultaIDCA: TSmallintField;
    FKConsultaDTCA: TDateTimeField;
    FKConsultaLGCA: TIBStringField;
    FKConsultaIDED: TSmallintField;
    FKConsultaDTED: TDateTimeField;
    FKConsultaLGED: TIBStringField;
    FKConsultaIDST: TSmallintField;
    FKConsultaDTST: TDateTimeField;
    FKConsultaLGST: TIBStringField;
    FKConsultaCDST: TSmallintField;
    FKConsultaREST: TIBStringField;
    FKConsultaDEST: TIBStringField;
    FKConsultaCDET: TLargeintField;
    FKConsultaCTNR: TIBStringField;
    FKConsultaLOTE: TIBStringField;
    FKConsultaCDI: TSmallintField;
    FKConsultaMAPA: TIBStringField;
    FKConsultaCDOP: TSmallintField;
    FKConsultaDEOP: TIBStringField;
    FKConsultaREOP: TIBStringField;
    FKConsultaCDTP: TSmallintField;
    FKConsultaDETP: TIBStringField;
    FKConsultaDTPK: TDateTimeField;
    FKConsultaDEPK: TIBStringField;
    FKConsultaDTSA: TDateTimeField;
    FKConsultaDTBX: TDateTimeField;
    FKConsultaIDCD: TIntegerField;
    FKConsultaDECD: TIBStringField;
    FKConsultaIDCV: TIntegerField;
    FKConsultaDECV: TIBStringField;
    FKConsultaIDCR: TIntegerField;
    FKConsultaDECR: TIBStringField;
    FKConsultaIDFK: TLargeintField;
    FKConsultaITEM: TIntegerField;
    FKConsultaIDCP: TIntegerField;
    FKConsultaCP_IDEP: TSmallintField;
    FKConsultaCP_DEEP: TIBStringField;
    FKConsultaCEAN: TIBStringField;
    FKConsultaIDAK: TLargeintField;
    FKConsultaIDEK: TLargeintField;
    FKConsultaIDCF: TSmallintField;
    FKConsultaCF_CEAN: TIBStringField;
    FKConsultaARTIGO: TIBStringField;
    FKConsultaSKU: TIBStringField;
    FKConsultaNCM: TIBStringField;
    FKConsultaPIPI: TIBBCDField;
    FKConsultaDECP: TIBStringField;
    FKConsultaDGCP: TIBStringField;
    FKConsultaCMP_PAD: TIBStringField;
    FKConsultaUCOM: TIBStringField;
    FKConsultaUCON: TIBStringField;
    FKConsultaD_UCON: TIBStringField;
    FKConsultaQTDE: TIBBCDField;
    FKConsultaQTRL: TIntegerField;
    FKConsultaPSBR: TIBBCDField;
    FKConsultaPSLQ: TIBBCDField;
    FKConsultaIDSP: TIntegerField;
    FKConsultaDTSP: TDateTimeField;
    FKConsultaLGSP: TIBStringField;
    FKConsultaCDSP: TLargeintField;
    FKConsultaCF_VPRC_PAD_ORI: TIBStringField;
    FKConsultaCF_VPRC_PAD: TFloatField;
    FKConsultaCF_VPRC_COM: TFloatField;
    FKConsultaVPRC_PAD_ORI: TIBStringField;
    FKConsultaVPRC_PAD_INI: TFloatField;
    FKConsultaVPRC_PAD_FIM: TFloatField;
    FKConsultaVPRC_PAD: TFloatField;
    FKConsultaVPRC_COM: TFloatField;
    FKConsultaD_ORIG: TIBStringField;
    FKConsultaCPAIS: TSmallintField;
    FKConsultaXPAIS: TIBStringField;
    FKConsultaFPAIS: TIBStringField;
    FKConsultaNFCI: TIBStringField;
    FKConsultaIDDF: TSmallintField;
    FKConsultaDTDF: TDateTimeField;
    FKConsultaLGDF: TIBStringField;
    FKConsultaCDDF: TSmallintField;
    FKConsultaDEDF: TIBStringField;
    FKConsultaINFADCAD: TIBStringField;
    FKConsultaIDEV: TLargeintField;
    FKConsultaIP: TIBStringField;
    FKConsultaHOST: TIBStringField;
    FKConsultaLOG_PRN_IDEV: TSmallintField;
    FKConsultaLOG_PRN_DTEV: TDateTimeField;
    FKConsultaLOG_PRN_LGEV: TIBStringField;
    FKConsultaLOG_PRN_CDEV: TSmallintField;
    FKConsultaLOG_PRN_QTEV: TSmallintField;
    FKConsultaLOG_PRN_IP: TIBStringField;
    FKConsultaLOG_PRN_HOST: TIBStringField;
    DBGFKConsultaLOG_PRN_DTEV: TdxDBGridDateColumn;
    DBGFKConsultaLOG_PRN_LGEV: TdxDBGridMaskColumn;
    DBGFKConsultaLOG_PRN_D_CDEV: TdxDBGridColumn;
    DBGFKConsultaLOG_PRN_QTEV: TdxDBGridMaskColumn;
    DBGFKConsultaLOG_PRN_IP: TdxDBGridMaskColumn;
    DBGFKConsultaLOG_PRN_HOST: TdxDBGridMaskColumn;
    DBGFKConsultaUCOM: TdxDBGridMaskColumn;
    DBGFKConsultaQTDE: TdxDBGridColumn;
    DBGFKConsultaCDI: TdxDBGridCheckColumn;
    FKConsultaCOL_ID: TSmallintField;
    FKConsultaIMG_ID: TLargeintField;
    FKConsultaIMG_NO: TIBStringField;
    FKConsultaIMG_PAD: TBlobField;
    PNLProduto: TPanel;
    PNLDECP: TPanel;
    PNLINFADTEC: TPanel;
    ConsultaID: TLargeintField;
    ConsultaCDRO: TLargeintField;
    ConsultaIDNF: TSmallintField;
    FKConsultaID: TLargeintField;
    FKConsultaCDRO: TLargeintField;
    FKConsultaCDPK: TLargeintField;
    FKConsultaCDFK: TLargeintField;
    FKConsultaCOL_NO: TIBStringField;
    FKConsultaINFADTEC: TIBStringField;
    ConsultaIDCE: TIntegerField;
    ConsultaDECE: TIBStringField;
    ConsultaTPCE: TSmallintField;
    ConsultaD_TPCE: TIBStringField;
    ConsultaIDPD: TLargeintField;
    ConsultaDTPD: TDateField;
    ConsultaCDPD: TLargeintField;
    ConsultaDEPD: TIBStringField;
    ConsultaTPPD: TSmallintField;
    ConsultaD_TPPD: TIBStringField;
    FKConsultaIDNF: TLargeintField;
    FKConsultaCDNF: TLargeintField;
    FKConsultaLOG_PRN_D_CDEV: TIBStringField;
    DBGFKConsultaCTNR: TdxDBGridMaskColumn;
    FKConsultaDTNF: TDateField;
    ConsultaHTCA: TTimeField;
    DBGConsultaHTCA: TdxDBGridColumn;
    ConsultaD_DEOP: TIBStringField;
    SQLFKConsulta: TIBSQL;
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
    PNLCAD_PRO_IMG_PIX: TPanel;
    dxDockPanel1: TdxDockPanel;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    PNLCAD_PRO_IMG_PAD: TPanel;
    IMGCAD_PRO_IMG_PAD: TImage;
    BVCAD_PRO_IMG_ILA1: TBevel;
    BVCAD_PRO_IMG_ILA2: TBevel;
    BVCAD_PRO_IMG_ILA4: TBevel;
    BVCAD_PRO_IMG_ILA5: TBevel;
    BVCAD_PRO_IMG_ILA6: TBevel;
    BVCAD_PRO_IMG_ILA7: TBevel;
    BVCAD_PRO_IMG_ILA8: TBevel;
    BVCAD_PRO_IMG_ILA3: TBevel;
    DBCAD_PRO_IMG_ILA1: TDBImage;
    DBCAD_PRO_IMG_ILA2: TDBImage;
    DBCAD_PRO_IMG_ILA3: TDBImage;
    DBCAD_PRO_IMG_ILA4: TDBImage;
    DBCAD_PRO_IMG_ILA5: TDBImage;
    DBCAD_PRO_IMG_ILA6: TDBImage;
    DBCAD_PRO_IMG_ILA7: TDBImage;
    DBCAD_PRO_IMG_ILA8: TDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure ConsultaBeforeScroll(DataSet: TDataSet);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure FKConsultaAfterScroll(DataSet: TDataSet);
    procedure DTSFKConsultaDataChange(Sender: TObject; Field: TField);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGFKConsultaCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure ACTEST_GERExecute(Sender: TObject);
    procedure ACTEST_REVExecute(Sender: TObject);
    procedure ACTEST_ENVExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTREL_ROM_ESTExecute(Sender: TObject);
    procedure ACTREL_ETQ_PADExecute(Sender: TObject);
    procedure ACTREL_ETQ_REDExecute(Sender: TObject);
    procedure ACTNovoExecute(Sender: TObject);
    procedure ACTEtiquetasExecute(Sender: TObject);
    procedure FKConsultaCalcFields(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure FKConsultaAfterOpen(DataSet: TDataSet);
    procedure FKConsultaBeforeClose(DataSet: TDataSet);
    procedure ACTCancelaExecute(Sender: TObject);
  private
    { Private declarations }
    RECRelatorios: TRECRelatorios;
    NewString: String;
    ClickedOK: Boolean;

    procedure _CAD_PRO_EST_LAN_UPD;
  public
    { Public declarations }
  end;

var
  FrmEstoque: TFrmEstoque;

implementation

uses uPrincipal, bPrincipal,
  pent_pro, pRelatorios_OLD, qEST_ENT_ROM, qEST_ETQ_PAD, qEST_ETQ_PEQ,
  peti_pro, pCAD_PRO_EST_DEL;

{$R *.dfm}

procedure TFrmEstoque.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_EST'; { Eventos }

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Estoque';
  REC_SHE_DEF.GReferencia := 'Produtos';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  if not REC_SHE_DEF.GAppend then
  begin
    BLBEST_INS.Visible := ivNever;
    ACTNovo.Enabled    := False;
  end;

  if not REC_SHE_DEF.GAdmin then
  begin
    BLBCancela.Visible := ivNever;
    ACTCancela.Enabled := False;
  end;
    
  if not REC_SHE_DEF.GControl then
  begin
    BLBEST_GER.Visible := ivNever;
    ACTEST_GER.Enabled := False;

    BLBEST_REV.Visible := ivNever;
    ACTEST_REV.Enabled := False;

    BLBEST_ENV.Visible := ivNever;
    ACTEST_ENV.Enabled := False;
  end;

  if not REC_SHE_DEF.GAppend then
  begin
    BLBEST_ETQ.Visible    := ivNever;
    ACTEtiquetas.Enabled  := False;
  end;

  if not REC_SHE_DEF.GPrint then
  begin
    BLBRelatorios.Visible  := ivNever;
    ACTRelatorios.Enabled  := False;
    ACTREL_ROM_EST.Enabled := False;
    ACTREL_ETQ_PAD.Enabled := False;
    ACTREL_ETQ_RED.Enabled := False;
  end;

  oIRECRelatorios(RECRelatorios);
  RECRelatorios.Handle   := Self.Handle;
  RECRelatorios.PrintTAG := 0;

  ACTPesquisa.Execute;
end;

procedure TFrmEstoque.FormDestroy(Sender: TObject);
begin
  oFRECRelatorios(RECRelatorios);
  inherited;
end;

procedure TFrmEstoque.ACTPesquisaExecute(Sender: TObject);
begin
  BBPSQ_CAD.Hint := IFThen(BBPSQ_CAD.Caption = 'Pesquisa Rápida','Romaneio, Container, Nota Fiscal, Pedido, Fornecedor, etc',EmptyStr);
  BEPSQ_CAD.Hint := BBPSQ_CAD.Hint;
  Application.ProcessMessages;

  { Verifica integridade da pesquisa
    Evita campos alphanuméricos em campos apenas numéricos
  }
  if (Pos(BBPSQ_CAD.Caption,'RomaneioNota FiscalEtiqueta') > 0) and (not oBSONumero(BEPSQ_CAD.Text)) then
      Abort;

  inherited;
  try
    with Consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.*');
      SQL.Add('FROM   VW_CAD_PRO_EST_RPK AS PK');
      SQL.Add('WHERE  PK.IDEP = :IDEP');

      { Load Default }
      if ACTPesquisa.Tag = 1 then
         SQL.Add('AND (PK.DTRO >= DATEADD(- 30 DAY TO CURRENT_DATE) OR PK.REST = ''E'')');

      { Pesquisa }
      if UpperCase(BEPSQ_CAD.Text) = 'TODOS' then
         SQL.Add('AND PK.CDRO > 0') else
      if BBPSQ_CAD.Caption = 'Romaneio' then
         SQL.Add('AND PK.CDRO = '''+BEPSQ_CAD.Text+'''') else
      if BBPSQ_CAD.Caption = 'Responsável' then
         SQL.Add('AND PK.LGCA CONTAINING '''+BEPSQ_CAD.Text+'''') else
      if BBPSQ_CAD.Caption = 'Container' then
         SQL.Add('AND PK.CTNR CONTAINING '''+BEPSQ_CAD.Text+'''') else
      if BBPSQ_CAD.Caption = 'Nota Fiscal' then
         SQL.Add('AND PK.CDNF = '''+BEPSQ_CAD.Text+'''') else
      if BBPSQ_CAD.Caption = 'Emitente' then
         SQL.Add('AND PK.DECE CONTAINING '''+BEPSQ_CAD.Text+'''') else
      if BBPSQ_CAD.Caption = 'Pedido' then
         SQL.Add('AND PK.DEPD CONTAINING '''+BEPSQ_CAD.Text+'''') else
      if BBPSQ_CAD.Caption = 'Etiqueta' then
      begin
        SQL.Add('AND EXISTS (SELECT FK.ID FROM CAD_PRO_ENI AS FK WHERE FK.CDRO = PK.ID AND FK.CDET = '''+BEPSQ_CAD.Text+''')');
      end else
      if BBPSQ_CAD.Caption = 'Artigo' then
      begin
        SQL.Add('AND EXISTS (SELECT FK.ID FROM CAD_PRO_ENI AS FK JOIN CAD_PRO AS CP ON (FK.IDCP = CP.ID) WHERE FK.CDRO = PK.ID AND CP.SKU LIKE ''' + BEPSQ_CAD.Text + '%'')');
      end else
      if BBPSQ_CAD.Caption = 'Descrição' then
      begin
        SQL.Add('AND EXISTS (SELECT FK.ID FROM CAD_PRO_ENI AS FK JOIN CAD_PRO AS CP ON (FK.IDCP = CP.ID) WHERE FK.CDRO = PK.ID AND CP.SKU CONTAINING ''' + BEPSQ_CAD.Text + ''')');
      end else
      if BBPSQ_CAD.Caption = 'Favorecido' then
      begin
      end else

      { Pesquisa Rápida }
      if BEPSQ_CAD.Text <> EmptyStr then
         if oBSONumero(BEPSQ_CAD.Text) then
         begin
           SQL.Add('AND (PK.CDRO = ''' + BEPSQ_CAD.Text + ''' OR PK.CDNF = ''' + BEPSQ_CAD.Text + '''');
           SQL.Add('OR   EXISTS (SELECT FK.ID FROM CAD_PRO_ENI AS FK WHERE FK.CDRO = PK.ID AND FK.CDET = ''' + BEPSQ_CAD.Text + '''))');
         end else
         begin
           SQL.Add('AND (PK.LGCA CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.CTNR CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.DEOP CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.DETP CONTAINING '''+BEPSQ_CAD.Text+''' OR');
           SQL.Add('     PK.DEST CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.DEPD CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.DECE CONTAINING '''+BEPSQ_CAD.Text+''')');
         end;

      { Pesquisa Período }
      if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
          if BBPSQ_PER.Caption = 'Pedido'  then
             SQL.Add('AND PK.DTNF BETWEEN '''+formatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date)+'''') else
          if BBPSQ_PER.Caption = 'Nota Fiscal'  then
             SQL.Add('AND PK.DTPD BETWEEN '''+formatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date)+'''') else
             SQL.Add('AND PK.DTRO BETWEEN '''+formatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date)+''' AND '''+formatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date)+'''');

      SQL.Add('ORDER BY PK.DTCA DESC');
      Prepare;

      Params[0].Value := RECParametros.EP_ID;
      Open;
    end;
  finally
    BEPSQ_CAD.Text    := EmptyStr;
    BEPSQ_CAD.CurText := EmptyStr;

    BDPSQ_PER_INI.Text    := EmptyStr;
    BDPSQ_PER_INI.CurText := EmptyStr;

    BDPSQ_PER_FIM.Text    := EmptyStr;
    BDPSQ_PER_FIM.CurText := EmptyStr;
  end;

  Application.ProcessMessages;
end;

procedure TFrmEstoque.ACTNovoExecute(Sender: TObject);
begin
  // RICARDO bPSQUSER('INCLUI','Estoque','Produtos','Permissões Gerais',True);
  ActiveControl := Nil;

  uFrmCreate(Self,Tfrment_pro,Frment_pro);
end;

procedure TFrmEstoque.ACTEST_GERExecute(Sender: TObject);
var
  CDTP: Variant;
  AWarning: String;
  APP_QTDE,
  APP_CTNR_QTDE: Currency;
begin
  //RICARDObPSQUSER('CONTROLE','Estoque','Produtos' ,'Permissões Gerais',True);
  ActiveControl := Nil;

  if ConsultaCDRO.AsInteger = 0 then
     oException(Nil,'Romaneio não Informado !');

  if ConsultaREST.AsString = 'C' then
     oException(Nil,'Romaneio já Cancelado !');

  if ConsultaREST.AsString = 'A' then
     oException(Nil,'Estoque já Gerado !');

  if oYesNo(Handle,'Gerar Estoque ?'+#13+
                   'Romaneio '+ConsultaCDRO.AsString) = mrNo then
     Abort;

  CDTP     := IFThen(Pos(ConsultaCDTP.AsString,'1139') > 0,RECParametros.EST_IDTIPO,ConsultaCDTP.AsString);
  AWarning := 'Estoque Gerado com Sucesso !';

  if (ConsultaIDEP.AsInteger = 1) and (ConsultaCTNR.AsString <> EmptyStr) then
  begin
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PK.IDEP,PK.IDCP,PK.SKU,PK.DGCP,COALESCE(SUM(PK.QTDE),0) AS QTDE,COALESCE(SUM(PK.QTRL),0) AS QTRL');
      SQL.Add('FROM     VW_CAD_PRO_EST_RFK AS PK');
      SQL.Add('WHERE    PK.IDEP = ''' + RECParametros.EP_ID      + '''');
      SQL.Add('AND      PK.CDRO = ''' + ConsultaID.AsString   + '''');
      SQL.Add('AND      PK.CTNR = ''' + ConsultaCTNR.AsString + '''');
      SQL.Add('GROUP BY PK.IDEP,PK.IDCP,PK.SKU,PK.DGCP');
      ExecQuery;
    end;
    while not SQLConsulta.Eof do
    begin
      { Pega toda quantidade não programada }
      with SQLFKConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(PK.QTDE) AS QTDE FROM CAD_PRO_PRG AS PK');
        SQL.Add('WHERE  PK.IDEP = 1 '); { apenas otimotex }
        SQL.Add('AND    PK.IDCP = ''' + SQLConsulta.Current.ByName('IDCP').AsString + '''');
        SQL.Add('AND    PK.CTNR IS NULL');
        ExecQuery;
        APP_QTDE := Current.Vars[0].AsCurrency;
      end;


      { Verifica se container já foi programado pelo comercial }
      with SQLFKConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(PK.QTDE) AS QTDE FROM CAD_PRO_PRG AS PK');
        SQL.Add('WHERE  PK.IDEP = 1 '); { apenas otimotex }
        SQL.Add('AND    PK.IDCP = ''' + SQLConsulta.Current.ByName('IDCP').AsString + '''');
        SQL.Add('AND    PK.CTNR = ''' + ConsultaCTNR.AsString                       + '''');
        ExecQuery;
        APP_CTNR_QTDE := Current.Vars[0].AsCurrency;
      end;

      { Se qtde total da programação sem container for igual zero, então toda programção foi efetuado }
      if ((APP_CTNR_QTDE) > 0) and (APP_QTDE > 0) then
          if SQLFKConsulta.Current.ByName('QTDE').AsCurrency < SQLConsulta.Current.ByName('QTDE').AsCurrency then
             if oYesNo(Self.Handle,'PRODUTO '  + SQLConsulta.Current.ByName('SKU').AsString + IFThen(SQLConsulta.Current.ByName('DGCP').AsString = EmptyStr,EmptyStr,' - ' + SQLConsulta.Current.ByName('DGCP').AsString) + #13 + #13 +
                                   'Parece que o container foi programado pelo dep. comercial. ' + #13 +
                                   'Mas quantidade programada ' + FormatFloat(' [,##,0.## ' + FKConsultaUCOM.AsString + ']',SQLFKConsulta.Current.ByName('QTDE').AsFloat) + ' ainda é inferior' + #13 +
                                   'à quantidade revisada'      + FormatFloat(' [,##,0.## ' + FKConsultaUCOM.AsString + ']',SQLConsulta  .Current.ByName('QTDE').AsFloat) + #13 + #13 + #13 +
                                   'Gerar mesmo assim ?') = mrNo then
             Abort;

      with SQLEdicao do
      begin
        oOTransact(TEdicao);

        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_PRG');
        SQL.Add('SET    CTNR      = ''' + ConsultaCTNR.AsString + ''',');
        SQL.Add('       CTNR_QTDE = QTDE,');
        SQL.Add('       CTNR_QTRL = QTRL ');

        SQL.Add('WHERE  IDEP = ''' + SQLConsulta.Current.ByName('IDEP').AsString + '''');
        SQL.Add('AND    IDCP = ''' + SQLConsulta.Current.ByName('IDCP').AsString + '''');
        SQL.Add('AND    CTNR IS NULL');
        ExecQuery;
      end;

      SQLConsulta.Next;
    end;
  end;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_ENI');
      SQL.Add('SET    IDCA = ''' + RECUsuarios.Id + ''',');
      SQL.Add('       CDST = 30       ,');
      SQL.Add('       REST = ''A''    ,');
      SQL.Add('       DEST = ''ATIVO'',');
      SQL.Add('       CDTP = ''' + CDTP + ''',');
      SQL.Add('       IP   = ''' + RECParametros.IP      + ''',');
      SQL.Add('       HOST = ''' + RECParametros.HOST    + '''' );

      SQL.Add('WHERE  IDEP = ''' + ConsultaIDEP.AsString + '''' );
      SQL.Add('AND    CDRO = ''' + ConsultaCDRO.AsString + '''' );
      SQL.Add('AND    REST = ''E''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_ENC');
      SQL.Add('SET    IDCA = ''' + RECUsuarios.Id + ''',');
      SQL.Add('       CDST = 30       ,');
      SQL.Add('       REST = ''A''    ,');
      SQL.Add('       DEST = ''ATIVO'',');
      SQL.Add('       CDTP = ''' + CDTP + ''',');
      SQL.Add('       IP   = ''' + RECParametros.IP      + ''',');
      SQL.Add('       HOST = ''' + RECParametros.HOST    + '''' );

      SQL.Add('WHERE  ID   = ''' + ConsultaCDRO.AsString + '''' );
      ExecQuery;
    end;
    oCTransact(TEdicao);

    oAviso(Self.Handle,AWarning);
    oRefresh(Consulta);

    _CAD_PRO_EST_LAN_UPD; { Estoque }
  except
    on E: Exception do
    begin
      oCTransact(TEdicao);
      oException(Nil,'Falha ao tentar gerar estoque !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmEstoque.ACTEST_REVExecute(Sender: TObject);
begin
  //RICARDObPSQUSER('CONTROLE','Estoque','Produtos' ,'Permissões Gerais',True);
  ActiveControl := Nil;

  ACTEST_REV.Enabled   := ACTEST_GER.Enabled;
  ACTEST_ENV.Enabled   := ACTEST_GER.Enabled;

  if ConsultaCDRO.AsInteger = 0 then
     oException(Nil,'Romaneio não Informado !');

  if ConsultaREST.AsString <> 'C' then
     oException(Nil,'Apenas romaneios cancelados podem ser revertidos !');

  if oYesNo(Handle,'Reverter Estoque ?'+#13+
                   'Romaneio '+ConsultaCDRO.AsString) = mrNo then
     Abort;

  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_ENC');
      SQL.Add('SET    IDCA = '''+RECUsuarios.Id+''',');
      SQL.Add('       CDST = 72                    ,');
      SQL.Add('       REST = ''E''                 ,');
      SQL.Add('       DEST = ''ESTOQUE NÃO GERADO'',');
      SQL.Add('       CDTP = 11   ,');
      SQL.Add('       IP   = '''+RECParametros.IP     +''',');
      SQL.Add('       HOST = '''+RECParametros.HOST   +'''' );
      SQL.Add('WHERE  ID   = '''+ConsultaCDRO.AsString+'''' );
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_ENI');
      SQL.Add('SET    IDCA = '''+RECUsuarios.Id+''',');
      SQL.Add('       CDST = 72                    ,');
      SQL.Add('       REST = ''E''                 ,');
      SQL.Add('       DEST = ''ESTOQUE NÃO GERADO'',');
      SQL.Add('       CDTP = 11   ,');
      SQL.Add('       IP   = '''+RECParametros.IP     +''',');
      SQL.Add('       HOST = '''+RECParametros.HOST   +'''' );
      SQL.Add('WHERE  CDRO   = '''+ConsultaCDRO.AsString+'''' );
      ExecQuery;
    end;

    oCTransact(TEdicao);
    oAviso(handle,'Estoque Gerado com Sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao);
      oException(Nil,'Falha ao tentar gerar estoque !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  oRefresh(Consulta);
  _CAD_PRO_EST_LAN_UPD; { Estoque }
end;

procedure TFrmEstoque.ACTEST_ENVExecute(Sender: TObject);
var
  CDI: Variant;
  INFADCAD: TStringList;
begin
  //RICARDObPSQUSER('CONTROLE','Estoque','Produtos','Permissões Gerais',True);
  ActiveControl := Nil;

  if ConsultaCDRO.AsInteger = 0 then
     oException(Nil,'Romaneio não Informado !');

  if ConsultaREST.AsString = 'C' then
     oException(Nil,'Romaneio já Cancelado !');

  if oYesNo(handle,'Transferir Estoque ?'+#13+
                   'Romaneio '+ConsultaCDRO.AsString) = mrNo then
     Abort;

  NewString := EmptyStr;
  ClickedOK := InputQuery('TRANSFERÊNCIA DE ESTOQUE', 'Entre com o nome da empresa destino', NewString);

  if not ClickedOK then
     Abort;

  if NewString = EmptyStr then
     oException(Nil,'Empresa Destino não Informada !');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,FK.CDI');
    SQL.Add('FROM   TAB_PAR_SIS     AS PK');
    SQL.Add('JOIN   TAB_PAR_SIS_EMP AS FK ON (FK.ID = PK.ID)');
    SQL.Add('WHERE  FANTASIA = '''+NewString+'''');
    ExecQuery;

    if Eof then
       oException(Nil,'Empresa Destino não Encontrada !'+#13+
                       NewString);
    CDI := IFThen((RECParametros.EMP_CDI) or (Current.Vars[1].AsInteger = 1),RECParametros.EP_ID,'0');
  end;

  INFADCAD := TStringList.Create;
  try
    INFADCAD.Add(ConsultaINFADCAD.AsString);
    INFADCAD.Add('Estoque Transferido '+RECParametros.EP_NO+' » '+UPPERCASE(NewString));
    INFADCAD.Add(oPrimeiraLetraMaiuscula(RECUsuarios.Login)+' IP '+RECParametros.IP+' '+RECParametros.HOST+' '+FormatDateTime('dd/mm/yy hh:mm',Now));

    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_ENC');
        SQL.Add('SET    IDEP     = '''+SQLConsulta.Current.Vars[0].AsString+''',');
        SQL.Add('       INFADCAD = '''+INFADCAD.Text+''',');
        SQL.Add('       IP       = '''+RECParametros.IP     +''',');
        SQL.Add('       HOST     = '''+RECParametros.HOST   +'''' );
        SQL.Add('WHERE  ID       = '''+ConsultaCDRO.AsString+'''' );
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_ENI');
        SQL.Add('SET    IDEP = '''+SQLConsulta.Current.Vars[0].AsString+''',');
        SQL.Add('       CDI  = '''+CDI+''',');
        SQL.Add('       IP   = '''+RECParametros.IP     +''',');
        SQL.Add('       HOST = '''+RECParametros.HOST   +'''' );
        SQL.Add('WHERE  CDRO = '''+ConsultaCDRO.AsString+'''' );
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_EST');
        SQL.Add('SET    IDEP = '''+SQLConsulta.Current.Vars[0].AsString+''',');
        SQL.Add('       CDI  = '''+CDI+''',');
        SQL.Add('       IP   = '''+RECParametros.IP     +''',');
        SQL.Add('       HOST = '''+RECParametros.HOST   +'''' );
        SQL.Add('WHERE  CDRO = '''+ConsultaCDRO.AsString+'''' );
        SQL.Add('AND    REOP = ''E''');
        SQL.Add('AND    IDPK = 0');
        ExecQuery;
      end;
      oCTransact(TEdicao);
      oAviso(handle,'Estoque Transferido com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar transferir estoque !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    INFADCAD.Free;
  end;
  ACTExecEvent.Execute;
end;

procedure TFrmEstoque.ACTRelatoriosExecute(Sender: TObject);
begin
  //RICARDObPSQUSER('IMPRIME','Estoque','Produtos','Permissões Gerais',True);
  ActiveControl := Nil;
  inherited;

  if ConsultaCDRO.AsInteger = 0 then
     oException(Nil,'Romaneio não Informado !');

  if ConsultaREST.AsString = 'C' then
     oException(Nil,'Romaneio já Cancelado !');

  FrmRelatorios_OLD := TFrmRelatorios_OLD.Create(Nil,'Etiquetas de Estoque',1,ConsultaCDRO.AsInteger);
  FrmRelatorios_OLD.PEC1Consulta.Text := ConsultaCDRO.AsString;
  FrmRelatorios_OLD.IETipo.Text       := ConsultaCDTP.AsString;

  Try FrmRelatorios_OLD.ShowModal;
  Finally FreeAndNil(FrmRelatorios_OLD);
  End;
end;

procedure TFrmEstoque.ACTREL_ROM_ESTExecute(Sender: TObject);
begin
  //RICARDObPSQUSER('IMPRIME','Estoque','Produtos','Permissões Gerais',True);
  ActiveControl := Nil;

  if ConsultaCDRO.AsInteger = 0 then
     oException(Nil,'Romaneio não Informado !');

  if ConsultaREST.AsString = 'C' then
     oException(Nil,'Romaneio já Cancelado !');

  try
    if Assigned(qrpEST_ENT_ROM) then qrpEST_ENT_ROM.BringToFront else
    begin
      RECRelatorios.Titulo := 'Romaneio de estoque para simples conferência';
      RECRelatorios.Tipo   := ConsultaDETP.AsString;

      RECRelatorios.ID   := ConsultaCDRO.AsString;
      RECRelatorios.IDEP := ConsultaIDEP.AsString;
      RECRelatorios.DEEP := ConsultaDEEP.AsString;

      RECRelatorios.PEC1ConsultaText  := RECRelatorios.ID;
      RECRelatorios.IEC1ConsultaField := 'PK.CDRO';

      RECRelatorios.PrintTAG := 1;
      RECRelatorios.Handle   := Self.Handle;

      qrpEST_ENT_ROM     := TqrpEST_ENT_ROM.Create(Self,RECRelatorios);
      qrpEST_ENT_ROM.Tag := 5;
      qrpEST_ENT_ROM.WinControlFormCreate(qrpEST_ENT_ROM);
    end;
  finally
    ACTExecEvent.Execute;
  end;
end;

procedure TFrmEstoque.ACTREL_ETQ_PADExecute(Sender: TObject);
begin
  //RICARDObPSQUSER('IMPRIME','Estoque','Produtos','Permissões Gerais',True);
  ActiveControl := Nil;

  if ConsultaCDRO.AsInteger = 0 then
     oException(Nil,'Romaneio não Informado !');

  if ConsultaREST.AsString = 'C' then
     oException(Nil,'Romaneio já Cancelado !');

  try
    if Assigned(qrpEST_ETQ_PAD) then qrpEST_ETQ_PAD.BringToFront else
    begin
      RECRelatorios.PrintTAG := 1;
      RECRelatorios.Titulo   := 'Etiquetas de Estoque';
      RECRelatorios.Tipo     := ConsultaDETP.AsString;

      RECRelatorios.PEC1ConsultaText  := ConsultaCDRO.AsString;
      RECRelatorios.IEC1ConsultaField := 'PK.CDRO';

      qrpEST_ETQ_PAD     := TqrpEST_ETQ_PAD.Create(Self,RECRelatorios);
      qrpEST_ETQ_PAD.Tag := 1;
      qrpEST_ETQ_PAD.WinControlFormCreate(qrpEST_ETQ_PAD);
    end;
  finally
    ACTExecEvent.Execute;
  end;
end;

procedure TFrmEstoque.ACTREL_ETQ_REDExecute(Sender: TObject);
begin
  //RICARDObPSQUSER('IMPRIME','Estoque','Produtos','Permissões Gerais',True);
  ActiveControl := Nil;

  if ConsultaCDRO.AsInteger = 0 then
     oException(Nil,'Romaneio não Informado !');

  if ConsultaREST.AsString = 'C' then
     oException(Nil,'Romaneio já Cancelado !');

  try
    if Assigned(qrpEST_ETQ_PEQ) then qrpEST_ETQ_PEQ.BringToFront else
    begin
      RECRelatorios.PrintTAG := 1;
      RECRelatorios.Titulo   := 'Etiquetas de Estoque';
      RECRelatorios.Tipo     := ConsultaDETP.AsString;

      RECRelatorios.PEC1ConsultaText  := ConsultaCDRO.AsString;
      RECRelatorios.IEC1ConsultaField := 'PK.CDRO';

      qrpEST_ETQ_PEQ     := TqrpEST_ETQ_PEQ.Create(Self,RECRelatorios);
      qrpEST_ETQ_PEQ.Tag := 2;
      qrpEST_ETQ_PEQ.WinControlFormCreate(qrpEST_ETQ_PEQ);
    end;
  finally
    ACTExecEvent.Execute;
  end;
end;

procedure TFrmEstoque.ACTEtiquetasExecute(Sender: TObject);
begin
  //RICARDObPSQUSER('VISUALIZA','Estoque','Etiquetas','Permissões Gerais',True);
  ActiveControl := Nil;

  uFrmCreate(Self,Tfrmeti_pro,frmeti_pro);
end;

procedure TFrmEstoque.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if FKConsulta.State = dsInactive then
     FKConsulta.Open;
end;

procedure TFrmEstoque.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsultaC_ID.Value := Consulta.RecNo;
end;

procedure TFrmEstoque.ConsultaBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  DBGFKConsulta.Bands[02].Visible := False; { Situação   }
  DBGFKConsulta.Bands[04].Visible := False; { Local      }
  DBGFKConsulta.Bands[05].Visible := False; { Expedição  }
  DBGFKConsulta.Bands[06].Visible := False; { Vendas     }
  DBGFKConsulta.Bands[08].Visible := False; { Outros     }
  DBGFKConsulta.Bands[10].Visible := False; { Registros  }
  DBGFKConsulta.Bands[11].Visible := False; { Relatórios }

  DBGFKConsultaCTNR.Visible := False; { Container }
  DBGFKConsultaLOTE.Visible := False; { Lote }

  { Defeitos }
  DBGFKConsultaDEDF.Visible := False;
  DBGFKConsultaDTDF.Visible := False;
end;

procedure TFrmEstoque.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DBGConsulta.ApplyBestFit(DBGConsultaDEST);
  DBGConsulta.ApplyBestFit(DBGConsultaD_DEOP);
  DBGConsulta.ApplyBestFit(DBGConsultaDETP);
  DBGConsulta.ApplyBestFit(DBGConsultaDECE);

  DBGConsulta.ApplyBestFit(DBGConsultaD_TPCE);
  DBGConsulta.ApplyBestFit(DBGConsultaD_TPPD);
  DBGConsulta.ApplyBestFit(DBGConsultaD_TPNF);
end;

procedure TFrmEstoque.FKConsultaAfterScroll(DataSet: TDataSet);
begin
  { Situação }
  if FKConsultaCDST.AsInteger <> ConsultaCDST.AsInteger then
     DBGFKConsulta.Bands[2].Visible := True;

  { Local }
  if (FKConsultaMAPA.AsString <> EmptyStr) or (FKConsultaCDI.AsInteger > 0) then
      DBGFKConsulta.Bands[4].Visible := True;

  { Expedição }
  if FKConsultaIDSP.AsInteger > 0 then
     DBGFKConsulta.Bands[5].Visible := True;

  { Vendas }
  if FKConsultaDEPK.AsString <> EmptyStr then
     DBGFKConsulta.Bands[6].Visible := True;

  { Outros }
  if (FKConsultaNFCI.AsString <> EmptyStr) or (FKConsultaCOL_ID.AsInteger > 0) then
      DBGFKConsulta.Bands[8].Visible := True;

  { Registros }
  if (FKConsultaIDCA.AsInteger <> ConsultaIDCA.AsInteger) or (FKConsultaIDED.AsInteger > 0) then
      DBGFKConsulta.Bands[10].Visible := True;

  { Relatórios }
  if FKConsultaLOG_PRN_IDEV.AsInteger > 0 then
     DBGFKConsulta.Bands[11].Visible := True;

  { Container}
  if FKConsultaCTNR.AsString <> EmptyStr then
     DBGFKConsultaCTNR.Visible := True;

  { Lote }   
  if FKConsultaLOTE.AsString <> EmptyStr then
     DBGFKConsultaLOTE.Visible := True;

  { Defeitos }
  if FKConsultaCDDF.AsInteger > 0 then
  begin
    DBGFKConsultaDEDF.Visible := True;
    DBGFKConsultaDTDF.Visible := True;
  end;
end;

procedure TFrmEstoque.FKConsultaCalcFields(DataSet: TDataSet);
begin
  FKConsultaC_ID.Value := FKConsulta.RecNo;
end;

procedure TFrmEstoque.DTSFKConsultaDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  { Empresa }
  DBGFKConsultaCP_DEEP.Visible := (FKConsultaCP_IDEP.AsInteger <> RECParametros.EP_ID);
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaCP_DEEP);

  { Produtos }
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaARTIGO);
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaSKU   );
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaDGCP  );

  DBGFKConsulta.ApplyBestFit(DBGFKConsultaLGSP); { Expedição }
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaDEPK); { Pedido    }
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaDEDF); { Defeito   }

  { Outras Classificações }
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaCOL_NO); { Coleções }
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaNFCI  ); { Ficha    }

  { Vendas }
  DBGFKConsultaCDNF.Visible := (FKConsultaCDNF.AsInteger  > 0);
  DBGFKConsultaDTNF.Visible := (FKConsultaCDNF.AsInteger  > 0);
  DBGFKConsultaDTSA.Visible := (FKConsultaDTSA.AsDateTime > 0);
//  DBGFKConsultaDTBX.Visible := (FKConsultaDTBX.AsDateTime > 0);

  { Origem }
  DBGFKConsultaXPAIS.Visible := (FKConsultaCPAIS.AsInteger <> 1058);
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaXPAIS);
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaFPAIS);

  { Registros }
  DBGFKConsultaLGCA.Visible := (FKConsultaIDCA.AsInteger <> ConsultaIDCA.AsInteger);
  DBGFKConsultaDTCA.Visible := (FKConsultaIDCA.AsInteger <> ConsultaIDCA.AsInteger);
  DBGFKConsultaLGED.Visible := (FKConsultaIDED.AsInteger > 0);
  DBGFKConsultaDTED.Visible := (FKConsultaIDED.AsInteger > 0);

  { Relatórios }
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaLOG_PRN_D_CDEV);

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',FKConsultaINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 0) and (FKConsultaINFADCAD.AsString =  EmptyStr),00,
                        IFThen((PosCount = 0) and (FKConsultaINFADCAD.AsString <> EmptyStr),45,
                        IFThen((PosCount = 1),45,
                        IFThen((PosCount = 2),60,
                        IFThen((PosCount = 3),80,
                        IFThen((PosCount = 4),95,
                        IFThen((PosCount = 5),110,
                        IFThen((PosCount = 6),120,140))))))));

  { Painel Produtos }
  PNLDECP.Caption := FKConsultaDECP.AsString;
  PNLINFADTEC.Caption := FKConsultaINFADTEC.AsString;
end;

procedure TFrmEstoque.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaREST.Index] = 'C' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGConsultaREST.Index] = 'E' then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clBlack;
    end else
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGConsultaCDRO) or (AColumn = DBGConsultaCTNR) or (AColumn = DBGConsultaDTRO) or (AColumn = DBGConsultaHTCA) or (AColumn = DBGConsultaLGCA) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;

    if (AColumn = DBGConsultaDEST) and (ANode.Values[DBGConsultaREST.Index] = 'A') then
    begin
      AColor      := $00EAFFEA;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGConsultaDEPD) and (ANode.Values[DBGConsultaDEPD.Index] <> Null) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaCDNF) and (ANode.Values[DBGConsultaCDNF.Index] <> Null) then
        AFont.Style := [fsBold];
  end;

  if ANode.Selected then
  begin
    AColor      := $00E1AD40;
    AFont.Color := clWhite;
  end;

  if ASelected then
  begin
    AColor      := clInfoBk;
    AFont.Color := clBlack;
  end;
end;

procedure TFrmEstoque.DBGFKConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    AColor      := clBtnFace;
    AFont.Color := clBlack;

    if ANode.Values[DBGFKConsultaREST.Index] = 'C' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGFKConsultaREST.Index] = 'E' then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clBlack;
    end else
    begin
      AColor      := $00EAFFEA;
      AFont.Color := clBlack;
    end;

    if (AColumn = DBGFKConsultaITEM) or (AColumn = DBGFKConsultaARTIGO) or (AColumn = DBGFKConsultaCDET)  or (AColumn = DBGFKConsultaQTDE) or (AColumn = DBGFKConsultaQTRL) then
        AFont.Style := [fsBold];

    if ((AColumn = DBGFKConsultaDETP) or (AColumn = DBGFKConsultaLOTE)) and ((ANode.Values[DBGFKConsultaDETP.Index] <> ConsultaDETP.AsString) or (ANode.Values[DBGFKConsultaLOTE.Index] <> ConsultaLOTE.AsString)) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFKConsultaCDET) or (AColumn = DBGFKConsultaUCOM) or (AColumn = DBGFKConsultaQTDE) or (AColumn = DBGFKConsultaQTRL) or
       (AColumn = DBGFKConsultaDETP) or (AColumn = DBGFKConsultaCTNR) or (AColumn = DBGFKConsultaLOTE) or
       (AColumn = DBGFKConsultaDEST) or (AColumn = DBGFKConsultaDTST) or (AColumn = DBGFKConsultaLGST) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFKConsultaITEM) or (AColumn = DBGFKConsultaARTIGO) or (AColumn = DBGFKConsultaSKU ) or (AColumn = DBGFKConsultaDGCP) or (AColumn = DBGFKConsultaCP_DEEP) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      if (AColumn  = DBGFKConsultaITEM) or (AColumn = DBGFKConsultaARTIGO) then
          AFont.Style := [fsBold];
    end;

    if (AColumn = DBGFKConsultaCDI) and (ANode.Values[DBGFKConsultaCDI.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;

    if ((AColumn = DBGFKConsultaDTDF) or (AColumn = DBGFKConsultaDEDF)) and (ANode.Values[DBGFKConsultaDEDF.Index] <> Null) then
    begin
      AColor      := clRed;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;
  end;
end;

procedure TFrmEstoque.FormResize(Sender: TObject);
begin
  inherited;
  PNLBottom.Height := Trunc(Self.Height * 0.42);
end;

procedure TFrmEstoque.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  PNLCAD_PRO_IMG_PIX.Caption := _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IMGCAD_PRO_IMG_PAD,True); { True - força visualização }

  DBCAD_PRO_IMG_ILA1.Hint := CAD_PRO_IMGD_ILA_INS1.AsString;
  DBCAD_PRO_IMG_ILA2.Hint := CAD_PRO_IMGD_ILA_INS2.AsString;
  DBCAD_PRO_IMG_ILA3.Hint := CAD_PRO_IMGD_ILA_INS3.AsString;
  DBCAD_PRO_IMG_ILA4.Hint := CAD_PRO_IMGD_ILA_INS4.AsString;
  DBCAD_PRO_IMG_ILA5.Hint := CAD_PRO_IMGD_ILA_INS5.AsString;
  DBCAD_PRO_IMG_ILA6.Hint := CAD_PRO_IMGD_ILA_INS6.AsString;
  DBCAD_PRO_IMG_ILA7.Hint := CAD_PRO_IMGD_ILA_INS7.AsString;
  DBCAD_PRO_IMG_ILA8.Hint := CAD_PRO_IMGD_ILA_INS8.AsString;

  BVCAD_PRO_IMG_ILA1.Hint := DBCAD_PRO_IMG_ILA1.Hint;
  BVCAD_PRO_IMG_ILA2.Hint := DBCAD_PRO_IMG_ILA2.Hint;
  BVCAD_PRO_IMG_ILA3.Hint := DBCAD_PRO_IMG_ILA3.Hint;
  BVCAD_PRO_IMG_ILA4.Hint := DBCAD_PRO_IMG_ILA4.Hint;
  BVCAD_PRO_IMG_ILA5.Hint := DBCAD_PRO_IMG_ILA5.Hint;
  BVCAD_PRO_IMG_ILA6.Hint := DBCAD_PRO_IMG_ILA6.Hint;
  BVCAD_PRO_IMG_ILA7.Hint := DBCAD_PRO_IMG_ILA7.Hint;
  BVCAD_PRO_IMG_ILA8.Hint := DBCAD_PRO_IMG_ILA8.Hint;
end;

procedure TFrmEstoque.FKConsultaAfterOpen(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if Consulta.RecNo  > 0 then
  begin
    { Catálogo }
    if CAD_PRO_IMG.State = dsInactive then
    begin
      CAD_PRO_IMG.Prepare;
      CAD_PRO_IMG.Open;
    end;
  end;
end;

procedure TFrmEstoque.FKConsultaBeforeClose(DataSet: TDataSet);
begin
  CAD_PRO_IMG.Close; { Catálogos }
end;

procedure TFrmEstoque._CAD_PRO_EST_LAN_UPD;
begin
  if ConsultaCDRO.AsInteger > 0 then

  uCAD_PRO_EST_LAN_UPD('CAD_PRO_ENI',
                       INTTOSTR(ConsultaIDEP.AsInteger),
                       INTTOSTR(ConsultaCDRO.AsInteger),

                       'IDEP',
                       'CDRO',
                       'IDCP');
end;

procedure TFrmEstoque.ACTCancelaExecute(Sender: TObject);
begin
  TFrmCAD_PRO_EST_DEL._ExecForm(Self,FrmCAD_PRO_EST_DEL);
end;

end.
