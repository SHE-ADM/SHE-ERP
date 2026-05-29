unit pcad_cli;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, StrUtils, rxSpeedbar, cxGraphics, IBSQL, cxControls, dxStatusBar,
  pConsulta, ActnList;

type
  Tfrmcad_cli = class(TFrmConsulta)
    ACTCAD_CLI_INF: TAction;
    CadastroID: TLargeintField;
    CadastroEP_ID: TSmallintField;
    CadastroDTEV: TDateTimeField;
    CadastroDTCA: TDateTimeField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDEST: TIBStringField;
    CadastroCRD_DEST: TIBStringField;
    CadastroCD_ID: TIntegerField;
    CadastroCD_NO: TIBStringField;
    CadastroCD_RZ_NO: TIBStringField;
    CadastroCD_GP_NO: TIBStringField;
    CadastroCNPJ: TIBStringField;
    CadastroCNPJ_MASK: TIBStringField;
    CadastroIE: TIBStringField;
    CadastroISUF: TIBStringField;
    CadastroCPF: TIBStringField;
    CadastroCPF_MASK: TIBStringField;
    CadastroIDESTRANGEIRO: TIBStringField;
    CadastroCR_ID: TSmallintField;
    CadastroCR_NO: TIBStringField;
    CadastroCV_ID: TSmallintField;
    CadastroCV_NO: TIBStringField;
    CadastroCT_ID: TSmallintField;
    CadastroCT_NO: TIBStringField;
    CadastroTEL_MASK: TIBStringField;
    CadastroCEL_TEL_MASK: TIBStringField;
    CadastroZAP_TEL_MASK: TIBStringField;
    CadastroEMAIL: TIBStringField;
    CadastroLOG_NO_ABREV: TIBStringField;
    CadastroBAI_NO_ABREV: TIBStringField;
    CadastroLOC_NO_ABREV: TIBStringField;
    CadastroUF: TIBStringField;
    CadastroCRD_VPAD: TIBBCDField;
    CadastroCRD_VTAP: TIBBCDField;
    CadastroCRD_VTSD: TIBBCDField;
    CadastroCRD_VTKT: TIBBCDField;
    CadastroCRD_BQST: TSmallintField;
    CadastroFIS_DTFU: TDateField;
    CadastroFIS_CRT_NO: TIBStringField;
    CadastroINFADCAD: TIBStringField;
    DBGConsultaDTCA: TdxDBGridDateColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaCD_ID: TdxDBGridMaskColumn;
    DBGConsultaCD_NO: TdxDBGridMaskColumn;
    DBGConsultaCD_RZ_NO: TdxDBGridMaskColumn;
    DBGConsultaCD_GP_NO: TdxDBGridMaskColumn;
    DBGConsultaCNPJ_MASK: TdxDBGridMaskColumn;
    DBGConsultaIE: TdxDBGridMaskColumn;
    DBGConsultaISUF: TdxDBGridMaskColumn;
    DBGConsultaCPF_MASK: TdxDBGridMaskColumn;
    DBGConsultaCR_NO: TdxDBGridMaskColumn;
    DBGConsultaCV_NO: TdxDBGridMaskColumn;
    DBGConsultaTEL_MASK: TdxDBGridMaskColumn;
    DBGConsultaCEL_TEL_MASK: TdxDBGridMaskColumn;
    DBGConsultaZAP_TEL_MASK: TdxDBGridMaskColumn;
    DBGConsultaEMAIL: TdxDBGridMaskColumn;
    DBGConsultaLOG_NO_ABREV: TdxDBGridMaskColumn;
    DBGConsultaBAI_NO_ABREV: TdxDBGridMaskColumn;
    DBGConsultaLOC_NO_ABREV: TdxDBGridMaskColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    DBINFADAD: TdxDBMemo;
    CadastroPED_DT: TDateField;
    CadastroNFE_DT: TDateField;
    CadastroNFS_DT: TDateField;
    SICAD_CLI_CRD: TSpeedItem;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure CadastroAfterClose(DataSet: TDataSet);
    procedure ACTCAD_CLI_INFExecute(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure SICAD_CLI_CRDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_cli: Tfrmcad_cli;

implementation

uses uPrincipal, bPrincipal,
  pPesquisa_OLD, pcad_cli_edi;

{$R *.dfm}

procedure Tfrmcad_cli.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_CLI_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Cadastro';
  REC_SHE_DEF.GReferencia := 'Clientes';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  ACTPesquisa.Execute;
end;

procedure Tfrmcad_cli.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  inherited;
  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,
                        IFThen((PosCount = 02),070,
                        IFThen((PosCount = 02),085,
                        IFThen((PosCount = 02),100,
                        IFThen((PosCount = 02),115,130))))))));
end;

procedure Tfrmcad_cli.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGConsultaDEST) and (ANode.Values[DBGConsultaDEST.Index] <> Null) then
    if (ANode.Values[DBGConsultaDEST.Index] = 'PRÉ-CADASTRO') then
    begin
      AFont.Color := clBlack;
      AColor      := clInfoBk;
    end else
    
    if (ANode.Values[DBGConsultaDEST.Index] = 'INATIVO') then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;
  end;
end;

procedure Tfrmcad_cli.CadastroAfterClose(DataSet: TDataSet);
begin
  SBRodape.Panels[1].Text := EmptyStr;
end;

procedure Tfrmcad_cli.ACTCAD_CLI_INFExecute(Sender: TObject);
begin
  uPSQSCORE(self,CadastroID.AsString,EmptyStr);
end;

procedure Tfrmcad_cli.ACTMEAppendExecute(Sender: TObject);
begin
  frmcad_cli_edi := TFrmcad_cli_edi.Create(Nil,0);
  try frmcad_cli_edi.ShowModal;
  finally
    FreeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmcad_cli.ACTMEEditExecute(Sender: TObject);
begin
  frmcad_cli_edi := TFrmcad_cli_edi.Create(Nil,CadastroID.AsInteger);
  try frmcad_cli_edi.ShowModal;
  finally
    FreeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmcad_cli.SICAD_CLI_CRDClick(Sender: TObject);
begin
  if CadastroId.AsInteger = 0 then
  oException(DBGConsulta,'Cliente não Selecionado !');

  uPSQSCORE(self,CadastroID.AsString,EmptyStr);
end;

procedure Tfrmcad_cli.ACTPesquisaExecute(Sender: TObject);
var
  i: word;
begin
  inherited;

  if REC_SHE_DEF.FInitialize then
  begin
    if RECUsuarios.Grupo = 'VEN' then
    Cadastro.SQL.Add('WHERE    PK.CV_ID = ''' + RECUsuarios.ID + '''');
    Cadastro.SQL.Add('ORDER BY PK.DTEV DESC');
  end else

  try
    FrmPesquisa_OLD := TFrmPesquisa_OLD.Create(Nil);
    FrmPesquisa_OLD.Tag := 1;
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

      SQL.Add('SELECT PK.ID   ,PK.EP_ID,');
      SQL.Add('       PK.DTEV ,PK.DTCA ,CAST(PK.PED_DT AS DATE) AS PED_DT,CAST(PK.NFE_DT AS DATE) AS NFE_DT,CAST(PK.NFS_DT AS DATE) AS NFS_DT,');
      SQL.Add('       PK.CDST ,PK.REST ,PK.DEST,CRD.CRD_DEST AS CRD_DEST,');
      SQL.Add('       PK.CD_ID,PK.CD_NO,PK.CD_RZ_NO,PK.CD_GP_NO ,');
      SQL.Add('       PK.CNPJ ,FCNPJ(PK.CNPJ) AS CNPJ_MASK,PK.IE,PK.ISUF,');
      SQL.Add('       PK.CPF  ,FCPF(PK.CPF)   AS CPF_MASK ,PK.IDESTRANGEIRO,');

      SQL.Add('       PK.CR_ID,PK.CR_NO,PK.CV_ID,PK.CV_NO,PK.CT_ID,PK.CT_NO,');

      SQL.Add('       TRIM(CAST(FTEL(PK.DDD_NU,PK.TEL_NU) || '' '' || LEFT(PK.CONTATO_NO,10) AS VARCHAR(30))) TEL_MASK,');
      SQL.Add('       FTEL(PK.CEL_DDD_NU,PK.CEL_TEL_NU) AS CEL_TEL_MASK,');
      SQL.Add('       FTEL(PK.ZAP_DDD_NU,PK.ZAP_TEL_NU) AS ZAP_TEL_MASK,');
      SQL.Add('       TRIM(CAST(PK.EMAIL || '' '' || PK.EMAIL2 || '' '' || PK.EMAIL3 AS VARCHAR(200))) AS EMAIL,');

      SQL.Add('       PK.LOG_NO_ABREV,PK.BAI_NO_ABREV,PK.LOC_NO_ABREV,PK.UF,');

      SQL.Add('       CRD.CRD_VPAD,CRD.CRD_VTAP,CRD.CRD_VTSD,CRD.CRD_VTKT,CRD.CRD_BQST,');
      SQL.Add('       PK.FIS_DTFU,PK.FIS_CRT_NO,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM      VW_PSQ_CAD_CLI  AS PK');
      SQL.Add('LEFT JOIN CAD_CLI_CRD_FIN AS CRD ON (CRD.EP_ID = :EP_ID AND CRD.CD_ID = PK.CD_ID)');

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
        for i := 1 to 9 do
        begin
          FrmPesquisa_OLD.CField := oStrTran(FrmPesquisa_OLD.CField,'PV_PK.','FK.');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('PED_VEN_CAB','_',i,3) + ' AS FK');
          SQL.Add('WHERE  FK.CD_ID = PK.CD_ID');
          SQL.Add('AND ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');

          if i < 9 then
          SQL.Add('UNION');
        end;

        { FINANCEIRO }
        if Pos('FN_PK.',FrmPesquisa_OLD.CField) > 0 then
        for i := 1 to 9 do
        begin
          FrmPesquisa_OLD.CField := oStrTran(FrmPesquisa_OLD.CField,'FN_PK.','FK.');

          { BANCÁRIO }
          SQL.Add('SELECT  FIRST 1 FK.ID FROM ' +  oREPZero('VW_PSQ_FIN_REC_BAN','_',i,3) + ' AS FK');
          SQL.Add('WHERE   FK.CD_ID = PK.CD_ID');
          SQL.Add('AND ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');

          { CARTEIRA }
          SQL.Add('UNION');
          SQL.Add('SELECT  FIRST 1 FK.ID FROM ' +  oREPZero('VW_PSQ_FIN_REC_CAR','_',i,3) + ' AS FK');
          SQL.Add('WHERE   FK.CD_ID = PK.CD_ID');
          SQL.Add('AND ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');

          if i < 9 then
          SQL.Add('UNION');
        end;

        SQL.Add(')'); { FIM }
      end;

      SQL.Add('ORDER BY ' + IFThen(LeftStr(FrmPesquisa_OLD.CField,2) = 'PK',FrmPesquisa_OLD.CField,'PK.DTEV DESC'));
    end;

    if FrmPesquisa_OLD.EDTXT.Text <> EmptyStr then
    begin
      APSQ_CAD := FrmPesquisa_OLD.cbCAMPO.Text;
      SBRodape.Panels[1].Text := SBRodape.Panels[1].Text + ' Pesquisado ' + FrmPesquisa_OLD.cbCampo.Text + ' ' + FrmPesquisa_OLD.EDTXT.Text;
    end;

    FreeAndNil(FrmPesquisa_OLD);
  end;

  if Cadastro.State = dsInactive then
  begin
    Cadastro.ParamByName('EP_ID').Value := RECParametros.EP_ID;
    Cadastro.Prepare;
    Cadastro.Open;
  end;

  DBGConsultaCD_NO.Field.FocusControl;
  if Showing then
  DBGConsulta.SetFocus;
end;

end.

