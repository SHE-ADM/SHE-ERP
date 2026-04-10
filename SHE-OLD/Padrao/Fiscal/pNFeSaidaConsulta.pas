unit pNFeSaidaConsulta;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultConsultaGrid, cxGraphics, dxExEdtr, dxsbar, ActnList,
  dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents, IBStoredProc,
  IBSQL, IBDatabase, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls,
  dxStatusBar, dxDBTLCl, dxGrClms, math, StrUtils, DBCtrls, StdCtrls,
  ComCtrls, DateUtils;

type
  TFrmNFeSaidaConsulta = class(TFrmDefaultConsultaGrid)
    DSRodape: TdxDockSite;
    ILDockIcons: TImageList;
    DPHistorico: TdxDockPanel;
    Historico: TIBQuery;
    DTSHistorico: TDataSource;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DBGHistorico: TdxDBGrid;
    CadastroID: TIntegerField;
    CadastroIDEP: TSmallintField;
    CadastroCDNF: TLargeintField;
    CadastroDTEM: TDateTimeField;
    CadastroDTSA: TDateTimeField;
    CadastroDESTINATARIO: TIBStringField;
    CadastroVENDEDOR: TIBStringField;
    CadastroREPRESENTANTE: TIBStringField;
    CadastroTRANSPORTADORA: TIBStringField;
    CadastroMOTORISTA: TIBStringField;
    CadastroPLACA: TIBStringField;
    CadastroVOLUME: TIBStringField;
    CadastroPESOB: TIBBCDField;
    CadastroPESOL: TIBBCDField;
    CadastroPEDIDO: TIBStringField;
    CadastroDTPV: TDateTimeField;
    CadastroQTPC: TSmallintField;
    CadastroSEPARADOR: TIBStringField;
    CadastroCONFERENTE: TIBStringField;
    CadastroDTCONF: TDateTimeField;
    CadastroINFAD: TMemoField;
    CadastroPAR_FANT: TIBStringField;
    DBGConsultaCDNF: TdxDBGridColumn;
    DBGConsultaDTEM: TdxDBGridDateColumn;
    DBGConsultaPAR_FANT: TdxDBGridMaskColumn;
    DBGConsultaDTSA: TdxDBGridDateColumn;
    DBGConsultaTRANSPORTADORA: TdxDBGridMaskColumn;
    DBGConsultaMOTORISTA: TdxDBGridMaskColumn;
    DBGConsultaPLACA: TdxDBGridMaskColumn;
    DBGConsultaVOLUME: TdxDBGridMaskColumn;
    DBGConsultaPESOB: TdxDBGridMaskColumn;
    DBGConsultaPESOL: TdxDBGridMaskColumn;
    DBGConsultaDESTINATARIO: TdxDBGridMaskColumn;
    DBGConsultaVENDEDOR: TdxDBGridMaskColumn;
    DBGConsultaREPRESENTANTE: TdxDBGridMaskColumn;
    DBGConsultaPEDIDO: TdxDBGridMaskColumn;
    DBGConsultaDTPV: TdxDBGridDateColumn;
    DBGConsultaQTPC: TdxDBGridMaskColumn;
    DBGConsultaSEPARADOR: TdxDBGridMaskColumn;
    CadastroC_ID: TIntegerField;
    DBGConsultaC_ID: TdxDBGridColumn;
    HistoricoNFE_ITEMPED: TIBStringField;
    HistoricoPRODUTO: TIBStringField;
    HistoricoDESCRICAO: TIBStringField;
    HistoricoUNIDADE: TIBStringField;
    HistoricoQUANTIDADE: TIBBCDField;
    HistoricoPRECO: TFloatField;
    HistoricoTOTAL: TIBBCDField;
    HistoricoID: TIntegerField;
    DBGHistoricoNFE_ITEMPED: TdxDBGridMaskColumn;
    DBGHistoricoPRODUTO: TdxDBGridMaskColumn;
    DBGHistoricoDESCRICAO: TdxDBGridMaskColumn;
    DBGHistoricoUNIDADE: TdxDBGridMaskColumn;
    DBGHistoricoQUANTIDADE: TdxDBGridMaskColumn;
    DBGHistoricoPRECO: TdxDBGridMaskColumn;
    DBGHistoricoTOTAL: TdxDBGridMaskColumn;
    DPContato: TdxDockPanel;
    dxHorizContainerDockSite2: TdxHorizContainerDockSite;
    BVContato: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText8: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText9: TDBText;
    DBText16: TDBText;
    DBText15: TDBText;
    DBText14: TDBText;
    DBText13: TDBText;
    DBText11: TDBText;
    DBText10: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CadastroIDCT: TSmallintField;
    CadastroCONTATO: TIBStringField;
    CadastroFONE2: TIBStringField;
    CadastroCELULAR: TIBStringField;
    CadastroFONE3: TIBStringField;
    CadastroEMAIL: TIBStringField;
    CadastroEMAIL2: TIBStringField;
    CadastroEMAIL3: TIBStringField;
    CadastroEMAILCEL: TIBStringField;
    CadastroTLGR: TIBStringField;
    CadastroXLGR: TIBStringField;
    CadastroNRO: TIBStringField;
    CadastroCEP: TIBStringField;
    CadastroXBAIRRO: TIBStringField;
    CadastroXMUN: TIBStringField;
    CadastroUF: TIBStringField;
    CadastroC_LOGRADOURO: TStringField;
    CadastroC_CEP: TStringField;
    CadastroFONE: TIBStringField;
    CadastroTIPO: TIBStringField;
    DBGConsultaTIPO: TdxDBGridMaskColumn;
    BLBMes: TdxBarLargeButton;
    BLBAno: TdxBarLargeButton;
    BLBGeral: TdxBarLargeButton;
    ACTPesquisa_Mes: TAction;
    ACTPesquisa_Ano: TAction;
    ACTPesquisa_Geral: TAction;
    CadastroDESTINATARIO_RAZAO: TIBStringField;
    CadastroAJUDANTE1: TIBStringField;
    CadastroAJUDANTE2: TIBStringField;
    DBGConsultaAJUDANTE1: TdxDBGridMaskColumn;
    DBGConsultaAJUDANTE2: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure ACTPesquisa_MesExecute(Sender: TObject);
    procedure ACTPesquisa_AnoExecute(Sender: TObject);
    procedure ACTPesquisa_GeralExecute(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNFeSaidaConsulta: TFrmNFeSaidaConsulta;

implementation

{$R *.dfm}

procedure TFrmNFeSaidaConsulta.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := EmptyStr; { Eventos }

  { Grant }
  REC_SHE_DEF.GAdmin := True;
  inherited;

  BLBMes.Caption := oRETMesExtenso(RECParametros.SHE_DATA);
  BLBAno.Caption := oStrZero(YearOF(RECParametros.SHE_DATA),4);

  ACTPesquisa_Mes.Execute;
end;

procedure TFrmNFeSaidaConsulta.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if Historico.State = dsInactive then
     Historico.Open;
end;

procedure TFrmNFeSaidaConsulta.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 = 0 then
    begin
      AFont.Color := clBlack;
           AColor := $00F1F2F3;
    end;

    if (AColumn = DBGConsultaPAR_FANT) or (AColumn = DBGConsultaCDNF) or (AColumn = DBGConsultaDTEM)then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;
  end;         
end;

procedure TFrmNFeSaidaConsulta.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value := Cadastro.RecNo;
  CadastroC_LOGRADOURO.Value := CadastroTLGR.AsString+' '+CadastroXLGR.AsString;
  CadastroC_CEP.Value        := LeftStr(CadastroCEP.AsString,5)+'-'+RightStr(CadastroCEP.AsString,3);
end;

procedure TFrmNFeSaidaConsulta.ACTPesquisa_MesExecute(Sender: TObject);
begin
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIRST 5000 PS.FANTASIA AS PAR_FANT,');
    SQL.Add('         PK.*,');
    SQL.Add('         CT.CONTATO,CT.FONE,CT.FONE2,CT.FONE3,CT.CELULAR,');
    SQL.Add('         CT.EMAIL,CT.EMAIL2,CT.EMAIL3,CT.EMAILCEL,');
    SQL.Add('         CT.TLGR,CT.XLGR,CT.NRO,CT.CEP,CT.XBAIRRO,CT.XMUN,CT.UF');
    SQL.Add('FROM     NFE_LOG AS PK');
    SQL.Add('JOIN     TAB_PAR_SIS AS PS ON (PS.ID = PK.IDEP)');
    SQL.Add('LEFT');
    SQL.Add('JOIN     SP_PSQ_CAD_TRA(PK.IDCT,''ID'') AS CT ON (1 = 1)');
    SQL.Add('WHERE    PK.DTSA BETWEEN ''' + FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA_MES_PK) + ''' AND ''' + FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA_MES_FK) + '''');
    SQL.Add('ORDER BY PK.DTSA DESC');
    Open;
  end;
end;

procedure TFrmNFeSaidaConsulta.ACTPesquisa_AnoExecute(Sender: TObject);
begin
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIRST 5000 PS.FANTASIA AS PAR_FANT,');
    SQL.Add('         PK.*,');
    SQL.Add('         CT.CONTATO,CT.FONE,CT.FONE2,CT.FONE3,CT.CELULAR,');
    SQL.Add('         CT.EMAIL,CT.EMAIL2,CT.EMAIL3,CT.EMAILCEL,');
    SQL.Add('         CT.TLGR,CT.XLGR,CT.NRO,CT.CEP,CT.XBAIRRO,CT.XMUN,CT.UF');
    SQL.Add('FROM     NFE_LOG AS PK');
    SQL.Add('JOIN     TAB_PAR_SIS AS PS ON (PS.ID = PK.IDEP)');
    SQL.Add('LEFT');
    SQL.Add('JOIN     SP_PSQ_CAD_TRA(PK.IDCT,''ID'') AS CT ON (1 = 1)');
    SQL.Add('WHERE    LPad(Extract(Year FROM PK.DTSA),4,0) = LPad(Extract(Year FROM CURRENT_DATE),4,0)');
    SQL.Add('ORDER BY PK.DTSA DESC');
    Open;
  end;
end;

procedure TFrmNFeSaidaConsulta.ACTPesquisa_GeralExecute(Sender: TObject);
begin
  with Cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIRST 5000 PS.FANTASIA AS PAR_FANT,');
    SQL.Add('         PK.*,');
    SQL.Add('         CT.CONTATO,CT.FONE,CT.FONE2,CT.FONE3,CT.CELULAR,');
    SQL.Add('         CT.EMAIL,CT.EMAIL2,CT.EMAIL3,CT.EMAILCEL,');
    SQL.Add('         CT.TLGR,CT.XLGR,CT.NRO,CT.CEP,CT.XBAIRRO,CT.XMUN,CT.UF');
    SQL.Add('FROM     NFE_LOG AS PK');
    SQL.Add('JOIN     TAB_PAR_SIS AS PS ON (PS.ID = PK.IDEP)');
    SQL.Add('LEFT');
    SQL.Add('JOIN     SP_PSQ_CAD_TRA(PK.IDCT,''ID'') AS CT ON (1 = 1)');
    SQL.Add('WHERE    PK.ID > 0');
    SQL.Add('ORDER BY PK.DTSA DESC');
    Open;
  end;
end;

procedure TFrmNFeSaidaConsulta.FormPaint(Sender: TObject);
begin
  inherited;
  if (Showing) and (ActiveControl <> DBGConsulta) then
  begin
    DBGConsulta.FocusedColumn := DBGConsultaCDNF.ColIndex;
    DBGConsulta.SetFocus;
  end;
end;

end.
