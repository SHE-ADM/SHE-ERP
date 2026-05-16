unit pPSQCAD;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefault, dxExEdtr, cxGraphics, IBQuery, dxBar, ImgList,
  ActnList, dxDockControl, dxBarExtItems, IBEvents, DB, IBCustomDataSet,
  IBStoredProc, IBSQL, IBDatabase, cxControls, dxStatusBar, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxDBTLCl, dxGrClms, math, StrUtils,
  dxsbar;

type
  TFrmPSQCAD = class(TFrmDefault)
    ConsultaIDCD: TIntegerField;
    ConsultaCDCD: TIntegerField;
    ConsultaDECD: TIBStringField;
    ConsultaRZCD: TIBStringField;
    ConsultaGPCD: TIBStringField;
    ConsultaFIN_IDEP: TIntegerField;
    ConsultaFIN_VCRD: TIBBCDField;
    ConsultaFIN_CSPD: TIntegerField;
    ConsultaFIN_PDSC: TIBBCDField;
    ConsultaFIN_VDSC: TIBBCDField;
    ConsultaDTCA: TDateTimeField;
    ConsultaDTFU: TDateField;
    ConsultaCDST: TSmallintField;
    ConsultaREST: TIBStringField;
    ConsultaCNPJ: TIBStringField;
    ConsultaFIS_CRT: TSmallintField;
    ConsultaFIS_CREDICMS: TSmallintField;
    ConsultaIE: TIBStringField;
    ConsultaFIS_INDIEDEST: TSmallintField;
    ConsultaFIS_INDFINAL: TSmallintField;
    ConsultaISUF: TIBStringField;
    ConsultaIM: TIBStringField;
    ConsultaCPF: TIBStringField;
    ConsultaIDESTRANGEIRO: TIBStringField;
    ConsultaIDCV: TSmallintField;
    ConsultaDECV: TIBStringField;
    ConsultaIDCR: TSmallintField;
    ConsultaDECR: TIBStringField;
    ConsultaCDPD: TSmallintField;
    ConsultaCDCO: TSmallintField;
    ConsultaCDPG: TSmallintField;
    ConsultaIDCT: TSmallintField;
    ConsultaDECT: TIBStringField;
    ConsultaMFRT: TSmallintField;
    ConsultaEMAIL: TIBStringField;
    ConsultaENVEMAIL: TSmallintField;
    ConsultaD_FONE: TIBStringField;
    ConsultaD_CONTATO: TIBStringField;
    ConsultaD_CONTATO2: TIBStringField;
    ConsultaD_CONTATO3: TIBStringField;
    ConsultaD_CEL_CONTATO: TIBStringField;
    ConsultaD_CEL_CONTATO2: TIBStringField;
    ConsultaD_ZAP_CONTATO: TIBStringField;
    ConsultaLOG_NU: TLargeintField;
    ConsultaTLO_TX: TIBStringField;
    ConsultaLOG_NO: TIBStringField;
    ConsultaNRO: TIBStringField;
    ConsultaXCPL: TIBStringField;
    ConsultaCEP: TIBStringField;
    ConsultaBAI_NO: TIBStringField;
    ConsultaLOC_NO: TIBStringField;
    ConsultaCMUN: TLargeintField;
    ConsultaZFM_CMUN: TLargeintField;
    ConsultaZFM_CENQ: TIBStringField;
    ConsultaUF: TIBStringField;
    ConsultaCPAIS: TSmallintField;
    ConsultaXPAIS: TIBStringField;
    ConsultaD_LOG: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaINFADFIN: TIBStringField;
    DBGConsultaIDCD: TdxDBGridMaskColumn;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    DBGConsultaRZCD: TdxDBGridMaskColumn;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaDTPV: TdxDBGridDateColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaCNPJ: TdxDBGridMaskColumn;
    DBGConsultaDECR: TdxDBGridMaskColumn;
    ConsultaC_ID: TIntegerField;
    DBGConsultaC_ID: TdxDBGridColumn;
    DBGConsultaFIN_VCRD: TdxDBGridMaskColumn;
    ConsultaCONTATO: TIBStringField;
    ConsultaDDD: TIBStringField;
    ConsultaTEL: TIBStringField;
    ConsultaIDCC: TSmallintField;
    ConsultaDECC: TIBStringField;
    ConsultaDEPG: TIBStringField;
    ConsultaDEST: TIBStringField;
    ConsultaENT_LOG_NU: TLargeintField;
    ConsultaENT_TLO_TX: TIBStringField;
    ConsultaENT_LOG_NO: TIBStringField;
    ConsultaENT_NRO: TIBStringField;
    ConsultaENT_XCPL: TIBStringField;
    ConsultaENT_CEP: TIBStringField;
    ConsultaENT_BAI_NO: TIBStringField;
    ConsultaENT_LOC_NO: TIBStringField;
    ConsultaENT_CMUN: TLargeintField;
    ConsultaENT_UF: TIBStringField;
    ConsultaFIN_INFADCAD_L1: TIBStringField;
    ConsultaFIN_INFADCAD_L2: TIBStringField;
    ConsultaFIN_PDSC_001: TIBBCDField;
    ConsultaFIN_VDSC_INI_001: TIBBCDField;
    ConsultaFIN_VDSC_FIM_001: TIBBCDField;
    ConsultaFIN_INFADCAD_L1_001: TIBStringField;
    ConsultaFIN_INFADCAD_L2_001: TIBStringField;
    ConsultaFIN_PDSC_002: TIBBCDField;
    ConsultaFIN_VDSC_INI_002: TIBBCDField;
    ConsultaFIN_VDSC_FIM_002: TIBBCDField;
    ConsultaFIN_INFADCAD_L1_002: TIBStringField;
    ConsultaFIN_INFADCAD_L2_002: TIBStringField;
    ConsultaFIN_PDSC_003: TIBBCDField;
    ConsultaFIN_VDSC_INI_003: TIBBCDField;
    ConsultaFIN_VDSC_FIM_003: TIBBCDField;
    ConsultaFIN_INFADCAD_L1_003: TIBStringField;
    ConsultaFIN_INFADCAD_L2_003: TIBStringField;
    ConsultaDTPC: TDateTimeField;
    ConsultaDTPP: TDateTimeField;
    ConsultaDTPV: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    RECCadastro: TRECCadastros;
  end;

var
  FrmPSQCAD: TFrmPSQCAD;

implementation

{$R *.dfm}

procedure TFrmPSQCAD.FormCreate(Sender: TObject);
begin
  oIRECCadastros(RECCadastro);

  { ADMIN }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM MANAGER }
  REC_SHE_DEF.GAdmin := True; { Grant   }
  REC_SHE_DEF.Id     := -3;   { Grid Focus }
  inherited;

  RECCadastro.CDCD := REC_SHE_DEF.CDEV;
  RECCadastro.VWCD := 'VW_CAD_'+IFThen(RECCadastro.CDCD = 0,'CLI',
                                IFThen(RECCadastro.CDCD = 1,'FOR',
                                IFThen(RECCadastro.CDCD = 2,'REP',
                                IFThen(RECCadastro.CDCD = 3,'TRA'))));
end;

procedure TFrmPSQCAD.FormDestroy(Sender: TObject);
begin
  inherited;
  oFRECCadastros(RECCadastro);
end;

procedure TFrmPSQCAD.ACTPesquisaExecute(Sender: TObject);
begin
  BBPSQ_CAD.Hint := IFThen(BBPSQ_CAD.Caption = 'Pesquisa Rápida','Romaneio, Container, Nota Fiscal, Pedido, Fornecedor, etc',EmptyStr);
  BEPSQ_CAD.Hint := BBPSQ_CAD.Hint;
  Application.ProcessMessages;

  { Verifica integridade da pesquisa
    Evita campos alphanuméricos em campos apenas numéricos
  }
  if (Pos(BBPSQ_CAD.Caption,'Código') > 0) and (not oBSONumero(BEPSQ_CAD.Text)) then
      Abort;

  inherited;

  { Load Default }
  if ACTPesquisa.Tag = 1 then
     Consulta.Open else
  if (BEPSQ_CAD.Text <> EmptyStr) or (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
  try

       with Consulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT PK.IDCD,PK.CDCD,PK.DECD,PK.RZCD,PK.GPCD,');

         { CAD_CLI_CRD }
         SQL.Add('COALESCE(FK.IDEP    ,0) AS FIN_IDEP    ,COALESCE(FK.VCRD        ,0) AS FIN_VCRD        ,COALESCE(FK.CSCD        ,0   ) AS FIN_CSPD,');
         SQL.Add('COALESCE(FK.PDSC    ,0) AS FIN_PDSC    ,COALESCE(FK.VDSC        ,0) AS FIN_VDSC        ,NULLIF(FK.INFADCAD_L1   ,'''') AS FIN_INFADCAD_L1 ,NULLIF(FK.INFADCAD_L2    ,'''') AS FIN_INFADCAD_L2,');
         SQL.Add('COALESCE(FK.PDSC_001,0) AS FIN_PDSC_001,COALESCE(FK.VDSC_INI_001,0) AS FIN_VDSC_INI_001,COALESCE(FK.VDSC_FIM_001,0   ) AS FIN_VDSC_FIM_001,NULLIF(FK.INFADCAD_L1_001,'''') AS FIN_INFADCAD_L1_001,NULLIF(FK.INFADCAD_L2_001,'''') AS FIN_INFADCAD_L2_001,');
         SQL.Add('COALESCE(FK.PDSC_002,0) AS FIN_PDSC_002,COALESCE(FK.VDSC_INI_002,0) AS FIN_VDSC_INI_002,COALESCE(FK.VDSC_FIM_002,0   ) AS FIN_VDSC_FIM_002,NULLIF(FK.INFADCAD_L1_002,'''') AS FIN_INFADCAD_L1_002,NULLIF(FK.INFADCAD_L2_002,'''') AS FIN_INFADCAD_L2_002,');
         SQL.Add('COALESCE(FK.PDSC_003,0) AS FIN_PDSC_003,COALESCE(FK.VDSC_INI_003,0) AS FIN_VDSC_INI_003,COALESCE(FK.VDSC_FIM_003,0   ) AS FIN_VDSC_FIM_003,NULLIF(FK.INFADCAD_L1_003,'''') AS FIN_INFADCAD_L1_003,NULLIF(FK.INFADCAD_L2_003,'''') AS FIN_INFADCAD_L2_003,');

         SQL.Add('PK.DTCA,PK.DTFU,PK.DTPC,PK.DTPP,PK.DTPV,');
         SQL.Add('PK.CDST,PK.REST,PK.DEST  ,');
         SQL.Add('PK.CNPJ,PK.FIS_CRT,PK.FIS_CREDICMS,');
         SQL.Add('PK.IE  ,PK.FIS_INDIEDEST,PK.FIS_INDFINAL,');
         SQL.Add('PK.ISUF,PK.IM,');
         SQL.Add('PK.CPF ,PK.IDESTRANGEIRO,');
         SQL.Add('PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,PK.IDCC,PK.DECC,');
         SQL.Add('PK.CDPD,PK.CDCO,PK.CDPG,PK.DEPG,');
         SQL.Add('PK.IDCT,PK.DECT,PK.MFRT,');
         SQL.Add('PK.CONTATO,PK.DDD,PK.TEL,PK.EMAIL,PK.ENVEMAIL,PK.D_FONE,PK.D_CONTATO,PK.D_CONTATO2,PK.D_CONTATO3,PK.D_CEL_CONTATO,PK.D_CEL_CONTATO2,PK.D_ZAP_CONTATO,');
         SQL.Add('PK.LOG_NU,PK.TLO_TX,PK.LOG_NO,PK.NRO,PK.XCPL,PK.CEP,PK.BAI_NO,PK.LOC_NO,PK.CMUN,ZFM_CMUN,ZFM_CENQ,PK.UF,PK.CPAIS,PK.XPAIS,PK.D_LOG,');
         SQL.Add('PK.ENT_LOG_NU,PK.ENT_TLO_TX,PK.ENT_LOG_NO,PK.ENT_NRO,PK.ENT_XCPL,PK.ENT_CEP,PK.ENT_BAI_NO,PK.ENT_LOC_NO,PK.ENT_CMUN,PK.ENT_UF,');
         SQL.Add('PK.INFADCAD,PK.INFADFIN');

         SQL.Add('FROM '+RECCadastro.VWCD+' AS PK');
         SQL.Add('LEFT JOIN CAD_CLI_CRD     AS FK ON (FK.IDCD = PK.IDCD AND FK.IDEP = '''+IFThen(RECCadastro.CDCD = 0,RECParametros.EP_ID,'99')+''')');

         if BEPSQ_CAD.Text <> EmptyStr then
         begin
           SQL.Add('WHERE ');

           if BBPSQ_CAD.Caption = 'Código' then
              SQL.Add('PK.IDCD = '''+BEPSQ_CAD.Text+'''') else
           if BBPSQ_CAD.Caption = 'Nome Fantasia' then
              SQL.Add('PK.DECD = '''+BEPSQ_CAD.Text+'''') else
           if BBPSQ_CAD.Caption = 'Razão Social' then
              SQL.Add('PK.RZCD = '''+BEPSQ_CAD.Text+'''') else
           if oBSONumero(BEPSQ_CAD.Text) then
              SQL.Add('(PK.IDCD =          '''+BEPSQ_CAD.Text+''' OR PK.CEP  CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.CNPJ CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.D_FONE CONTAINING '''+BEPSQ_CAD.Text+''')') else
              SQL.Add('(PK.DECD CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.RZCD CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.DECR CONTAINING '''+BEPSQ_CAD.Text+''' OR PK.D_LOG  CONTAINING '''+BEPSQ_CAD.Text+''')');
         end;

         { Pesquisa Período }
         if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
         begin
           SQL.Add(IFThen(BEPSQ_CAD.Text = EmptyStr,'WHERE','AND'));
           SQL.Add('CAST(PK.DTCA AS DATE) BETWEEN ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date) + ''' AND ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date) + '''');
         end;

         SQL.Add('ORDER BY PK.DECD');
       end;

       Consulta.Open;
       if (Consulta.Eof) and (BEPSQ_CAD.Text <> EmptyStr) then
           oAviso(Self.Handle,BBPSQ_CAD.Caption + ' não Encontrado !');
  finally
    DPConsulta.Caption := 'Cadastro(s) Encontrado(s)';

    BEPSQ_CAD.Text    := EmptyStr;
    BEPSQ_CAD.CurText := EmptyStr;

    BDPSQ_PER_INI.Text    := EmptyStr;
    BDPSQ_PER_INI.CurText := EmptyStr;

    BDPSQ_PER_FIM.Text    := EmptyStr;
    BDPSQ_PER_FIM.CurText := EmptyStr;

    Application.ProcessMessages;
  end;
end;

procedure TFrmPSQCAD.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsultaC_ID.Value := Consulta.RecNo;
end;

procedure TFrmPSQCAD.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaFIN_VCRD.Visible := (RECCadastro.CDCD = 0);
end;

procedure TFrmPSQCAD.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaDEST.Index] = 'PRÉ-Consulta' then
    begin
      AFont.Color := clBlack;
      AColor      := clInfoBk;
    end else
    if ANode.Values[DBGConsultaDEST.Index] = 'INATIVO' then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end else
    if ANode.Values[DBGConsultaDEST.Index] = 'SUSPENSO' then
    begin
      AFont.Color := clWhite;
      AColor      := clRed;
    end;
  end;
end;

procedure TFrmPSQCAD.DBGConsultaDblClick(Sender: TObject);
begin
  inherited;
  if ConsultaREST.AsString <> 'A' then
  oException(DBGConsulta,'Consulta '+ConsultaDEST.AsString+' !');

  REC_SHE_DEF.Selected := (ConsultaIDCD.AsInteger > 0);
  Close;
end;

procedure TFrmPSQCAD.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then
  Close else

  if key = vk_return then
  DBGConsultaDblClick(Self);
end;

procedure TFrmPSQCAD.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaDECD.Field.FocusControl;
end;

end.
