unit ppesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, rxSpeedbar;

type
  Tfrmpesquisa = class(TForm)
    Shape21: TShape;
    Label11: TLabel;
    edTXT: TdxMaskEdit;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Label1: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dxDT1: TdxDateEdit;
    dxDT2: TdxDateEdit;
    cbDATA: TdxPickEdit;
    cbCAMPO: TdxPickEdit;
    linha2: TShape;
    Shape1: TShape;
    ILMenuPrincipal: TImageList;
    SBMenuPrincipal: TSpeedBar;
    SSMenuPrincipal: TSpeedbarSection;
    siSAV: TSpeedItem;
    siVAL: TSpeedItem;
    siCAN: TSpeedItem;
    siSAIR: TSpeedItem;
    procedure siSAIRClick(Sender: TObject);
    procedure siVALClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDT1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edTXTKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure VALIDA_PESQUISA;
  public
    { Public declarations }
    editado: boolean;
    cfield,cdata: string;
  end;

var
  frmpesquisa: Tfrmpesquisa;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmpesquisa.siSAIRClick(Sender: TObject);
begin
  editado := false;
  close;
end;

procedure Tfrmpesquisa.siVALClick(Sender: TObject);
begin
  ActiveControl := nil;
  SelectNext(ActiveControl,true,true);

  if dxDT1.Date > 0 then
  begin
    if dxDT2.Date < 0 then
       raise exception.Create('Data final não definida !');

    if dxDT2.Date < dxDT1.Date then
       raise exception.Create('Data final não pode ser menor que data inicial !');
  end
  else if dxDT2.Date > 0 then
  begin
    if dxDT1.Date < 0 then
       raise exception.Create('Data inicial não definida !');

    if dxDT1.Date > dxDT2.Date then
       raise exception.Create('Data inicial não pode ser maior que data final !');
  end;
  VALIDA_PESQUISA;
end;

procedure Tfrmpesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
       VK_ESCAPE: siSAIR.Click;
  end;
end;

procedure TFrmpesquisa.VALIDA_PESQUISA;
begin
  cField := '';

  case tag of
    1: begin
         if cbCAMPO.Text = 'Referencia' then
            cField := 'CAD_PRO.PRO_CART'
         else if cbCAMPO.Text = 'Produto' then
            cField := 'CAD_PRO.PRO_CPRO'
         else if cbCAMPO.Text = 'Ref. Fornecedor' then
            cField := 'CAD_PRO.PRO_CFOR'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Categoria' then
            cField := 'CAD_PRO.PRO_DCAT'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP'
         else if cbCAMPO.Text = 'Coleção' then
            cField := 'CAD_PRO.PRO_DCOL'
         else if cbCAMPO.Text = 'Cor' then
            cField := 'CAD_PRO.PRO_DCOR'
         else if cbCAMPO.Text = 'Status' then
            cField := 'CAD_PRO.PRO_STAV'
         else if cbCAMPO.Text = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Cadastro' then
            cData := 'CAD_PRO.PRO_DCAD'
         else if cbDATA.Text = 'Alteração' then
            cData := 'CAD_PRO.PRO_DALT'
         else if cbDATA.Text = 'Programação' then
            cData := 'CAD_PRO.PRO_DPRG'
         else if cbDATA.Text = 'Entrada' then
            cData := 'CAD_PRO.PRO_DENT'
         else if cbDATA.Text = 'Venda' then
            cData := 'CAD_PRO.PRO_DULT';
       end;
    2: begin
         if cbCAMPO.Text = 'Número Pedido' then
            cField := 'ROM_DERO'
         else if cbCAMPO.Text = 'Número Romaneio' then
            cField := 'ROM_CDRO'
         else if cbCAMPO.Text = 'Número Baixa' then
            cField := 'ROM_CDBX'
         else if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'ROM_CDNF'
         else if cbCAMPO.Text = 'Nome Cliente' then
            cField := 'CD.CLI_FANT'
         else if cbCAMPO.Text = 'Código Cliente' then
            cField := 'CD.ID'
         else if cbCAMPO.Text = 'C.N.P.J.' then
            cField := 'CD.CLI_CNPJ'
         else if cbCAMPO.Text = 'C.P.F.' then
            cField := 'CD.CLI_CPF'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'CV.USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'CR.REP_FANT'
         else if cbCAMPO.Text = 'Forma de Pagamento' then
            cField := 'PG.PAG_DPAG'
         else if cbCAMPO.Text = 'Status' then
            cField := 'ROM_STFI'
         else if cbCAMPO.Text = 'Tipo de Pedido' then
            cField := 'ROM_STPD'
         else if cbCAMPO.Text = 'Tipo de Cobrança' then
            cField := 'ROM_STCO'
         else if cbCAMPO.Text = 'Container' then
            cField := 'ROM_CTNR'
         else if cbCAMPO.Text = 'Transportadora' then
            cField := 'ROM_DTRA'
         else if cbCAMPO.Text = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Lançamento' then
            cData := 'ROM_DROM'
         else if cbDATA.Text = 'Baixa' then
            cData := 'ROM_DBAI'
         else if cbDATA.Text = 'Cancelamento' then
            cData := 'ROM_DCAN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'ROM_DALT'
         else if cbDATA.Text = 'Emissão NF' then
            cData := 'ROM_DNFS';
       end;
    3: begin
         if cbCAMPO.Text = 'Código' then
            cField := 'ID'
         else if cbCAMPO.Text  = 'Nota Fiscal' then
            cField := 'NFE_CDNF'
         else if cbCAMPO.Text  = 'Fantasia' then
            cField := 'CLI_FANT'
         else if cbCAMPO.Text  = 'Razão Social' then
            cField := 'CLI_RAZA'
         else if cbCAMPO.Text  = 'C.N.P.J.' then
            cField := 'CLI_CNPJ'
         else if cbCAMPO.Text  = 'C.P.F.' then
            cField := 'CLI_CPF'
         else if cbCAMPO.Text  = 'Logradouro' then
            cField := 'CLI_LOGR'
         else if cbCAMPO.Text  = 'Bairro' then
            cField := 'CLI_BAI'
         else if cbCAMPO.Text  = 'Cidade' then
            cField := 'CLI_CID'
         else if cbCAMPO.Text  = 'UF' then
            cField := 'CLI_ESTA'
         else if cbCAMPO.Text  = 'Todos' then
            cField := 'Todos';

         if cbDATA.Text = 'Cadastro' then
            cData := 'CLI_DCAD'
         else if cbDATA.Text = 'Fundação' then
            cData := 'CLI_DFUN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'CLI_DALT'
         else if cbDATA.Text = 'Última Compra' then
            cData := 'CLI_DULT';
       end;
    4: begin
         if cbCAMPO.Text = 'Código' then
            cField := 'CAD_FOR.ID'
         else if cbCAMPO.Text  = 'Fantasia' then
            cField := 'FOR_FANT'
         else if cbCAMPO.Text  = 'Razão Social' then
            cField := 'FOR_RAZA'
         else if cbCAMPO.Text  = 'C.N.P.J.' then
            cField := 'FOR_CNPJ'
         else if cbCAMPO.Text  = 'C.P.F.' then
            cField := 'FOR_CPF'
         else if cbCAMPO.Text  = 'Logradouro' then
            cField := 'FOR_LOGR'
         else if cbCAMPO.Text  = 'Bairro' then
            cField := 'FOR_BAI'
         else if cbCAMPO.Text  = 'Cidade' then
            cField := 'FOR_CID'
         else if cbCAMPO.Text  = 'UF' then
            cField := 'FOR_ESTA';

         if cbDATA.Text = 'Cadastro' then
            cData := 'FOR_DCAD'
         else if cbDATA.Text = 'Fundação' then
            cData := 'FOR_DFUN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'FOR_DALT'
         else if cbDATA.Text = 'Última Compra' then
            cData := 'FOR_DULT';
       end;
    5: begin
         if cbCAMPO.Text = 'Número' then
            cField := 'ID';

         cbDATA.Enabled := false;
         dxDT1.Enabled  := false;
         dxDT2.Enabled  := false;
       end;
    6: begin
         if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'NFE_DUP.NFE_CDNF'
         else if cbCAMPO.Text  = 'Título' then
            cField := 'NFE_DUP.NFE_TITU'
         else if cbCAMPO.Text  = 'Instrução Bancária' then
            cField := 'NFE_DUP.NFE_IDBX'
         else if cbCAMPO.Text  = 'Status' then
            cField := 'NFE_DUP.NFE_STFI'
         else if cbCAMPO.Text  = 'Código do Cliente' then
            cField := 'CAD_CLI.ID'
         else if cbCAMPO.Text  = 'Nome Fantasia do Cliente' then
            cField := 'CAD_CLI.CLI_FANT'
         else if cbCAMPO.Text  = 'Razão Social do Cliente' then
            cField := 'CAD_CLI.CLI_RAZA';

         if cbDATA.Text = 'Emissão' then
            cData := 'NFE_DUP.NFE_DNFE'
         else if cbDATA.Text = 'Vencimento' then
            cData := 'NFE_DUP.NFE_DVEN';
       end;
    7: begin
         if cbCAMPO.Text = 'Pedido' then
            cField := 'ID';
       end;
    8: begin
         if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'NFE_CDNF'
         else if cbCAMPO.Text  = 'Pedido' then
            cField := 'NFE_CDPD'
         else if cbCAMPO.Text  = 'Favorecido' then
            cField := 'NFE_DFAV'
         else if cbCAMPO.Text  = 'Transportadora' then
            cField := 'NFE_DTRA'
         else if cbCAMPO.Text  = 'C.F.O.P.' then
            cField := 'NFE_CNAT'
         else if cbCAMPO.Text  = 'Vendedor' then
            cField := 'NFE_DVEN'
         else if cbCAMPO.Text  = 'Representante' then
            cField := 'NFE_DREP'
         else if cbCAMPO.Text  = 'Todos' then
            cField := 'Todos';


         if cbDATA.Text = 'Emissão' then
            cData := 'NFE_DEMI'
         else if cbDATA.Text = 'Saída' then
            cData := 'NFE_DSAI'
         else if cbDATA.Text = 'Cancelamento' then
            cData := 'NFE_DCAN';
       end;
    9: begin
         if cbCAMPO.Text = 'Referencia' then
            cField := 'CAD_PRO.PRO_CART'
         else if cbCAMPO.Text = 'Produto' then
            cField := 'CAD_PRO.PRO_CPRO'
         else if cbCAMPO.Text = 'Ref. Fornecedor' then
            cField := 'CAD_PRO.PRO_CFOR'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Categoria' then
            cField := 'CAD_PRO.PRO_DCAT'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP'
         else if cbCAMPO.Text = 'Coleção' then
            cField := 'CAD_PRO.PRO_DCOL';
       end;
    10: begin
         if cbCAMPO.Text = 'Documento' then
            cField := 'FIN_DOCT'
         else if cbCAMPO.Text = 'Cheque No' then
            cField := 'FIN_NCHQ'
         else if cbCAMPO.Text = 'Container' then
            cField := 'FIN_CTNR'
         else if cbCAMPO.Text = 'Cliente - Código' then
            cField := 'CAD_CLI.ID'
         else if cbCAMPO.Text = 'Cliente - Fantasia' then
            cField := 'CAD_CLI.CLI_FANT'
         else if cbCAMPO.Text = 'Cliente - Razão Social' then
            cField := 'CAD_CLI.CLI_RAZA'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'CAD_USU.USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'CAD_REP.REP_FANT';

         if cbDATA.Text = 'Lançamento' then
            cData := 'FIN_DCAD'
         else if cbDATA.Text = 'Baixa' then
            cData := 'FIN_DBAI'
         else if cbDATA.Text = 'Vencimento' then
            cData := 'FIN_DVEN'
         else if cbDATA.Text = 'Pagamento' then
            cData := 'FIN_DPAG';
       end;
   11: begin
         if cbCAMPO.Text = 'Número Romaneio' then
            cField := 'ID'
         else if cbCAMPO.Text = 'Número Pedido' then
            cField := 'ROM_DERO'
         else if cbCAMPO.Text = 'Número Baixa' then
            cField := 'ROM_CDBX'
         else if cbCAMPO.Text = 'Nota Fiscal' then
            cField := 'ROM_CDNF'
         else if cbCAMPO.Text = 'Nome Cliente' then
            cField := 'CAD_CLI.CLI_FANT'
         else if cbCAMPO.Text = 'Código Cliente' then
            cField := 'CAD_CLI.ID'
         else if cbCAMPO.Text = 'C.N.P.J.' then
            cField := 'CAD_CLI.CLI_CNPJ'
         else if cbCAMPO.Text = 'C.P.F.' then
            cField := 'CAD_CLI.CLI_CPF'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'CAD_USU.USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'CAD_REP.REP_FANT'
         else if cbCAMPO.Text = 'Forma de Pagamento' then
            cField := 'TAB_PAG.PAG_DPAG'
         else if cbCAMPO.Text = 'Status' then
            cField := 'ROM_STFI'
         else if cbCAMPO.Text = 'Tipo de Pedido' then
            cField := 'ROM_STPD'
         else if cbCAMPO.Text = 'Container' then
            cField := 'ROM_CTNR'
         else if cbCAMPO.Text = 'Transportadora' then
            cField := 'ROM_DTRA'
         else if cbCAMPO.Text = 'Tipo de Cobrança' then
            cField := 'ROM_STCO';

         if cbDATA.Text = 'Lançamento' then
            cData := 'ROM_DROM'
         else if cbDATA.Text = 'Baixa' then
            cData := 'ROM_DBAI'
         else if cbDATA.Text = 'Cancelamento' then
            cData := 'ROM_DCAN'
         else if cbDATA.Text = 'Alteração' then
            cData := 'ROM_DALT'
         else if cbDATA.Text = 'Emissão' then
            cData := 'ROM_DPRI';
       end;
    12: begin
         if cbCAMPO.Text = 'Documento' then
            cField := 'FIN_DOCT'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'FIN_DESC'
         else if cbCAMPO.Text = 'Centro de Custo' then
            cField := 'FIN_DCUS'
         else if cbCAMPO.Text = 'Fornecedor - Código' then
            cField := 'CAD_FOR.ID'
         else if cbCAMPO.Text = 'Fornecedor - Fantasia' then
            cField := 'CAD_FOR.FOR_FANT'
         else if cbCAMPO.Text = 'Fornecedor - Razão Social' then
            cField := 'CAD_FOR.FOR_RAZA';

         if cbDATA.Text = 'Lançamento' then
            cData := 'FIN_DCAD'
         else if cbDATA.Text = 'Vencimento' then
            cData := 'FIN_DVEN'
         else if cbDATA.Text = 'Pagamento' then
            cData := 'FIN_DPAG';
       end;
    13: begin
          if cbDATA.Text = 'Lançamento' then
          cData := 'CAI_DCAD';
       end;
    14: begin
         if cbCAMPO.Text = 'Referencia' then
            cField := 'CAD_PRO.PRO_CART'
         else if cbCAMPO.Text = 'Produto' then
            cField := 'CAD_PRO.PRO_CPRO'
         else if cbCAMPO.Text = 'Local Estoque' then
            cField := 'CAD_PRO_ENC.PRO_DMAP'
         else if cbCAMPO.Text = 'Container No' then
            cField := 'CAD_PRO_ENC.PRO_CTNR'
         else if cbCAMPO.Text = 'Descrição' then
            cField := 'CAD_PRO.PRO_DPRO'
         else if cbCAMPO.Text = 'Categoria' then
            cField := 'CAD_PRO.PRO_DCAT'
         else if cbCAMPO.Text = 'Grupo' then
            cField := 'CAD_PRO.PRO_DGRP'
         else if cbCAMPO.Text = 'Coleção' then
            cField := 'CAD_PRO.PRO_DCOL';

         if cbDATA.Text = 'Lançamento' then
         cData := 'PRO_DCAD';
       end;
    15: begin
         if cbCAMPO.Text      = 'Pedido No' then
            cField := 'CHQ_CDBX'
         else if cbCAMPO.Text = 'Cheque No' then
            cField := 'CHQ_NCHQ'
         else if cbCAMPO.Text = 'Cheque No - Bordero' then
            cField := 'CHQ_NCHQ'
         else if cbCAMPO.Text = 'Situação' then
            cField := 'CHQ_STFI'
         else if cbCAMPO.Text = 'Cliente - Código' then
            cField := 'CHQ_CCLI'                                                      
         else if cbCAMPO.Text = 'Cliente - Fantasia' then                             
            cField := 'CLI_FANT'                                                      
         else if cbCAMPO.Text = 'Cliente - Razão Social' then                         
            cField := 'CLI_RAZA'
         else if cbCAMPO.Text = 'CPF ou CNPJ (Cheque)' then
            cField := 'CHQ_CPF'
         else if cbCAMPO.Text = 'Vendedor' then
            cField := 'USU_DUSU'
         else if cbCAMPO.Text = 'Representante' then
            cField := 'REP_FANT'
         else if cbCAMPO.Text = 'Banco' then
            cField := 'CHQ_BANC'
         else if cbCAMPO.Text = 'Motivo de Devolução' then
            cField := 'CHQ_MOTI';

         if cbDATA.Text = 'Lançamento' then
         cData := 'CHQ_DCAD' else
         if cbDATA.Text = 'Vencimento' then
         cData := 'CHQ_DVEN' else
         if cbDATA.Text = 'Baixa' then
         cData := 'CHQ_DSAI';
       end;
  end;

  if ((edTXT.Text = '') or (cField = '')) and (cField <> 'Todos') then
  begin
    if (cbdata.Text = '') or (dxDT1.Date < 0) then
    editado := false else editado := true;
  end
  else
  editado := true;

  if cField = 'NFE_DUP.NFE_IDBX' then
  editado := true;
  
  close;
end;

procedure Tfrmpesquisa.edTXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     siVAL.Click;
end;

procedure Tfrmpesquisa.dxDT1Exit(Sender: TObject);
var
  Ctrl: TWinControl;
begin
  if dxDT1.Date < 0 then
     abort;

  try
    dxDT2.Date := dxDT1.Date;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpesquisa.FormShow(Sender: TObject);
begin
  case tag of
    1: begin
         cbcampo.Items.Add('Referencia');
         cbcampo.Items.Add('Produto');
         cbcampo.Items.Add('Ref. Fornecedor');
         cbcampo.Items.Add('Descrição');
         cbcampo.Items.Add('Categoria');
         cbcampo.Items.Add('Grupo');
         cbcampo.Items.Add('Coleção');
         cbcampo.Items.Add('Cor');
         cbcampo.Items.Add('Status');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Cadastro');
         cbdata.Items.Add('Alteração');
         cbdata.Items.Add('Programação');
         cbdata.Items.Add('Entrada');
         cbdata.Items.Add('Venda');
         cbdata.Text := 'Cadastro';
       end;
    2: begin
         cbcampo.Items.Add('Número Pedido');
         cbcampo.Items.Add('Número Romaneio');
         cbcampo.Items.Add('Número Baixa');
         cbcampo.Items.Add('Nota Fiscal');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('Nome Cliente');
         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('C.N.P.J.');
         cbcampo.Items.Add('C.P.F.');
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Forma de Pagamento');
         cbcampo.Items.Add('Status');
         cbcampo.Items.Add('Tipo de Pedido');
         cbcampo.Items.Add('Tipo de Cobrança');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Baixa');
         cbdata.Items.Add('Cancelamento');
         cbdata.Items.Add('Alteração');
         cbdata.Items.Add('Emissão NF');
         cbdata.Text := 'Lançamento';
       end;
    3,4: begin
         cbcampo.Items.Add('Código');
         cbcampo.Items.Add('Nota Fiscal');
         cbcampo.Items.Add('Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('C.N.P.J.');
         cbcampo.Items.Add('C.P.F.');
         cbcampo.Items.Add('Logradouro');
         cbcampo.Items.Add('Bairro');
         cbcampo.Items.Add('Cidade');
         cbcampo.Items.Add('UF');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Cadastro');
         cbdata.Items.Add('Fundação');
         cbdata.Items.Add('Alteração');
         cbdata.Items.Add('Última Compra');
         cbdata.Text := 'Última Compra';
       end;
    5: begin
         cbcampo.Items.Add('Número');
       end;
    6: begin
         cbcampo.Items.Add('Nota Fiscal');
         cbcampo.Items.Add('Título');
         cbcampo.Items.Add('Instrução Bancária');
         cbcampo.Items.Add('Status');
         cbcampo.Items.Add('Código do Cliente');
         cbcampo.Items.Add('Nome Fantasia do Cliente');
         cbcampo.Items.Add('Razão Social do Cliente');

         cbdata.Items.Add('Emissão');
         cbdata.Items.Add('Vencimento');
         cbdata.Text := 'Emissão';
       end;
    7: begin
         cbcampo.Items.Add('Pedido');
       end;
    8: begin
         cbcampo.Items.Add('Nota Fiscal');
         cbcampo.Items.Add('Pedido');
         cbcampo.Items.Add('Favorecido');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('C.F.O.P.');         
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Emissão');
         cbdata.Items.Add('Saída');
         cbdata.Items.Add('Cancelamento');
         cbdata.Text := 'Emissão';
       end;
    9: begin
         cbcampo.Items.Add('Referencia');
         cbcampo.Items.Add('Produto');
         cbcampo.Items.Add('Ref. Fornecedor');
         cbcampo.Items.Add('Descrição');
         cbcampo.Items.Add('Categoria');
         cbcampo.Items.Add('Grupo');
         cbcampo.Items.Add('Coleção');
       end;
   10: begin
         cbcampo.Items.Add('Documento');
         cbcampo.Items.Add('Cheque No');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('Cliente - Código');
         cbcampo.Items.Add('Cliente - Fantasia');
         cbcampo.Items.Add('Cliente - Razão Social');
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Baixa');
         cbdata.Items.Add('Vencimento');
         cbdata.Items.Add('Pagamento');
         cbdata.Text := 'Vencimento';
       end;
    11: begin
         cbcampo.Items.Add('Número Romaneio');
         cbcampo.Items.Add('Número Pedido');
         cbcampo.Items.Add('Número Baixa');
         cbcampo.Items.Add('Nota Fiscal');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('Nome Cliente');
         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('C.N.P.J.');
         cbcampo.Items.Add('C.P.F.');
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Forma de Pagamento');
         cbcampo.Items.Add('Status');
         cbcampo.Items.Add('Tipo de Pedido');
         cbcampo.Items.Add('Tipo de Cobrança');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Baixa');
         cbdata.Items.Add('Cancelamento');
         cbdata.Items.Add('Alteração');
         cbdata.Items.Add('Emissão');
         cbdata.Text := 'Lançamento';
       end;
   12: begin
         cbcampo.Items.Add('Documento');
         cbcampo.Items.Add('Descrição');
         cbcampo.Items.Add('Centro de Custo');
         cbcampo.Items.Add('Fornecedor - Código');
         cbcampo.Items.Add('Fornecedor - Fantasia');
         cbcampo.Items.Add('Fornecedor - Razão Social');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Vencimento');
         cbdata.Items.Add('Pagamento');
         cbdata.Text := 'Vencimento';
       end;
   13: begin
         cbdata.Items.Add('Lançamento');
         cbdata.Text := 'Lançamento';
       end;
   14: begin
         cbcampo.Items.Add('Local Estoque');
         cbcampo.Items.Add('Container No');
         cbcampo.Items.Add('Descrição');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Lançamento');
         cbdata.Text := 'Lançamento';
       end;
   15: begin
         cbcampo.Items.Add('Pedido No');
         cbcampo.Items.Add('Cheque No');
         cbcampo.Items.Add('Cheque No - Bordero');
         cbcampo.Items.Add('CPF ou CNPJ (Cheque)');
         cbcampo.Items.Add('Situação');
         cbcampo.Items.Add('Cliente - Código');
         cbcampo.Items.Add('Cliente - Fantasia');
         cbcampo.Items.Add('Cliente - Razão Social');
         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Banco');
         cbcampo.Items.Add('Motivo de Devolução');
         cbcampo.Items.Add('Todos');

         cbdata.Items.Add('Lançamento');
         cbdata.Items.Add('Vencimento');
         cbdata.Items.Add('Baixa');
         cbdata.Text := 'Lançamento';
       end;
  end;
end;

procedure Tfrmpesquisa.edTXTKeyPress(Sender: TObject; var Key: Char);
var
  BRet: boolean;
begin
  BRet := true;
  if Length(edTXT.Text) > 1 then
  BRet := false;

  if (BRet) and (key <> #8) then
  begin
    if key in ['0'..'9'] then
    begin
      case tag of
          2: begin
               if cbCAMPO.Text = 'Nome Cliente' then
                  cbCAMPO.Text := 'Número Pedido';
             end;
        3,4: begin
               if cbCAMPO.Text = 'Fantasia' then
                  cbCAMPO.Text := 'Código';
             end;
        6,8: begin
               if cbCAMPO.Text = 'Nome Fantasia do Cliente' then
                  cbCAMPO.Text := 'Nota Fiscal';
             end;
         11: begin
               if cbCAMPO.Text = 'Nome Cliente' then
                  cbCAMPO.Text := 'Número Romaneio';
             end;
      end;
    end
    else
    begin
      case tag of
        3,4: begin
               if cbCAMPO.Text = 'Código' then
                  cbCAMPO.Text := 'Fantasia';
             end;
          6: begin
               if cbCAMPO.Text = 'Nota Fiscal' then
                  cbCAMPO.Text := 'Nome Fantasia do Cliente';
             end;
          8: begin
               if cbCAMPO.Text = 'Nota Fiscal' then
                  cbCAMPO.Text := 'Favorecido';
             end;
          2: begin
               if cbCAMPO.Text = 'Número Pedido' then
               cbCAMPO.Text := 'Nome Cliente';
             end;
         11: begin
               if cbCAMPO.Text = 'Número Romaneio' then
               cbCAMPO.Text := 'Nome Cliente';
             end;
      end;
    end;
  end;
end;

end.
