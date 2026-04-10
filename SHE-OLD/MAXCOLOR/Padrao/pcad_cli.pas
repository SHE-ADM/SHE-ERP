unit pcad_cli;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, rxSpeedbar;

type
  Tfrmcad_cli = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroCLI_RAZA: TIBStringField;
    cadastroCLI_FANT: TIBStringField;
    cadastroCLI_STA: TIBStringField;
    cadastroCLI_CPF: TIBStringField;
    cadastroCLI_CNPJ: TIBStringField;
    cadastroCLI_LOGR: TIBStringField;
    cadastroCLI_BAI: TIBStringField;
    cadastroCLI_CID: TIBStringField;
    cadastroCLI_ESTA: TIBStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaCLI_RAZA: TdxDBGridMaskColumn;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    dbgConsultaCLI_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaCLI_CID: TdxDBGridMaskColumn;
    dbgConsultaCLI_STAV: TdxDBGridMaskColumn;
    Label8: TLabel;
    dbgConsultaCLI_LOGR: TdxDBGridMaskColumn;
    dbgConsultaCLI_BAI: TdxDBGridMaskColumn;
    dbgConsultaCLI_ESTA: TdxDBGridMaskColumn;
    cadastroCLI_CRED: TIBBCDField;
    cadastroCLI_DPAG: TIBStringField;
    cadastroCLI_STAV: TIBStringField;
    cadastroCLI_VDSC: TIBBCDField;
    cadastroCLI_DCAD: TDateField;
    cadastroCLI_DFUN: TDateField;
    cadastroCLI_DALT: TDateField;
    cadastroCLI_DULT: TDateField;
    dbgConsultaCLI_DCAD: TdxDBGridDateColumn;
    cadastroCLI_DDD: TIBStringField;
    cadastroCLI_TEL1: TIBStringField;
    dbgConsultaCLI_DDD: TdxDBGridMaskColumn;
    dbgConsultaCLI_TEL1: TdxDBGridMaskColumn;
    cadastroREP_FANT: TIBStringField;
    cadastroUSU_DUSU: TIBStringField;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    cadastroCLI_DUSU: TIBStringField;
    cadastroCLI_VULT: TIBBCDField;
    CadastroCLI_TLOG: TIBStringField;
    CadastroCLI_NUME: TIBStringField;
    CadastroCLI_CEP: TIBStringField;
    CadastroCLI_COMP: TIBStringField;
    CadastroCLI_STPD: TSmallintField;
    CadastroCLI_DTRA: TIBStringField;
    CadastroCLI_OBSO: TIBStringField;
    CadastroCLI_MAIL: TIBStringField;
    DBGConsultaCLI_MAIL: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure siPRNClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure SIMEAppendClick(Sender: TObject);
    procedure SIMEEditClick(Sender: TObject);
    procedure SIMEDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_cli: Tfrmcad_cli;

implementation

uses uPrincipal, pcad_cli_edi, pcad_pro_con, prelatorio_geral, pven_ped,
     ppesquisa, pven_nfe;

{$R *.dfm}

procedure Tfrmcad_cli.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_CLI';
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
    SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,CLI_MAIL,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
    SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
    SQL.Add('FROM   CAD_CLI');
    SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

    //SQL.Add('WHERE CAD_CLI.CLI_DCAD BETWEEN ''' + FormatDateTime('mm/dd/yy',Aweek_start_date) + ''' AND ''' +
    //                                              FormatDateTime('mm/dd/yy',Aweek_end_date  ) + '''');

    SQL.Add('ORDER BY CLI_DULT DESC');
    Prepare;
  end;
end;

procedure Tfrmcad_cli.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_cli := Nil;
end;

procedure Tfrmcad_cli.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 3;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Fantasia' else
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.cbDATA.Text  := 'Última Compra';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'Todos') then
         {nothing}
      else
      begin
        if cbCAMPO.Text = 'Nota Fiscal' then
        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_002 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_003 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_004 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_005 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          SQL.Add('UNION');
          SQL.Add('SELECT   NFE_CAB.NFE_CFAV FROM NFE_CAB_006 "NFE_CAB"');
          SQL.Add('WHERE    NFE_CAB.NFE_CDNF = '''+edTXT.Text+'''');
          Open;

          if fields[0].IsNull then
             raise exception.Create('Número da nota fiscal não encontrada !');

          edTXT.Text   := fields[0].AsString;
          cbCAMPO.Text := 'Código';
          cField       := 'ID';
        end;

        with cadastro do
        begin
          SQL.Clear;
          SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
          SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,CLI_MAIL,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
          SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
          SQL.Add('FROM   CAD_CLI');
          SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
          SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');
          SQL.Add('WHERE  CAD_CLI.CLI_STA  = '''+inttostr(dbgconsulta.Tag)+'''');

          if cField <> 'Todos' then
          begin
            if frmprincipal.cad_usuUSU_MENU.AsString = 'REP' then
            SQL.Add('AND REP_FANT = '''+frmprincipal.cad_usuUSU_DUSU.AsString+'''');

            if edtxt.Text <> '' then
            begin
              if cField = 'ID' then
              SQL.Add('AND CAD_CLI.ID = '''+edtxt.Text+'''')
              else
              SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
            end;

            if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
            SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
          end;

          if cField = 'Todos' then
             cField := 'CLI_FANT';

          SQL.Add('ORDER BY '+cfield);
          Open;
        end;
      end;
      dbgconsulta.SetFocus;
      campo_pesquisa := frmpesquisa.cbCAMPO.Text;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmcad_cli.siPRNClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAD_CLI.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAD_CLI;

    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    frmrelatorio_geral.cbCAD_CLI_DVEN.Text := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   REP_FANT');
      SQL.Add('FROM     CAD_REP,'+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE    CAD_REP.ID = ROM_CREP');
      SQL.Add('GROUP BY REP_FANT');
      SQL.Add('ORDER BY REP_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CLI_DREP.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE    CAD_USU.USU_CUSU = ROM_CVEN');
      SQL.Add('GROUP BY USU_DUSU');
      SQL.Add('ORDER BY USU_DUSU');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CLI_DVEN.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CLI_CID');
      SQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('WHERE    CAD_CLI.ID = ROM_CCLI');
      SQL.Add('GROUP BY CLI_CID');
      SQL.Add('ORDER BY CLI_CID');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CLI_DCID.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
      SQL.Add('ORDER BY PAR_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_CLI_CDEP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_CLI_CDEP.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcad_cli.SIMEAppendClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Clientes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_cli_edi := TFrmcad_cli_edi.Create(self);
  try
    frmcad_cli_edi.Tag := 0;
    frmcad_cli_edi.ShowModal;
  finally
    if frmcad_cli_edi.editado then
    ExecuteEvent;

    freeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmcad_cli.SIMEEditClick(Sender: TObject);
begin
  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  if cadastro.Fields[0].IsNull then abort;

  FRMCAD_CLI_EDI := TFRMCAD_CLI_EDI.Create(Self);
  try
    frmcad_cli_edi.Tag := 1;
    frmcad_cli_edi.ShowModal;
  finally
    if frmcad_cli_edi.editado then
    ExecuteEvent;

    freeAndNil(frmcad_cli_edi);
  end;
end;

procedure Tfrmcad_cli.SIMEDeleteClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Clientes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    if cadastroCLI_STA.Value = '1' then
    begin
      if oYesNo(handle,'Confirma a exclusão do cliente '+cadastroCLI_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_CLI');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Clientes','Cadastro de Clientes','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCLI_FANT.AsString),'','');
    end
    else
    begin
      if oYesNo(handle,'Enviar para a lixeira o cliente '+cadastroCLI_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE CAD_CLI');
      SQL.Add('SET    CLI_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Clientes','Cadastro de Clientes','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroCLI_FANT.AsString),'','');
    end;
  end;

  IBTra.CommitRetaining;
  ExecuteEvent;
end;

procedure Tfrmcad_cli.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) and (Assigned(frmven_ped) or Assigned(frmven_nfe)) then
  begin
    Editado := True;
    Close;
  end else
  inherited;
end;

procedure Tfrmcad_cli.FormResize(Sender: TObject);
begin
  inherited;
  if (Showing) then
  if (Assigned(frmven_ped)) or (Assigned(frmven_nfe)) then
  begin
    DBGConsulta.FocusedColumn := 1;
    DBGConsulta.SetFocus;
  end;
end;

procedure Tfrmcad_cli.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsultaCLI_FANT.Field.FocusControl;
end;

end.
