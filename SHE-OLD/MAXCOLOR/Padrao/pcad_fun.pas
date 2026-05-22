unit pcad_fun;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, IBStoredProc, IBDatabase, ImgList,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, jpeg,
   ComCtrls, ExtCtrls, DBCtrls, StdCtrls, dxPageControl, dxDBTLCl,
  dxGrClms, dxExEdtr, dxEdLib, dxEditor, IBEvents, rxSpeedbar;

type
  Tfrmcad_fun = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroFUN_NOME: TIBStringField;
    cadastroFUN_APEL: TIBStringField;
    cadastroFUN_DCAD: TDateField;
    cadastroFUN_STA: TIBStringField;
    cadastroFUN_CEMP: TIntegerField;
    cadastroFUN_CDEP: TIntegerField;
    cadastroFUN_DDEP: TIBStringField;
    cadastroFUN_CSEC: TIntegerField;
    cadastroFUN_DSEC: TIBStringField;
    cadastroFUN_CCUS: TIntegerField;
    cadastroFUN_DCUS: TIBStringField;
    cadastroFUN_CCAR: TIntegerField;
    cadastroFUN_DCAR: TIBStringField;
    cadastroFUN_CCBO: TIntegerField;
    cadastroFUN_CHAP: TIntegerField;
    cadastroFUN_CVIN: TIntegerField;
    cadastroFUN_DVIN: TIBStringField;
    cadastroFUN_VSTA: TIBStringField;
    cadastroFUN_VSAL: TIBBCDField;
    cadastroFUN_TSAL: TIBStringField;
    cadastroFUN_ALTU: TIBBCDField;
    cadastroFUN_PESO: TIBBCDField;
    cadastroFUN_CABE: TIBStringField;
    cadastroFUN_OLHO: TIBStringField;
    cadastroFUN_RACA: TIBStringField;
    cadastroFUN_DEFI: TIBStringField;
    cadastroFUN_ALVA: TIBStringField;
    cadastroFUN_SINA: TMemoField;
    cadastroFUN_DNAS: TDateField;
    cadastroFUN_IDAD: TSmallintField;
    cadastroFUN_DADM: TDateField;
    cadastroFUN_EXPE: TSmallintField;
    cadastroFUN_PROR: TSmallintField;
    cadastroFUN_APOS: TIBStringField;
    cadastroFUN_TADM: TIBStringField;
    cadastroFUN_DTRA: TDateField;
    cadastroFUN_DDEM: TDateField;
    cadastroFUN_SITU: TIBStringField;
    cadastroFUN_CAGE: TIBStringField;
    cadastroFUN_CAFI: TIntegerField;
    cadastroFUN_DAFI: TDateField;
    cadastroFUN_CAFR: TIntegerField;
    cadastroFUN_DAFR: TDateField;
    cadastroFUN_DFEI: TDateField;
    cadastroFUN_DFET: TDateField;
    cadastroFUN_DAQI: TDateField;
    cadastroFUN_DAQT: TDateField;
    cadastroFUN_IRRF: TIBBCDField;
    cadastroFUN_INSS: TIBBCDField;
    cadastroFUN_FPAG: TIBStringField;
    cadastroFUN_PCBA: TIntegerField;
    cadastroFUN_PDBA: TIBStringField;
    cadastroFUN_PAGE: TIBStringField;
    cadastroFUN_PCON: TIBStringField;
    cadastroFUN_PTIP: TIBStringField;
    cadastroFUN_PDOC: TIBStringField;
    cadastroFUN_FCOP: TIBStringField;
    cadastroFUN_FDOP: TDateField;
    cadastroFUN_FCBA: TIntegerField;
    cadastroFUN_FDBA: TIBStringField;
    cadastroFUN_FCAT: TIBStringField;
    cadastroFUN_FCON: TIBStringField;
    cadastroFUN_FSAL: TIBBCDField;
    cadastroFUN_CSIN: TIntegerField;
    cadastroFUN_DSIN: TIBStringField;
    cadastroFUN_SIND: TIBStringField;
    cadastroFUN_TCON: TIBStringField;
    cadastroFUN_PENS: TSmallintField;
    cadastroFUN_NCRT: TIBStringField;
    cadastroFUN_SCRT: TIBStringField;
    cadastroFUN_DCRT: TDateField;
    cadastroFUN_RGNU: TIBStringField;
    cadastroFUN_RGEM: TIBStringField;
    cadastroFUN_RGUF: TIBStringField;
    cadastroFUN_RGDT: TDateField;
    cadastroFUN_TENU: TIBStringField;
    cadastroFUN_TEZO: TIBStringField;
    cadastroFUN_TESE: TIBStringField;
    cadastroFUN_RNUM: TIBStringField;
    cadastroFUN_RSEC: TIBStringField;
    cadastroFUN_RCAT: TIBStringField;
    cadastroFUN_CPF: TIBStringField;
    cadastroFUN_CAMT: TIBStringField;
    cadastroFUN_DOTI: TIBStringField;
    cadastroFUN_DONU: TIBStringField;
    cadastroFUN_NACI: TIBStringField;
    cadastroFUN_NAAN: TSmallintField;
    cadastroFUN_GRAU: TIBStringField;
    cadastroFUN_GFIP: TIBStringField;
    cadastroFUN_GGFI: TIBStringField;
    cadastroFUN_CIVI: TIBStringField;
    cadastroFUN_DDD1: TIBStringField;
    cadastroFUN_TEL1: TIBStringField;
    cadastroFUN_DDD2: TIBStringField;
    cadastroFUN_TEL2: TIBStringField;
    cadastroFUN_DDD3: TIBStringField;
    cadastroFUN_TEL3: TIBStringField;
    cadastroFUN_DDD4: TIBStringField;
    cadastroFUN_CEL1: TIBStringField;
    cadastroFUN_CTC1: TIBStringField;
    cadastroFUN_DDD5: TIBStringField;
    cadastroFUN_CEL2: TIBStringField;
    cadastroFUN_CTC2: TIBStringField;
    cadastroFUN_NEID: TIBStringField;
    cadastroFUN_MAIL: TIBStringField;
    cadastroFUN_CONJ: TIBStringField;
    cadastroFUN_NACC: TIBStringField;
    cadastroFUN_MAE: TIBStringField;
    cadastroFUN_NACM: TIBStringField;
    cadastroFUN_PAI: TIBStringField;
    cadastroFUN_NACP: TIBStringField;
    cadastroFUN_TLOG: TIBStringField;
    cadastroFUN_LOGR: TIBStringField;
    cadastroFUN_CEP: TIBStringField;
    cadastroFUN_NUME: TIBStringField;
    cadastroFUN_COMP: TIBStringField;
    cadastroFUN_BAI: TIBStringField;
    cadastroFUN_CID: TIBStringField;
    cadastroFUN_CIDN: TIBStringField;
    cadastroFUN_ESTA: TIBStringField;
    cadastroFUN_ESTN: TIBStringField;
    cadastroFUN_CONV: TIBStringField;
    cadastroFUN_SSIN: TIBStringField;
    cadastroFUN_MDIS: TSmallintField;
    cadastroFUN_HEIN: TIBStringField;
    cadastroFUN_HSIN: TIBStringField;
    cadastroFUN_HEFN: TIBStringField;
    cadastroFUN_HSFN: TIBStringField;
    cadastroFUN_PPRI: TIBStringField;
    cadastroFUN_VTRA: TIBStringField;
    cadastroFUN_SOKA: TIBStringField;
    cadastroFUN_VALE: TIBStringField;
    cadastroFUN_13SA: TIBStringField;
    cadastroFUN_FOTO: TBlobField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaFUN_NOME: TdxDBGridMaskColumn;
    dbgConsultaFUN_APEL: TdxDBGridMaskColumn;
    dbgConsultaFUN_DCAR: TdxDBGridMaskColumn;
    dbgConsultaFUN_DCAD: TdxDBGridDateColumn;
    dbgConsultaFUN_DDEP: TdxDBGridMaskColumn;
    cadastroFUN_ABON: TIBBCDField;
    cadastroPAR_FANT: TIBStringField;
    dbgConsultaPAR_FANT: TdxDBGridMaskColumn;
    GroupBox1: TGroupBox;
    writeFoto: TImage;
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    DBText5: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText6: TDBText;
    Label12: TLabel;
    DBText12: TDBText;
    Label13: TLabel;
    DBText13: TDBText;
    Label14: TLabel;
    DBText14: TDBText;
    Label15: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    Label9: TLabel;
    cadastroFUN_COMI: TIBBCDField;
    cadastroFUN_HORA: TIBBCDField;
    cadastroFUN_60SH: TIBBCDField;
    cadastroFUN_60VL: TIBBCDField;
    cadastroFUN_10SH: TIBBCDField;
    cadastroFUN_10VL: TIBBCDField;
    cadastroFUN_TOTA: TIBBCDField;
    cadastroFUN_REGI: TIBStringField;
    cadastroFUN_NORD: TSmallintField;
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure siPRNClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SIMEAppendClick(Sender: TObject);
    procedure SIMEEditClick(Sender: TObject);
    procedure SIMEDeleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure AjustaForm;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_fun: Tfrmcad_fun;

implementation

uses uPrincipal, pcad_fun_edi, pcad_usu_edi,
  prelatorio_geral;

{$R *.dfm}

procedure Tfrmcad_fun.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    writefoto.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_fun.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    Left    := 7;
    Top     := 50;
    Width   := Screen.Width-15;

    if Top <= 50 then
       Height := frmprincipal.pnCustomize.Height+3
    else
       Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmcad_fun.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  carregaFoto(cadastroFUN_FOTO.BlobSize,cadastroFUN_FOTO,cadastro,frmprincipal.parametros);
end;

procedure Tfrmcad_fun.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_FUN';

  inherited;
  AjustaForm;
end;

procedure Tfrmcad_fun.dbgConsultaDblClick(Sender: TObject);
begin
  if Assigned(frmcad_usu_edi) then
  begin
    editado := true;
    close;
  end
  else
    inherited;
end;

procedure Tfrmcad_fun.siPRNClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAD_FUN.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAD_FUN;
    frmrelatorio_geral.cbCAD_FUN_DATA.Text  := 'DATA LANÇAMENTO';
    frmrelatorio_geral.cbCAD_FUN_TREL.Text  := 'ETIQUETA MATRICIAL';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FUN_APEL FROM CAD_FUN');
      SQL.Add('WHERE    FUN_STA = ''0''');
      SQL.Add('ORDER BY FUN_APEL');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_FUN_APEL.Items.Add(fields[0].AsString);
        next;
      end;
    end;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcad_fun.FormDestroy(Sender: TObject);
begin
  inherited;
  if frmcad_fun <> nil then
  begin
    frmcad_fun.Release;
    frmcad_fun := nil;
  end;
end;

procedure Tfrmcad_fun.SIMEAppendClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Funcionários';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_fun_edi := TFrmcad_fun_edi.Create(self);
  try
    frmcad_fun_edi.Tag := 0;
    frmcad_fun_edi.ShowModal;
  finally
    if frmcad_fun_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_fun_edi);
    frmcad_fun_edi.Free;
  end;
end;

procedure Tfrmcad_fun.SIMEEditClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Funcionários';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_fun_edi := TFrmcad_fun_edi.Create(self);
  try
    frmcad_fun_edi.Tag := 1;
    frmcad_fun_edi.ShowModal;
  finally
    if frmcad_fun_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_fun_edi);
    frmcad_fun_edi.Free;
  end;
end;

procedure Tfrmcad_fun.SIMEDeleteClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Funcionários';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_LAF');
    SQL.Add('WHERE  CAI_CUSU = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o funcionário '+cadastroID.AsString+' !'+#13+'funcionário está comprometido com movimentação de caixa.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  
    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o funcionário '+cadastroFUN_APEL.AsString+' !'+#13+'funcionário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_002');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o funcionário '+cadastroFUN_APEL.AsString+' !'+#13+'funcionário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_003');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o funcionário '+cadastroFUN_APEL.AsString+' !'+#13+'funcionário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_004');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o funcionário '+cadastroFUN_APEL.AsString+' !'+#13+'funcionário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_005');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o funcionário '+cadastroFUN_APEL.AsString+' !'+#13+'funcionário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_006');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o funcionário '+cadastroFUN_APEL.AsString+' !'+#13+'funcionário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cadastroFUN_STA.Value = '1' then
    begin
      if oyesno(handle,'Confirma a exclusão do funcionário '+cadastroFUN_APEL.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Funcionários','Cadastro de Funcionários','Exclusão',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroFUN_APEL.AsString),'','');
    end
    else
    begin
      if oyesno(handle,'Enviar para a lixeira o funcionário '+cadastroFUN_APEL.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE CAD_FUN');
      SQL.Add('SET    FUN_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Funcionários','Cadastro de Funcionários','Lixeira',cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroFUN_APEL.AsString),'','');
    end;
  end;

  IBTra.CommitRetaining;
  ExecuteEvent;
end;

end.
