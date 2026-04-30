unit pcad_usu_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls,
  dxEdLib, dxCntner, dxEditor, dxExEdtr, dxPageControl, dxTL, dxtree,
  dxdbtree, dxTLClms, IBTable, Mask, DBCtrls, rxSpeedbar;

type
  Tfrmcad_usu_edi = class(Tfrmpadr3)
    Label3: TLabel;
    pnlpri: TPanel;
    pcMENU: TdxPageControl;
    tsDIV: TdxTabSheet;
    pnlmenu: TPanel;
    ImageList1: TImageList;
    dtscad_usu_adm: TDataSource;
    cad_usu_adm: TIBDataSet;
    cad_usu_admID: TIntegerField;
    cad_usu_admUSU_CUSU: TIntegerField;
    cad_usu_admUSU_FUNC: TIBStringField;
    cad_usu_admUSU_ROTI: TIBStringField;
    cad_usu_admUSU_NOME: TIBStringField;
    cad_usu_admUSU_NOVO: TIBStringField;
    cad_usu_admUSU_EDIT: TIBStringField;
    cad_usu_admUSU_DELE: TIBStringField;
    cad_usu_admUSU_VISU: TIBStringField;
    cad_usu_admUSU_PRIN: TIBStringField;
    tvUSU: TTreeView;
    pnlsubmenu: TPanel;
    pcsub: TdxPageControl;
    tsedi: TdxTabSheet;
    Image7: TImage;
    Image10: TImage;
    Image64: TImage;
    Image8: TImage;
    Image9: TImage;
    dbcvisu: TDBCheckBox;
    dbcprin: TDBCheckBox;
    dbcedit: TDBCheckBox;
    dbcnovo: TDBCheckBox;
    dbcdele: TDBCheckBox;
    Bevel1: TBevel;
    pnltsub: TPanel;
    Shape13: TShape;
    Label2: TLabel;
    cad_usu_admUSU_AUTO: TIBStringField;
    Image1: TImage;
    dbcauto: TDBCheckBox;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    clppri: TLabel;
    Label37: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    ednome: TdxEdit;
    eddusu: TdxEdit;
    cbdemp: TdxImageEdit;
    cbpsec: TdxImageEdit;
    cbadm: TCheckBox;
    edcusu: TdxButtonEdit;
    eddias: TdxEdit;
    rgtusu: TRadioGroup;
    cbppri: TdxImageEdit;
    cbmenu: TdxImageEdit;
    cbstav: TdxImageEdit;
    cbdesc: TdxImageEdit;
    cbrela: TdxImageEdit;
    function  GetFieldList: TStringList;
    procedure FormCreate(Sender: TObject);
    procedure edcusuButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure tvUSUChange(Sender: TObject; Node: TTreeNode);
    procedure cad_usu_admAfterPost(DataSet: TDataSet);
    procedure cad_usu_admBeforePost(DataSet: TDataSet);
    procedure dtscad_usu_admDataChange(Sender: TObject; Field: TField);
    procedure siSAVClick(Sender: TObject);
    procedure cbadmClick(Sender: TObject);
    procedure edcusuValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure eddiasValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cad_usu_admNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure INSERE_ADM;
  public
    { Public declarations }
    editado: boolean;
  end;

var
  frmcad_usu_edi: Tfrmcad_usu_edi;
  FieldList     : TStringList;

implementation

uses uPrincipal, pcad_fun, pcad_usu;

{$R *.dfm}

function Tfrmcad_usu_edi.GetFieldList: TStringList;
begin
  FieldList.clear;
  FieldList.add(cad_usu_adm.FieldByName('USU_FUNC').asstring);
  FieldList.add(cad_usu_adm.FieldByName('USU_ROTI').asstring);
  FieldList.add(cad_usu_adm.FieldByName('USU_NOME').asstring);
  Result := FieldList;
end;

procedure Tfrmcad_usu_edi.INSERE_ADM;
begin
  try
    with cad_usu_adm do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_USU_ADM');
      SelectSQL.Add('WHERE    USU_CUSU = '''+edcusu.Text+'''');
      SelectSQL.Add('ORDER BY USU_FUNC,ID');
      Open;
    end;

    if cad_usu_adm.Fields[0].IsNull then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT   USU_FUNC,USU_ROTI,USU_NOME FROM CAD_USU_ADM');
        SQL.Add('WHERE    USU_CUSU = 0');
        SQL.Add('ORDER BY USU_FUNC,ID');
        Open;
      end;

      while not consulta.Eof do
      begin
        cad_usu_adm.Append;
        cad_usu_admID.Value       := 0;
        cad_usu_admUSU_CUSU.Value := strtoint(edcusu.Text);
        cad_usu_admUSU_FUNC.Value := consulta.Fields[0].AsString;
        cad_usu_admUSU_ROTI.Value := consulta.Fields[1].AsString;
        cad_usu_admUSU_NOME.Value := consulta.Fields[2].AsString;
        cad_usu_adm.Post;
        consulta.Next;
      end;
    end;

    FieldList := TStringList.create;

    tvUSU.Items.Clear;
    tvUSU.items.BeginUpdate;

    cad_usu_adm.first;
    while not cad_usu_adm.eof do
    begin
      oTreeAddItem(tvUSU, GetFieldList, cad_usu_adm.getBookmark, false);
      cad_usu_adm.next;
    end;

    FieldList.clear;
    tvUSU.Alphasort;
    tvUSU.items.Endupdate;
  finally
  end;

//  tvUSU.items[2].selected := true;
end;

procedure Tfrmcad_usu_edi.FormCreate(Sender: TObject);
begin
  IBTra.StartTransaction;
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,PAR_FANT FROM PAR_SIS');
    SQL.Add('ORDER BY ID');
    Open;
    while not eof do
    begin
      cbdemp.Values.Add(fields[0].AsString);
      cbdemp.Descriptions.Add(fields[1].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_PED');
    SQL.Add('WHERE    VEN_STA  = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbppri.Values.Add(fields[0].AsString);
      cbppri.Descriptions.Add(fields[0].AsString);
      cbpsec.Values.Add(fields[0].AsString);
      cbpsec.Descriptions.Add(fields[0].AsString);
      next;
    end;
  end;

  tvUSU.Items.Clear;
end;

procedure Tfrmcad_usu_edi.edcusuValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcusu.Text = '' then
     abort;

  with consulta do
  begin
    if tag = 0 then
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_DUSU FROM CAD_USU');
      SQL.Add('WHERE  USU_CUSU = '''+edcusu.Text+'''');
      Open;

      if not fields[0].IsNull then
      begin
        edcusu.SetFocus;
        raise exception.Create('Usuário já Cadastrado no Sistema !');
      end;
    end;

    case rgtusu.ItemIndex of
      0: begin
           SQL.Clear;
           SQL.Add('SELECT FUN_NOME,FUN_APEL,FUN_CEMP FROM CAD_FUN');
           SQL.Add('WHERE  ID = '''+edcusu.Text+'''');
           Open;

           if fields[0].IsNull then
           begin
             edcusu.SetFocus;
             raise exception.Create('Funcionário não Cadastrado !');
           end;
         end;
    end;
    ednome.Text := fields[0].AsString;
    eddusu.Text := fields[1].AsString;
    cbdemp.Text := fields[2].AsString;
    cbstav.Text := 'A';

    INSERE_ADM;
  end;
end;

procedure Tfrmcad_usu_edi.edcusuButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  case rgtusu.ItemIndex of
    0: begin
         frmcad_fun := tfrmcad_fun.create(self);
         frmcad_fun.FormStyle := fsNormal;
         frmcad_fun.Position  := poDesigned;
         frmcad_fun.Visible   := false;

         try
           frmcad_fun.ShowModal;
         finally
           if frmcad_fun.editado then
           begin
             if tag = 0 then
             with consulta do
             begin
               SQL.Clear;
               SQL.Add('SELECT USU_DUSU FROM CAD_USU');
               SQL.Add('WHERE  USU_CUSU = '''+frmcad_fun.cadastroID.AsString+'''');
               Open;

               if not fields[0].IsNull then
               begin
                 edcusu.SetFocus;
                 raise exception.Create('Funcionário já Cadastrado como Usuário do Sistema !');
               end;
             end;

             edcusu.Text := frmcad_fun.cadastroID.AsString;
             ednome.Text := frmcad_fun.cadastroFUN_NOME.AsString;
             eddusu.Text := frmcad_fun.cadastroFUN_APEL.AsString;
             cbdemp.Text := frmcad_fun.cadastroFUN_CEMP.AsString;
             cbstav.Text := 'A';

             INSERE_ADM;
           end;
         end;
       end;
  end;
end;

procedure Tfrmcad_usu_edi.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_usu_edi := nil;
end;

procedure Tfrmcad_usu_edi.tvUSUChange(Sender: TObject; Node: TTreeNode);
begin
  dbcvisu.Enabled := false;
  dbcnovo.Enabled := false;
  dbcedit.Enabled := false;
  dbcdele.Enabled := false;
  dbcprin.Enabled := false;
  dbcauto.Enabled := false;

  if cad_usu_adm.State = dsEdit then
     cad_usu_adm.Post;

  dtscad_usu_adm.enabled := Node.data <> nil;
  if dtscad_usu_adm.enabled then
     cad_usu_adm.GotoBookMark(node.data);
end;

procedure Tfrmcad_usu_edi.cad_usu_admAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  IBTra.CommitRetaining;

  wRec := cad_usu_adm.GetBookmark;
  cad_usu_adm.Close;
  cad_usu_adm.Open;
  if (wRec = Nil) or (cad_usu_adm.Fields[0].IsNull) then cad_usu_adm.last
     else cad_usu_adm.GotoBookmark(wRec);
  cad_usu_adm.FreeBookmark(wRec);
end;

procedure Tfrmcad_usu_edi.cad_usu_admBeforePost(DataSet: TDataSet);
begin
  if cad_usu_admUSU_CUSU.AsInteger = 0 then
     DataBaseError('Funcionário não Selecionado !');
end;

procedure Tfrmcad_usu_edi.dtscad_usu_admDataChange(Sender: TObject;
  Field: TField);
begin
  dbcvisu.Enabled := (cad_usu_admUSU_ROTI.AsString <> 'Relatórios');
  dbcnovo.Enabled := (cad_usu_admUSU_ROTI.AsString <> 'Relatórios');
  dbcedit.Enabled := (cad_usu_admUSU_ROTI.AsString <> 'Relatórios');
  dbcdele.Enabled := (cad_usu_admUSU_ROTI.AsString <> 'Relatórios');
  dbcprin.Enabled := (cad_usu_admUSU_ROTI.AsString =  'Relatórios');
  dbcauto.Enabled := false;

  if (cad_usu_admUSU_FUNC.AsString = 'Compras') or
     (cad_usu_admUSU_FUNC.AsString = 'Vendas')  or
     (cad_usu_admUSU_ROTI.AsString = 'Tarefas') or
     (cad_usu_admUSU_FUNC.AsString = 'Nota Fiscal') or
     (cad_usu_admUSU_NOME.AsString = 'Liberar Atrasados') or
     (cad_usu_admUSU_NOME.AsString = 'Liberar Limite de Crédito') or
     (cad_usu_admUSU_NOME.AsString = 'Liberar Limite de Crédito Excedido') or
     (cad_usu_admUSU_NOME.AsString = 'Liberar Protestos') or
     (cad_usu_admUSU_NOME.AsString = 'Liberar Suspensos') or
     (cad_usu_admUSU_NOME.AsString = 'Liberar Não Pagos') or
     (cad_usu_admUSU_NOME.AsString = 'Encarregado') or
     (cad_usu_admUSU_NOME.AsString = 'Cancelar Separação') or
     (cad_usu_admUSU_NOME.AsString = 'Cancelar Estoque') or
     (cad_usu_admUSU_NOME.AsString = 'Alterar Estoque') or
     (cad_usu_admUSU_NOME.AsString = 'Status de Recebimentos') or
     (cad_usu_admUSU_NOME.AsString = 'Visualizar Total Faturado') then
  begin
    dbcvisu.Enabled := false;
    dbcnovo.Enabled := false;
    dbcedit.Enabled := false;
    dbcdele.Enabled := false;
    dbcprin.Enabled := false;
    dbcauto.Enabled := true;
  end;

  if (cad_usu_admUSU_NOME.AsString = 'Compras') or (cad_usu_admUSU_NOME.AsString = 'Comercial') or (cad_usu_admUSU_NOME.AsString = 'Financeiro') or
     (cad_usu_admUSU_NOME.AsString = 'Desconto Pedido') or (cad_usu_admUSU_NOME.AsString = 'Desconto Produto') or (cad_usu_admUSU_NOME.AsString = 'Informações Bancárias') or
     (cad_usu_admUSU_NOME.AsString = 'Informações Comerciais') or (cad_usu_admUSU_NOME.AsString = 'Limite de Crédito Excedido') or (cad_usu_admUSU_NOME.AsString = 'Limite de Crédito') or (cad_usu_admUSU_NOME.AsString = 'Ocorrências') or
     (cad_usu_admUSU_NOME.AsString = 'Ramo de Atividades') or (cad_usu_admUSU_NOME.AsString = 'Vendedores / Representantes') or
     (cad_usu_admUSU_NOME.AsString = 'Composição') or (cad_usu_admUSU_NOME.AsString = 'Foto de Catálogo') or (cad_usu_admUSU_NOME.AsString = 'Foto de Defeito (s)') or
     (cad_usu_admUSU_NOME.AsString = 'Grade') or (cad_usu_admUSU_NOME.AsString = 'Preço de Venda Normal') or (cad_usu_admUSU_NOME.AsString = 'Preço de Venda Promoção') or
     (cad_usu_admUSU_NOME.AsString = 'Desconto') or (cad_usu_admUSU_NOME.AsString = 'Preço de Compra') or (cad_usu_admUSU_NOME.AsString = 'Preço de Custo') or
     (cad_usu_admUSU_NOME.AsString = 'Contábil') then
  begin
    dbcvisu.Enabled := false;
    dbcnovo.Enabled := false;
    dbcedit.Enabled := true;
    dbcdele.Enabled := false;
    dbcprin.Enabled := false;
    dbcauto.Enabled := false;
  end;
end;

procedure Tfrmcad_usu_edi.siSAVClick(Sender: TObject);
var
  id  : integer;
  dcad: TDate;
  adm : string[1];
begin
  if cad_usu_adm.State in [dsEdit,dsInsert] then
     cad_usu_adm.Post;

  if cbmenu.Text = '' then
  begin
    cbmenu.SetFocus;
    raise exception.Create('Operação padrão não informado !');
  end;

  if (cbppri.Text = '') and (cbmenu.Text = 'VEN') then
  begin
    cbppri.SetFocus;
    raise exception.Create('Pedido de venda principal não informado !');
  end;
       
  if tag = 0 then
  begin
    id   := 0;
    dcad := strtodate(SLPrincipal.Values['data_sistema']);
  end
  else
  begin
    id   := frmcad_usu.cadastroID.AsInteger;
    dcad := frmcad_usu.cadastroUSU_DCAD.AsDateTime;
  end;

  adm := '0';
  if cbadm.Checked then
  adm := '1';

  try
    ibSP.StoredProcName := 'SP_CAD_USU';
    ibSP.Prepare;
    ibSP.ParamByName('ID').Value   := ID;
    ibSP.ParamByName('DCAD').Value := dcad;
    ibSP.ParamByName('CUSU').Value := edcusu.Text;
    ibSP.ParamByName('DUSU').Value := eddusu.Text;
    ibSP.ParamByName('TUSU').Value := rgtusu.ItemIndex;
    ibSP.ParamByName('NOME').Value := ednome.Text;
    ibSP.ParamByName('CDEP').Value := cbdemp.Text;
    ibSP.ParamByName('DIAS').Value := eddias.Text;
    ibSP.ParamByName('ADM').Value  := adm;
    ibSP.ParamByName('STA').Value  := '0';
    ibSP.ParamByName('STAV').Value := cbstav.Text;
    ibSP.ParamByName('PPRI').Value := cbppri.Text;
    ibSP.ParamByName('PSEC').Value := cbpsec.Text;
    ibSP.ParamByName('MENU').Value := cbmenu.Text;
    ibSP.ParamByName('DESC').Value := cbdesc.Text;
    ibSP.ParamByName('RELA').Value := cbrela.Text;
    ibSP.ExecProc;
    IBTra.CommitRetaining;

    editado := true;
    close;
  except
    editado := false;
    IBTra.RollbackRetaining;
    messageBox(handle,'Problemas na gravação do usuário !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;
  close;
end;

procedure Tfrmcad_usu_edi.cbadmClick(Sender: TObject);
begin
  if cbadm.Tag = 1 then
     exit;

  if (edcusu.Text = '') then
  begin
    cbadm.Checked := false;
    edcusu.SetFocus;
    raise exception.Create('Funcionário não Definido como Usuário do Sistema !');
  end;

  if eddusu.Text = '' then
  begin
    cbadm.Checked := false;
    eddusu.SetFocus;
    raise exception.Create('Login do Usuário do Sistema não Definido !');
  end;

  if cbadm.Checked then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAD_USU_ADM');
    SQL.Add('SET    USU_VISU = ''1'',');
    SQL.Add('       USU_NOVO = ''1'',');
    SQL.Add('       USU_EDIT = ''1'',');
    SQL.Add('       USU_DELE = ''1'',');
    SQL.Add('       USU_PRIN = ''1'',');
    SQL.Add('       USU_AUTO = ''1''');
    SQL.Add('WHERE  USU_CUSU = '''+edcusu.Text+'''');
    ExecSQL;
    IBTra.CommitRetaining;

    cad_usu_adm.Close;
    cad_usu_adm.Open;
  end;
end;

procedure Tfrmcad_usu_edi.FormShow(Sender: TObject);
begin
  if tag = 1 then
  begin
    edcusu.Enabled:= false;
    edcusu.Text      := frmcad_usu.cadastroUSU_CUSU.AsString;
    eddusu.Text      := frmcad_usu.cadastroUSU_DUSU.AsString;
    cbstav.Text      := frmcad_usu.cadastroUSU_STAV.AsString;
    rgtusu.Enabled   := false;
    rgtusu.ItemIndex := frmcad_usu.cadastroUSU_TUSU.AsInteger;
    ednome.Text      := frmcad_usu.cadastroUSU_NOME.AsString;
    cbdemp.Text      := frmcad_usu.cadastroUSU_CDEP.AsString;
    eddias.Text      := frmcad_usu.cadastroUSU_DIAS.AsString;
    cbppri.Text      := frmcad_usu.cadastroUSU_PPRI.AsString;
    cbpsec.Text      := frmcad_usu.cadastroUSU_PSEC.AsString;
    cbmenu.Text      := frmcad_usu.cadastroUSU_MENU.AsString;
    cbdesc.Text      := frmcad_usu.cadastroUSU_DESC.AsString;
    cbrela.Text      := frmcad_usu.cadastroUSU_RELA.AsString;
    if frmcad_usu.cadastroUSU_DESC.AsString = '' then
    cbdesc.Text      := '0';
    cbadm.Tag        := 1;
    cbadm.Checked    := false;
    if frmcad_usu.cadastroUSU_ADM.AsString = '1' then
    cbadm.Checked    := true;
    cbadm.Tag        := 0;
    INSERE_ADM;
  end
  else
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+frmprincipal.parametrosPAR_STPD.AsString+'''');
    Open;

    if not fields[0].IsNull then
       cbppri.Text := frmprincipal.parametrosPAR_STPD.AsString
  end;
  dbcvisu.Enabled := false;
  dbcnovo.Enabled := false;
  dbcedit.Enabled := false;
  dbcdele.Enabled := false;
  dbcprin.Enabled := false;
  dbcauto.Enabled := false;
end;

procedure Tfrmcad_usu_edi.eddiasValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if eddias.Text = '' then
     eddias.Text := '0';
end;

procedure Tfrmcad_usu_edi.cad_usu_admNewRecord(DataSet: TDataSet);
begin
  cad_usu_admUSU_NOVO.Value := '0';
  cad_usu_admUSU_EDIT.Value := '0';
  cad_usu_admUSU_DELE.Value := '0';
  cad_usu_admUSU_VISU.Value := '0';
  cad_usu_admUSU_PRIN.Value := '0';
  cad_usu_admUSU_AUTO.Value := '0';
end;

end.
