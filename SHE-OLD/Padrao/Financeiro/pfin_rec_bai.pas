unit pfin_rec_bai;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxSpeedBar, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, ppadr3, dxDBTLCl,
  dxGrClms, math, StrUtils, dxExEdtr, dxPageControl, dxEditor, dxDBELib,
  IBSQL, ActnList;

type
  Tfrmfin_rec_bai = class(Tfrmpadr3)
    DTSCadastro: TDataSource;
    FATConsulta: TIBQuery;
    SIMPesquisa: TSpeedItem;
    Cadastro: TIBDataSet;
    CadastroID: TIntegerField;
    CadastroFIN_CCAB: TIntegerField;
    CadastroFIN_CDBX: TIntegerField;
    CadastroFIN_CDCX: TIntegerField;
    CadastroFIN_CCLI: TIntegerField;
    CadastroFIN_DCLI: TIBStringField;
    CadastroFIN_CVEN: TIntegerField;
    CadastroFIN_VEND: TIBStringField;
    CadastroFIN_CREP: TIntegerField;
    CadastroFIN_DREP: TIBStringField;
    CadastroFIN_PRAZ: TSmallintField;
    CadastroFIN_ATRA: TSmallintField;
    CadastroFIN_CONC: TSmallintField;
    CadastroFIN_DCAD: TDateField;
    CadastroFIN_DVEN: TDateField;
    CadastroFIN_DPAG: TDateField;
    CadastroFIN_DMED: TDateField;
    CadastroFIN_DATR: TDateField;
    CadastroFIN_STDO: TIBStringField;
    CadastroFIN_DOCT: TIBStringField;
    CadastroFIN_BANC: TIBStringField;
    CadastroFIN_DBAN: TIBStringField;
    CadastroFIN_AGEN: TIBStringField;
    CadastroFIN_CONT: TIBStringField;
    CadastroFIN_NCHQ: TIBStringField;
    CadastroFIN_MCHQ: TSmallintField;
    CadastroFIN_TIPO: TIBStringField;
    CadastroFIN_STFI: TIBStringField;
    CadastroFIN_STCO: TIBStringField;
    CadastroFIN_VALO: TIBBCDField;
    CadastroFIN_VPAG: TIBBCDField;
    CadastroFIN_VPEN: TIBBCDField;
    CadastroFIN_OBSE: TMemoField;
    CadastroFIN_STA: TIBStringField;
    CadastroFIN_COBR: TIBStringField;
    CadastroFIN_RCLI: TIBStringField;
    CadastroFIN_RREP: TIBStringField;
    consulta_S: TIBQuery;
    CadastroFIN_DBAI: TDateField;
    CadastroFIN_VENC: TIBBCDField;
    CadastroFIN_DFIN: TIBStringField;
    CadastroFIN_CPPL: TIntegerField;
    CadastroFIN_CCUS: TIntegerField;
    CadastroFIN_CDCO: TIntegerField;
    CadastroFIN_CDBA: TIBStringField;
    CadastroFIN_DEBA: TIBStringField;
    CadastroFIN_CTNR: TIBStringField;
    CadastroFIN_VMUL: TIBBCDField;
    CadastroFIN_PMUL: TIBBCDField;
    CadastroFIN_VJUR: TIBBCDField;
    CadastroFIN_PJUR: TIBBCDField;
    CadastroFIN_VDES: TIBBCDField;
    CadastroFIN_PDES: TIBBCDField;
    SIMTPagos: TSpeedItem;
    SIMTPendentes: TSpeedItem;
    CadastroFIN_CDRD: TIntegerField;
    CadastroFIN_VCHQ: TIBBCDField;
    CadastroFIN_CPF: TIBStringField;
    CadastroFIN_DERD: TIBStringField;
    SIMImportaCNAB: TSpeedItem;
    openARQ: TOpenDialog;
    TSheild: TIBTransaction;
    pnlBOT: TPanel;
    SIMNovo: TSpeedItem;
    CadastroFIN_DTST: TDateTimeField;
    CadastroFIN_TITU: TIBStringField;
    FATConsultaID: TIntegerField;
    FATConsultaFIN_CDBX: TIntegerField;
    FATConsultaFIN_DOCT: TIBStringField;
    FATConsultaFIN_TITU: TIBStringField;
    FATConsultaFIN_CCLI: TIntegerField;
    FATConsultaFIN_CVEN: TIntegerField;
    FATConsultaFIN_CREP: TIntegerField;
    FATConsultaFIN_CONC: TSmallintField;
    FATConsultaFIN_DCAD: TDateField;
    FATConsultaFIN_DVEN: TDateField;
    FATConsultaFIN_DPAG: TDateField;
    FATConsultaFIN_STDO: TIBStringField;
    FATConsultaFIN_TIPO: TIBStringField;
    FATConsultaFIN_STFI: TIBStringField;
    FATConsultaFIN_VALO: TIBBCDField;
    FATConsultaFIN_VPAG: TIBBCDField;
    FATConsultaFIN_VPEN: TIBBCDField;
    FATConsultaFIN_DCAN: TDateField;
    FATConsultaFIN_VMUL: TIBBCDField;
    FATConsultaFIN_VJUR: TIBBCDField;
    FATConsultaFIN_VDES: TIBBCDField;
    FATConsultaFIN_DBAI: TDateField;
    FATConsultaFIN_CTNR: TIBStringField;
    FATConsultaFIN_CDDP: TIBStringField;
    FATConsultaFIN_DTDP: TDateTimeField;
    FATConsultaFIN_CDBC: TIBStringField;
    FATConsultaFIN_DTBC: TDateTimeField;
    FATConsultaFIN_OBSE: TMemoField;
    FATConsultaFIN_CDCX: TIntegerField;
    FATConsultaCLI_FANT: TIBStringField;
    FATConsultaCLI_RAZA: TIBStringField;
    FATConsultaUSU_DUSU: TIBStringField;
    FATConsultaREP_FANT: TIBStringField;
    PNLSumario: TPanel;
    GBInfoAdicional: TGroupBox;
    DBGInfoAdicional: TdxDBGrid;
    DBGInfoAdicionalFIN_DCLI: TdxDBGridMaskColumn;
    DBGInfoAdicionalFIN_VEND: TdxDBGridMaskColumn;
    DBGInfoAdicionalFIN_DREP: TdxDBGridMaskColumn;
    GBInfoComplementar: TGroupBox;
    DBInfoComplementar: TdxDBMemo;
    DBGInfoAdicionalFIN_RCLI: TdxDBGridMaskColumn;
    GBContas: TGroupBox;
    DBGConsulta: TdxDBGrid;
    DBGConsultaFIN_COBR: TdxDBGridCheckColumn;
    DBGConsultaFIN_STFI: TdxDBGridPickColumn;
    DBGConsultaFIN_TITU: TdxDBGridMaskColumn;
    DBGConsultaFIN_STDO: TdxDBGridMaskColumn;
    DBGConsultaFIN_DCAD: TdxDBGridDateColumn;
    DBGConsultaFIN_DVEN: TdxDBGridDateColumn;
    DBGConsultaFIN_VALO: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VJUR: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VMUL: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VDES: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_VPAG: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_DPAG: TdxDBGridDateColumn;
    DBGConsultaFIN_VPEN: TdxDBGridCurrencyColumn;
    DBGConsultaFIN_TIPO: TdxDBGridMaskColumn;
    DBGConsultaFIN_DCLI: TdxDBGridMaskColumn;
    DBGConsultaFIN_STA: TdxDBGridMaskColumn;
    GBMenuEdicao: TGroupBox;
    SBMenuEdicao: TSpeedBar;
    SSMenuEdicao: TSpeedbarSection;
    SIMEAppend: TSpeedItem;
    SIMEEdit: TSpeedItem;
    SIMEDelete: TSpeedItem;
    SIMEPost: TSpeedItem;
    SIMECancel: TSpeedItem;
    procedure FormCreate(Sender: TObject);
    procedure CadastroAfterDelete(DataSet: TDataSet);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
    procedure SIESalvaClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure CadastroBeforeDelete(DataSet: TDataSet);
    procedure SIMTPagosClick(Sender: TObject);
    procedure SIMTPendentesClick(Sender: TObject);
    procedure SIMImportaCNABClick(Sender: TObject);
    procedure SIEExcluiClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SIMPesquisaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SIECancelaClick(Sender: TObject);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure SIMNovoClick(Sender: TObject);
    procedure DBGDescontosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CadastroBeforeCancel(DataSet: TDataSet);
    procedure DBGConsultaFIN_VJURValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGConsultaFIN_VPAGValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGConsultaFIN_VMULValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGConsultaFIN_VDESValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGConsultaFIN_STFIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure ACTMPostExecute(Sender: TObject);
    procedure SIMEAppendClick(Sender: TObject);
    procedure SIMEEditClick(Sender: TObject);
    procedure SIMEDeleteClick(Sender: TObject);
    procedure SIMEPostClick(Sender: TObject);
    procedure SIMECancelClick(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    procedure _TABEdicao;
    procedure _INSConta;
    procedure _PSQConta(ACampo,ATexto: String;ABlock: Boolean = False;AImporta: Boolean = False);
    procedure _Encargos;
  public
    { Public declarations }
  end;

var
  frmfin_rec_bai: Tfrmfin_rec_bai;

implementation

uses uPrincipal,
  pPesquisa_OLD;

{$R *.dfm}

procedure Tfrmfin_rec_bai.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIN_REC_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Financeiro';
  REC_SHE_DEF.GReferencia := 'Recebimentos';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  _TABEdicao;
  with Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA AS PK WHERE PK.FIN_REC = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
    Open;
    while not eof do
    begin
      DBGConsultaFIN_STFI.Items.Add(Fields[1].AsString);
      next;
    end;
  end;

  with FATConsulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_BAI.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT');
    SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,'+SLPrincipal.Values['fin_baixa']+' "FIN_BAI"');
    SQL.Add('WHERE    FIN_BAI.FIN_CCLI = CAD_CLI.ID');
    SQL.Add('AND      FIN_BAI.FIN_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND      FIN_BAI.FIN_CREP = CAD_REP.ID');
    SQL.Add('AND      FIN_TITU         = 0');
    SQL.Add('ORDER BY FIN_TITU');
    Prepare;
  end;
end;

procedure Tfrmfin_rec_bai.FormActivate(Sender: TObject);
begin
  inherited;
  Caption := SLPrincipal.Values['fin_caption'];
  Hint    := SLPrincipal.Values['fin_hint'];
end;

procedure Tfrmfin_rec_bai.FormDestroy(Sender: TObject);
begin
  inherited;
  frmfin_rec_bai := Nil;
end;

procedure Tfrmfin_rec_bai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 118 then SIMPesquisa.Click;
end;

procedure Tfrmfin_rec_bai.SIMPesquisaClick(Sender: TObject);
begin
  if Cadastro.State in [dsEdit,dsInsert] then
  Cadastro.Post;
  ActiveControl := Nil;

  FrmPesquisa_OLD := TFrmPesquisa_OLD.Create(Nil);
  FrmPesquisa_OLD.cbCAMPO.Text := 'Título';
  try
    FrmPesquisa_OLD.Tag := 10;
    FrmPesquisa_OLD.ShowModal;
    if FrmPesquisa_OLD.Editado then
    try
      Tag := 1;
      Cadastro.DisableControls;
      _PSQConta(FrmPesquisa_OLD.cField,FrmPesquisa_OLD.edTXT.Text,True);
    finally
      Tag := 0;
      Cadastro.EnableControls;
      oRTransact(TSheild);
    end;
  finally
    FreeAndNil(FrmPesquisa_OLD);
    DBGConsulta.SetFocus;
    DBGConsulta.FocusedColumn := 1;
  end;
end;

procedure Tfrmfin_rec_bai.SIMImportaCNABClick(Sender: TObject);
var
  cNomearq,Linha: string;
             arq: TextFile;
begin
  if not openARQ.Execute then
  Abort;

  try
    Tag := 1;

    Cadastro.DisableControls;
    cNomearq := openARQ.FileName;
    AssignFile ( arq, cNomearq );
    Reset ( arq );
    try
      while not Eof ( arq ) do
      begin
        ReadLn ( arq, linha );
        if (copy(linha,1,1) = '2') and (Trim(copy(linha,48,10)) <> '') then
        begin
          sbMSG.Panels[1].Text := 'Aguarde.... Lendo Títulos '+Trim(copy(linha,48,10));
          Application.ProcessMessages;

          _PSQConta('FIN_TITU',Trim(copy(linha,48,10)),False,True);
          
          if (FATConsultaFIN_TITU.AsString = Trim(copy(linha,48,10))) and
             (Pos('PAGO',FATConsultaFIN_STFI.AsString) = 0)   and (FATConsultaFIN_STFI.AsString <> 'CANCELADO') and
             (Pos('/P'  ,FATConsultaFIN_TITU.AsString) = 0)   and (Pos('/N',FATConsultaFIN_TITU.AsString) = 0)  then
          begin
            Cadastro.Append;
            CadastroFIN_CCAB.Value := FATConsultaID.AsInteger;
            CadastroFIN_CDBX.Value := FATConsultaFIN_CDBX.AsInteger;
            CadastroFIN_CDCX.Value := FATConsultaFIN_CDCX.AsInteger;
            CadastroFIN_CCLI.Value := FATConsultaFIN_CCLI.AsInteger;
            CadastroFIN_DCLI.Value := FATConsultaCLI_FANT.AsString;
            CadastroFIN_RCLI.Value := FATConsultaCLI_RAZA.AsString;
            CadastroFIN_STDO.Value := FATConsultaFIN_STDO.AsString;
            CadastroFIN_CVEN.Value := FATConsultaFIN_CVEN.AsInteger;
            CadastroFIN_VEND.Value := FATConsultaUSU_DUSU.AsString;
            CadastroFIN_CREP.Value := FATConsultaFIN_CREP.AsInteger;
            CadastroFIN_DREP.Value := FATConsultaREP_FANT.AsString;
            CadastroFIN_CONC.Value := FATConsultaFIN_CONC.AsInteger;
            CadastroFIN_DCAD.Value := FATConsultaFIN_DCAD.AsDateTime;
            CadastroFIN_DBAI.Value := FATConsultaFIN_DBAI.AsDateTime;
            CadastroFIN_DVEN.Value := FATConsultaFIN_DVEN.AsDateTime;
            CadastroFIN_TIPO.Value := FATConsultaFIN_TIPO.AsString;
            CadastroFIN_STCO.Value := FATConsultaFIN_STFI.AsString;

            if Trim(copy(linha,198,3)) = 'SIM'        then
            CadastroFIN_STFI.Value := 'PAGO CARTÓRIO' else
            CadastroFIN_STFI.Value := 'PAGO';

            CadastroFIN_CTNR.Value := FATConsultaFIN_CTNR.AsString;
            CadastroFIN_DPAG.Value := strToDate(Trim(copy(linha,111,10)));
            CadastroFIN_DOCT.Value := FATConsultaFIN_DOCT.AsString;
            CadastroFIN_TITU.Value := FATConsultaFIN_TITU.AsString;
            CadastroFIN_VALO.Value := FATConsultaFIN_VALO.AsFloat;
            CadastroFIN_VJUR.Value := FATConsultaFIN_VJUR.AsFloat;
            if copy(linha,195,1) = '+' then
            CadastroFIN_VJUR.Value := StrToFloat(oTrimValor(copy(linha,185,10)));
            CadastroFIN_VMUL.Value := FATConsultaFIN_VMUL.AsFloat;
            CadastroFIN_VDES.Value := FATConsultaFIN_VDES.AsFloat;
            if copy(linha,195,1) = '-' then
            CadastroFIN_VDES.Value := StrToFloat(oTrimValor(copy(linha,185,10)));
            CadastroFIN_VPEN.Value := (CadastroFIN_VALO.AsFloat - CadastroFIN_VDES.AsFloat) + (CadastroFIN_VJUR.AsFloat + CadastroFIN_VMUL.AsFloat);
            CadastroFIN_VPAG.Value := StrToFloat(oTrimValor(copy(linha,166,10)));
            if CadastroFIN_VPAG.AsFloat > 0 then
            CadastroFIN_VPEN.Value := CadastroFIN_VPAG.AsFloat - CadastroFIN_VPEN.AsFloat;
            CadastroFIN_OBSE.Value := FATConsultaFIN_OBSE.AsString;
            CadastroFIN_COBR.Value := '0';
            CadastroFIN_STA.Value  := '0';
            Cadastro.Post;
          end;
        end;
      end;

      if not Cadastro.Fields[0].IsNull then
      begin
        oRTransact(TSheild);
        oAviso(Handle,'Importação do arquivo bancário realizado com sucesso !');
        REC_SHE_DEF.Editing := False;
      end;
    except
      on E: Exception do
      begin
        oRTransact(TSheild,ltRollbackRetaining);
        oException(Nil,'Falha ao tentar importar arquivo bancário !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    Tag := 0;
    Cadastro.EnableControls;
    CloseFile ( arq );
  end;

  sbMSG.Panels[1].Text := 'Pronto!';
  Application.ProcessMessages;
end;

procedure Tfrmfin_rec_bai.SIMTPagosClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  NewString := DateToStr(RECParametros.SHE_DATA);
  ClickedOK := InputQuery('Entre com a Data de Pagamento', 'Formato: dd/mm/yy', NewString);
  if not ClickedOK then
  Abort;

  try
    NewString := DateToStr(StrToDate(NewString));
  except
    oException(DBGConsulta,'Formato da Data de Pagamento Inválido !');
  end;

  try
    Tag := 1;
    Cadastro.DisableControls;
    Cadastro.First;
    try
      while not Cadastro.Eof do
      begin
        Cadastro.Edit;
        CadastroFIN_STFI.Value := 'PAGO';
        CadastroFIN_DPAG.Value := StrToDate(NewString);
        CadastroFIN_VPAG.Value := (CadastroFIN_VALO.AsFloat - CadastroFIN_VDES.AsFloat) + (CadastroFIN_VJUR.AsFloat + CadastroFIN_VMUL.AsFloat);
        CadastroFIN_VPEN.Value := 0;
        CadastroFIN_STA.Value  := '0';
        Cadastro.Post;
        Cadastro.Next;
      end;
      oRTransact(TSheild);
    except
      on E: Exception do
      begin
        oRTransact(TSheild,ltRollbackRetaining);
        oException(Nil,'Falha ao tentar registrar pagos !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    Tag := 0;
    Cadastro.EnableControls;
  end;
end;

procedure Tfrmfin_rec_bai.SIMTPendentesClick(Sender: TObject);
begin
  try
    Tag := 1;
    Cadastro.DisableControls;
    Cadastro.First;
    try
      while not Cadastro.Eof do
      begin
        Cadastro.Edit;
        CadastroFIN_STFI.Value    := 'PENDENTE';
        CadastroFIN_DPAG.AsString := NullAsStringValue;
        CadastroFIN_VPAG.Value    := 0;
        CadastroFIN_VPEN.Value    := (CadastroFIN_VALO.AsFloat - CadastroFIN_VDES.AsFloat) + (CadastroFIN_VJUR.AsFloat + CadastroFIN_VMUL.AsFloat);
        CadastroFIN_STA.Value     := '0';
        Cadastro.Post;
        Cadastro.Next;
      end;
      oRTransact(TSheild);
    except
      on E: Exception do
      begin
        oRTransact(TSheild,ltRollbackRetaining);
        oException(Nil,'Falha ao tentar registrar pendentes !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    Tag := 0;
    Cadastro.EnableControls;
  end;
end;

procedure Tfrmfin_rec_bai.SIEIncluiClick(Sender: TObject);
begin
  if Cadastro.State = dsBrowse then
  Cadastro.Append;
end;

procedure Tfrmfin_rec_bai.SIEAlteraClick(Sender: TObject);
begin
  if (Cadastro.State = dsBrowse) and (not CadastroID.IsNull) then
  Cadastro.Edit;
end;

procedure Tfrmfin_rec_bai.SIEExcluiClick(Sender: TObject);
begin
  if (Cadastro.State = dsBrowse) and (not CadastroID.IsNull) then
  Cadastro.Delete;
end;

procedure Tfrmfin_rec_bai.SIESalvaClick(Sender: TObject);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
  Cadastro.Post;
end;

procedure Tfrmfin_rec_bai.SIECancelaClick(Sender: TObject);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
  Cadastro.Cancel;
end;

procedure Tfrmfin_rec_bai.SIMNovoClick(Sender: TObject);
begin
  if oYesNo(Handle,'Deseja iniciar novo lançamento ?') = mrNo then
  Abort;

  _TABEdicao;
end;

procedure Tfrmfin_rec_bai.CadastroBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(handle,'Retirar o Título '+CadastroFIN_TITU.AsString+' da relação ?') = mrno then
  Abort;
end;

procedure Tfrmfin_rec_bai.CadastroBeforePost(DataSet: TDataSet);
begin
  if oEmpty(CadastroFIN_DPAG.AsDateTime) then
     CadastroFIN_DPAG.AsString := NullAsStringValue;

  if Tag = 0 then
  begin
    if LeftStr(CadastroFIN_STFI.AsString,7) = 'BAIXADO' then
       CadastroFIN_VPEN.Value := 0;
    CadastroFIN_STA.Value  := '0';
    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('UPDATE FIN_REC_BAI');
      SQL.Add('SET    FIN_COBR = '''+CadastroFIN_COBR.AsString+'''');
      if not oEmpty(CadastroFIN_CDBX.AsString) then
         SQL.Add('WHERE FIN_CDBX = '''+CadastroFIN_CDBX.AsString+'''')
      else
         SQL.Add('WHERE FIN_TITU = '''+CadastroFIN_TITU.AsString+'''');
      ExecSQL;
    end;
  end;
//  if ((CadastroFIN_VALO.AsFloat < 0) or (CadastroFIN_VJUR.AsFloat < 0) or (CadastroFIN_VMUL.AsFloat < 0) or (CadastroFIN_VDES.AsFloat < 0) or (CadastroFIN_VPAG.AsFloat < 0)) then
  //     DataBaseError('Valor não pode ser menor que 0 !');
end;

procedure Tfrmfin_rec_bai.CadastroNewRecord(DataSet: TDataSet);
begin
  CadastroID.Value := 0;
end;

procedure Tfrmfin_rec_bai.CadastroAfterDelete(DataSet: TDataSet);
begin
  oRTransact(TSheild);
end;

procedure Tfrmfin_rec_bai.CadastroAfterPost(DataSet: TDataSet);
var
  BMRecord: TBookMark;
begin
  if Tag = 0 then
  begin
    BMRecord := Cadastro.GetBookmark;
    oRTransact(TSheild);
    if (BMRecord = Nil) or (Cadastro.Fields[0].IsNull) then Cadastro.last else
    Cadastro.GotoBookmark(BMRecord);
    Cadastro.FreeBookmark(BMRecord);
  end;
end;

procedure Tfrmfin_rec_bai.CadastroBeforeCancel(DataSet: TDataSet);
begin
  if Cadastro.RecordCount = 0 then
  begin
    oRTransact(TSheild);
    ABORT;
  end;
end;

procedure Tfrmfin_rec_bai.DTSCadastroStateChange(Sender: TObject);
begin
  oState(Cadastro,SBMenuEdicao);
  SBMsg.Panels[0].Text := IFThen(Cadastro.State = dsBrowse,'Consulta',IFThen(Cadastro.State = dsEdit,'Alteração','Inclusão'));
end;

procedure Tfrmfin_rec_bai.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin  
  if not ASelected then
  begin
    if AColumn = DBGConsultaFIN_VALO then
    AFont.Style := [fsBold];

    if ANode.Values[DBGConsultaFIN_STFI.Index] <> Null then
    begin
      if LeftStr(ANode.Values[DBGConsultaFIN_STFI.Index],7) = 'BAIXADO' then
      begin
        AFont.Color := clBlack;
        AColor      := $00E2E2E2;
      end else
      if ANode.Values[DBGConsultaFIN_STFI.Index] = 'CANCELADO' then
      begin
        AFont.Color := clWhite;
        AColor      := $002020FF;
      end else
      if (ANode.Values[DBGConsultaFIN_STFI.Index] = 'CARTÓRIO')   or (ANode.Values[DBGConsultaFIN_STFI.Index] = 'NÃO PAGO') or
         (ANode.Values[DBGConsultaFIN_STFI.Index] = 'PROTESTADO') or (ANode.Values[DBGConsultaFIN_STFI.Index] = 'PROTESTADO COM ADVOGADO') or (ANode.Values[DBGConsultaFIN_STFI.Index] = 'PROTESTADO COM INSTRUMENTO') or
         (ANode.Values[DBGConsultaFIN_STFI.Index] = 'PRORROGADO') then
      begin
        AFont.Color := clwhite;
        AColor      := $000024B3;
      end else
      begin
        if LeftStr(ANode.Values[DBGConsultaFIN_STFI.Index],4) = 'PAGO' then
        begin
          AFont.Color := clBlack;
          AColor      := $00C4FFC4;
        end;

        if (AColumn = DBGConsultaFIN_COBR) or (AColumn = DBGConsultaFIN_STFI) then
        begin
          AFont.Color := clBlack;
          AColor      := clWhite;
        end;

        if AColumn = DBGConsultaFIN_VJUR then
           if StrToFloat(oTrimValor(ANode.Values[DBGConsultaFIN_VJUR.Index])) <> 0 then
           begin
             AFont.Style := [fsBold];
             AFont.Color := clBlack;
             AColor      := $0080FFFF;
           end;

        if AColumn = DBGConsultaFIN_VMUL then
           if StrToFloat(oTrimValor(ANode.Values[DBGConsultaFIN_VMUL.Index])) <> 0 then
           begin
             AFont.Style := [fsBold];
             AFont.Color := clBlack;
             AColor      := $0080FFFF;
           end;

        if AColumn = DBGConsultaFIN_VDES then
           if StrToFloat(oTrimValor(ANode.Values[DBGConsultaFIN_VDES.Index])) <> 0 then
           begin
             AFont.Style := [fsBold];
             AFont.Color := clBlack;
             AColor      := $0080FFFF;
           end;

        if AColumn = DBGConsultaFIN_VPAG then
           if StrToFloat(oTrimValor(ANode.Values[DBGConsultaFIN_VPAG.Index])) <> 0 then
           AFont.Style := [fsBold];

        if AColumn = DBGConsultaFIN_VPEN then
        begin
          AFont.Color := clBlack;
          AColor      := clWhite;
          if StrToFloat(oTrimValor(ANode.Values[DBGConsultaFIN_VPEN.Index])) <> 0 then
          AFont.Style := [fsBold];
        end;
      end;
    end;  
  end;
end;

procedure Tfrmfin_rec_bai.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    vk_return: SIMEEdit.Click;
    vk_delete: SIMEDelete.Click;
    vk_escape: SIMECancel.Click;
  end;
end;

procedure Tfrmfin_rec_bai.DBGDescontosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (Cadastro.State in [dsInsert,dsEdit]) then
  Cadastro.Post;
end;

procedure Tfrmfin_rec_bai._PSQConta(ACampo,ATexto: String;ABlock: Boolean = False;AImporta: Boolean = False);
begin
  with FATConsulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PK.*,CLI_FANT,CLI_RAZA,USU_DUSU,REP_FANT');
    SQL.Add('FROM   CAD_CLI,CAD_USU,CAD_REP,'+SLPrincipal.Values['fin_baixa']+' "PK"');
    SQL.Add('WHERE  PK.FIN_CCLI = CAD_CLI.ID');
    SQL.Add('AND    PK.FIN_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND    PK.FIN_CREP = CAD_REP.ID');
    SQL.Add('AND '+ACampo+' LIKE '''+ATexto+'%''');
    SQL.Add('ORDER BY FIN_CDBX,FIN_TITU');
    Open;
  end;

  if (ABlock) and (FATConsulta.Fields[0].IsNull) then
      oException(Nil,'Título não Encontrado !');

  if not AImporta then
     while not FATConsulta.Eof do
     begin
       if FATConsultaFIN_STFI.AsString <> 'CANCELADO' then
          _INSConta;
       FATConsulta.Next;
     end;
end;

procedure Tfrmfin_rec_bai._INSConta;
begin
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_TITU = '''+FATConsultaFIN_TITU.AsString+'''');
    SQL.Add('AND    FIN_CDBX = '''+FATConsultaFIN_CDBX.AsString+'''');
    SQL.Add('AND    FIN_CCLI = '''+FATConsultaFIN_CCLI.AsString+'''');
    SQL.Add('AND    FIN_STDO = '''+FATConsultaFIN_STDO.AsString+'''');
    Open;    
    if Fields[0].IsNull then
    begin
      Cadastro.Append;
      CadastroFIN_CCAB.Value := FATConsultaID.AsInteger;
      CadastroFIN_CDBX.Value := FATConsultaFIN_CDBX.AsInteger;
      CadastroFIN_CDCX.Value := FATConsultaFIN_CDCX.AsInteger;
      CadastroFIN_CCLI.Value := FATConsultaFIN_CCLI.AsInteger;
      CadastroFIN_DCLI.Value := FATConsultaCLI_FANT.AsString;
      CadastroFIN_RCLI.Value := FATConsultaCLI_RAZA.AsString;
      CadastroFIN_STDO.Value := FATConsultaFIN_STDO.AsString;
      CadastroFIN_CVEN.Value := FATConsultaFIN_CVEN.AsInteger;
      CadastroFIN_VEND.Value := FATConsultaUSU_DUSU.AsString;
      CadastroFIN_CREP.Value := FATConsultaFIN_CREP.AsInteger;
      CadastroFIN_DREP.Value := FATConsultaREP_FANT.AsString;
      CadastroFIN_CONC.Value := FATConsultaFIN_CONC.AsInteger;
      CadastroFIN_DCAD.Value := FATConsultaFIN_DCAD.AsDateTime;
      CadastroFIN_DBAI.Value := FATConsultaFIN_DBAI.AsDateTime;
      CadastroFIN_DVEN.Value := FATConsultaFIN_DVEN.AsDateTime;
      CadastroFIN_TIPO.Value := FATConsultaFIN_TIPO.AsString;
      CadastroFIN_STFI.Value := FATConsultaFIN_STFI.AsString;
      CadastroFIN_STCO.Value := FATConsultaFIN_STFI.AsString;
      CadastroFIN_CTNR.Value := FATConsultaFIN_CTNR.AsString;
      CadastroFIN_DPAG.Value := FATConsultaFIN_DPAG.AsDateTime;
      CadastroFIN_DOCT.Value := FATConsultaFIN_DOCT.AsString;
      CadastroFIN_TITU.Value := FATConsultaFIN_TITU.AsString;
      CadastroFIN_VALO.Value := FATConsultaFIN_VALO.AsFloat;
      CadastroFIN_VJUR.Value := FATConsultaFIN_VJUR.AsFloat;
      CadastroFIN_VMUL.Value := FATConsultaFIN_VMUL.AsFloat;
      CadastroFIN_VDES.Value := FATConsultaFIN_VDES.AsFloat;
      CadastroFIN_VPAG.Value := FATConsultaFIN_VPAG.AsFloat;
      CadastroFIN_VPEN.Value := FATConsultaFIN_VPEN.AsFloat;
      CadastroFIN_OBSE.Value := FATConsultaFIN_OBSE.AsString;
      CadastroFIN_COBR.Value := '0';
      CadastroFIN_STA.Value  := '1';
      if (CadastroFIN_STFI.AsString = 'PROTESTADO') or (CadastroFIN_STFI.AsString = 'PROTESTADO COM ADVOGADO')  or (CadastroFIN_STFI.AsString = 'PROTESTADO COM INSTRUMENTO') or (CadastroFIN_STFI.AsString = 'CARTÓRIO') or (CadastroFIN_STFI.AsString = 'NÃO PAGO') then
      CadastroFIN_STA.Value  := '0';
      Cadastro.Post;
    end;
  end;  
end;
procedure Tfrmfin_rec_bai._TABEdicao;
begin
  oOTransact(TSheild);
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
  end;

  with Cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('ORDER BY ID');
    Prepare;
  end;
  oRTransact(TSheild);
end;

procedure Tfrmfin_rec_bai.DBGConsultaFIN_VJURValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CadastroFIN_VJUR.Value := StrToFloat(oTrimValor(DBGConsulta.EditingText));
  _Encargos;
end;

procedure Tfrmfin_rec_bai.DBGConsultaFIN_VMULValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CadastroFIN_VMUL.Value := StrToFloat(oTrimValor(DBGConsulta.EditingText));
  _Encargos;
end;

procedure Tfrmfin_rec_bai.DBGConsultaFIN_VDESValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CadastroFIN_VDES.Value := StrToFloat(oTrimValor(DBGConsulta.EditingText));
  _Encargos;
end;

procedure Tfrmfin_rec_bai.DBGConsultaFIN_VPAGValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CadastroFIN_STFI.Value := 'PAGO';
  CadastroFIN_DPAG.Value := RECParametros.SHE_DATA;
  CadastroFIN_VPAG.Value := StrToFloat(oTrimValor(DBGConsulta.EditingText));
  CadastroFIN_VPEN.Value := (CadastroFIN_VALO.AsFloat - CadastroFIN_VDES.AsFloat) + (CadastroFIN_VJUR.AsFloat + CadastroFIN_VMUL.AsFloat);
  if CadastroFIN_VPAG.AsFloat > 0 then
  CadastroFIN_VPEN.Value := CadastroFIN_VPAG.AsFloat - CadastroFIN_VPEN.AsFloat;
end;

procedure Tfrmfin_rec_bai.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
  Cadastro.Post;

  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_STA = 0');
    Open;
  end;
  if Consulta_S.RecNo > 0 then
  case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                         'Deseja Salvar ?',
                         PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
       mrCancel: Abort;
       mrYes   : siVAL.Click;
  end;
end;

procedure Tfrmfin_rec_bai._Encargos;
begin
  if Cadastro.State in [dsInsert,dsEdit] then
  begin
    CadastroFIN_VPEN.Value := (CadastroFIN_VALO.AsFloat - CadastroFIN_VDES.AsFloat) + (CadastroFIN_VJUR.AsFloat + CadastroFIN_VMUL.AsFloat);
    if CadastroFIN_VPAG.AsFloat > 0 then
    begin
      CadastroFIN_VPAG.Value := CadastroFIN_VPEN.AsFloat;
      CadastroFIN_VPEN.Value := 0;
    end;
  end;
end;

procedure Tfrmfin_rec_bai.DBGConsultaFIN_STFIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGConsulta.SetFocus; { Ricardo - Para campos PopUp no dxDBGrid, é necessário ajustar o focus, senão o ActiveControl fica loko ! }
  DBGConsulta.EditingText := Trim(DBGConsulta.EditingText);
  if not oEmpty(DBGConsulta.EditingText) then
  begin
    CadastroFIN_STFI.Value := Trim(DBGConsulta.EditingText);
    with Consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_STA WHERE DESCRICAO = '''+CadastroFIN_STFI.AsString+'''');
      Open;
      if Fields[0].IsNull then
         DataBaseError('Status não Cadastrado !');
    end;

    CadastroFIN_VPEN.Value := (CadastroFIN_VALO.AsFloat - CadastroFIN_VDES.AsFloat) + (CadastroFIN_VJUR.AsFloat + CadastroFIN_VMUL.AsFloat);
    if LeftStr(CadastroFIN_STFI.AsString,4) = 'PAGO' then
    begin
      CadastroFIN_DPAG.Value := RECParametros.SHE_DATA;
      CadastroFIN_VPAG.Value := CadastroFIN_VPEN.AsFloat;
      CadastroFIN_VPEN.Value := 0;
    end else
    begin
      CadastroFIN_VPAG.Value    := 0;
      CadastroFIN_DPAG.AsString := NullAsStringValue;
    end;
  end;
end;

procedure Tfrmfin_rec_bai.ACTMPostExecute(Sender: TObject);
var
  BRet: Boolean;
  i   : Word;
begin
  if Cadastro.State in [dsEdit,dsInsert] then
     Cadastro.Post;

  inherited;
  if oYesNo(handle,'Validar Lançamentos ?') = mrno then
     Abort;

  if LeftStr(CadastroFIN_STFI.AsString,4) = 'PAGO' then
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_STFI LIKE ''%PAGO%''');
    SQL.Add('AND    FIN_VPAG = 0');
    SQL.Add('AND    FIN_STA  = 0');
    Open;
    if not fields[0].IsNull then
    oException(Nil,'Não é possível validar lançamento marcado como pago, mas sem valor de pagamento');
  end;

  try
    Cadastro.DisableControls;
    Cadastro.First;
    while not Cadastro.Eof do
    begin
      if ((LeftStr(CadastroFIN_STFI.AsString,4) = 'PAGO') and (CadastroFIN_VPEN.AsFloat <> 0)) then
           if oYesNo(handle,'Documento No '+CadastroFIN_TITU.AsString+' possui valor em aberto.'+#13+
                            'Baixar mesmo assim ?') = mrNo then
              Abort;
      Cadastro.Next;   
    end;
  finally
    Cadastro.EnableControls;
  end;

  try
    BRet := False;
    Cadastro.DisableControls;
    Cadastro.First;

    try
      for i := 1 to 2 do
      begin
        with Cadastro do
        begin
          SelectSQL.Clear;
          SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
          SelectSQL.Add('WHERE    FIN_COBR '+IFThen(i = 1,'<>','=')+'1');
          SelectSQL.Add('ORDER BY ID');
          Open;
        end;

        while not Cadastro.Eof do
        begin
          sbMSG.Panels[1].Text := 'Aguarde.... Validando Títulos '+CadastroFIN_TITU.AsString;
          sbMSG.Refresh;
          if CadastroFIN_STA.AsString = '0' then
          with Consulta do
          begin
            SQL.Clear;
            SQL.Add('UPDATE '+SLPrincipal.Values['fin_baixa']+' "FIN_BAI"');

            if (Pos('PROTESTADO',CadastroFIN_STCO.AsString) > 0) and (Pos('PROTESTADO COM',CadastroFIN_STFI.AsString) > 0) then
            SQL.Add('SET   FIN_STFI = '''+CadastroFIN_STFI.AsString+'''') else
            begin
              SQL.Add('SET FIN_STFI = '''+CadastroFIN_STFI.AsString+''',');
              SQL.Add('    FIN_DVEN = '''+formatDateTime('mm/dd/yy',CadastroFIN_DVEN.AsDateTime)+''',');
              SQL.Add('    FIN_VJUR = '''+oStrTran(CadastroFIN_VJUR.AsString,',','.')+''',');
              SQL.Add('    FIN_VMUL = '''+oStrTran(CadastroFIN_VMUL.AsString,',','.')+''',');
              SQL.Add('    FIN_VDES = '''+oStrTran(CadastroFIN_VDES.AsString,',','.')+''',');
              SQL.Add('    FIN_VPAG = '''+oStrTran(CadastroFIN_VPAG.AsString,',','.')+''',');
              SQL.Add('    FIN_VPEN = '''+oStrTran(CadastroFIN_VPEN.AsString,',','.')+''',');

              if CadastroFIN_STCO.AsString <> CadastroFIN_STFI.AsString then
              SQL.Add('    FIN_DBAI = '''+formatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+''',');

              if CadastroFIN_DPAG.AsDateTime <= 0 then
              SQL.Add('    FIN_DPAG = NULL') else
              SQL.Add('    FIN_DPAG = '''+formatDateTime('mm/dd/yy',CadastroFIN_DPAG.AsDateTime)+'''');
            end;
            SQL.Add('WHERE ID = '''+CadastroFIN_CCAB.AsString+'''');
            ExecSQL;

            BRet := True;
          end;
          Cadastro.Next;
        end;
      end;

      if BRet then
      begin
        ORTransact(IBTra);
        oAviso(handle,'Lançamentos validados com sucesso !');


        _TABEdicao;
      end else
      oErro(handle,'Nenhum registro validado !'+#13+
                   'Para concretizar a validação, é necessário atualizar alguma informação na tela.');
    except
      on E: Exception do
      try
        oRTransact(IBTra,ltRollbackRetaining);
        oException(Nil,'Falha ao tentar validar lançamentos !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Título: '+CadastroFIN_TITU.AsString+#13+
                       'Erro: '+E.Message);
      finally
        with Cadastro do
        begin
          SelectSQL.Clear;
          SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
          SelectSQL.Add('ORDER BY ID');
          Open;
        end;
      end;
    end;
  finally
    Cadastro.EnableControls;
    SBMsg.Panels[1].Text := '';
    SBMsg.Refresh;
  end;

  ACTExecEvent.Execute;
  Close;
end;

procedure Tfrmfin_rec_bai.SIMEAppendClick(Sender: TObject);
begin
  if Cadastro.State = dsBrowse then
  Cadastro.Append;
end;

procedure Tfrmfin_rec_bai.SIMEEditClick(Sender: TObject);
begin
  if (Cadastro.State = dsBrowse) and (CadastroId.AsInteger > 0) then
  Cadastro.Edit;
end;

procedure Tfrmfin_rec_bai.SIMEDeleteClick(Sender: TObject);
begin
  if (Cadastro.State = dsBrowse) and (CadastroId.AsInteger > 0) then
  Cadastro.Delete;
end;

procedure Tfrmfin_rec_bai.SIMEPostClick(Sender: TObject);
begin
  if Cadastro.State in [dsEdit,dsInsert] then
  Cadastro.Post;
end;

procedure Tfrmfin_rec_bai.SIMECancelClick(Sender: TObject);
begin
  if Cadastro.State in [dsEdit,dsInsert] then
  Cadastro.Cancel;
end;

procedure Tfrmfin_rec_bai.CadastroAfterInsert(DataSet: TDataSet);
begin
  DBGConsulta.SetFocus;
end;

procedure Tfrmfin_rec_bai.CadastroAfterEdit(DataSet: TDataSet);
begin
  DBGConsulta.SetFocus;
end;

end.

