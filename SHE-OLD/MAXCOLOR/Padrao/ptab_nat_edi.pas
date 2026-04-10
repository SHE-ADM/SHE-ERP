unit ptab_nat_edi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner,
  dxEditor, dxEdLib, StdCtrls, dxExEdtr, dxPageControl, rxSpeedbar;

type
  Tfrmtab_nat_edi = class(Tfrmpadr3)
    Label36: TLabel;
    edcnat: TdxEdit;
    eddnat: TdxEdit;
    Label1: TLabel;
    cbtipo: TdxImageEdit;
    Label54: TLabel;
    Label2: TLabel;
    cboper: TdxImageEdit;
    pcmain: TdxPageControl;
    tsicms: TdxTabSheet;
    dxTabSheet1: TdxTabSheet;
    Label8: TLabel;
    edpipp: TdxEdit;
    Label9: TLabel;
    tscofins: TdxTabSheet;
    Label10: TLabel;
    edpipc: TdxEdit;
    Label11: TLabel;
    dxTabSheet3: TdxTabSheet;
    Label13: TLabel;
    tsmsg: TdxTabSheet;
    edid: TdxEdit;
    cbcstp: TdxImageEdit;
    cbcsti: TdxImageEdit;
    Label3: TLabel;
    cbccst: TdxImageEdit;
    Bevel1: TBevel;
    rbfret: TRadioButton;
    rbbipi: TRadioButton;
    rbmate: TRadioButton;
    Label12: TLabel;
    edpenf: TdxEdit;
    Label4: TLabel;
    cbcsts: TdxImageEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    edobse: TdxMemo;
    Label5: TLabel;
    cbcsta: TdxImageEdit;
    cbcstc: TdxImageEdit;
    rgindt: TRadioGroup;
    dxTabSheet2: TdxTabSheet;
    Label6: TLabel;
    edcfop: TdxEdit;
    Bevel5: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure edcnatExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edpenfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpipcValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpippValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siSAVClick(Sender: TObject);
  private
    { Private declarations }
    procedure ALTERA_TAB_NAT;
    procedure NOVO_TAB_NAT;
  public
    { Public declarations }
  end;

var
  frmtab_nat_edi: Tfrmtab_nat_edi;

implementation

uses ptab_nat, uPrincipal;

{$R *.dfm}

procedure Tfrmtab_nat_edi.ALTERA_TAB_NAT;
begin
  with frmtab_nat.cadastro do
  begin
   edid.Text   := fieldbyname('id').Value;
   edcnat.Text := fieldbyname('nat_cnat').Value;
   edcfop.Text := fieldbyname('nat_cfop').AsString;
   eddnat.Text := fieldbyname('nat_dnat').Value;
   cbtipo.Text := fieldbyname('nat_tipo').Value;
   cboper.Text := fieldbyname('nat_oper').Value;
   cbccst.Text := fieldbyname('nat_ccst').Value;
   cbcsts.Text := fieldbyname('nat_csts').Value;
   cbcsta.Text := fieldbyname('nat_csta').Value;
   rgindt.ItemIndex := fieldbyname('nat_indt').Value;

   rbbipi.Checked := false;
   if fieldbyname('nat_bipi').AsString = '1' then
   rbbipi.Checked := true;
   rbfret.Checked := false;
   if fieldbyname('nat_fret').AsString = '1' then
   rbfret.Checked := true;
   rbmate.Checked := false;
   if fieldbyname('nat_mate').AsString = '1' then
   rbmate.Checked := true;

   cbcsti.Text := fieldbyname('nat_csti').Value;
   cbcstp.Text := fieldbyname('nat_cstp').Value;
   edpipp.Text := formatfloat('0.00',fieldbyname('nat_pipp').AsFloat);
   cbcstc.Text := fieldbyname('nat_cstc').Value;
   edpipc.Text := formatfloat('0.00',fieldbyname('nat_pipc').AsFloat);
   edpenf.Text := formatfloat('0.00',fieldbyname('nat_penf').AsFloat);
   edobse.Text := fieldbyname('nat_obse').Value;
  end;
end;

procedure Tfrmtab_nat_edi.NOVO_TAB_NAT;
begin
   edid.Text        := '0';
   edcnat.Text      := '';
   edcfop.Text      := '';
   eddnat.Text      := '';
   cbtipo.Text      := '';
   cboper.Text      := '';
   cbccst.Text      := '00';
   cbcsts.Text      := '102';
   cbcsta.Text      := '101';
   rgindt.ItemIndex := 1;
   rbbipi.Checked   := false;
   rbfret.Checked   := false;
   rbmate.Checked   := false;
   edpenf.Text      := '0,00';

   if frmprincipal.parametrosPAR_CCRT.AsString = '3' then
   begin
     cbcsti.Text  := '01';
     cbcstp.Text  := '01';
     cbcstc.Text  := '01';
   end
   else
     cbcsti.Text  := '99';
     cbcstp.Text  := '99';
     cbcstc.Text  := '99';
   begin
   end;
   edpipp.Text    := '0,65';
   edpipc.Text    := '3,00';
   edobse.Text    := '';
end;

procedure Tfrmtab_nat_edi.FormCreate(Sender: TObject);
begin
  IBTra.StartTransaction;
  pcmain.ActivePageIndex := 0;

  cbccst.Values.Add('00');
  cbccst.Descriptions.Add('00 - Tributada Integralmente');
  cbccst.Values.Add('10');
  cbccst.Descriptions.Add('10 - Tributada e com cobrança do I.C.M.S. por Substituição Tributária');
  cbccst.Values.Add('20');
  cbccst.Descriptions.Add('20 - Com Redução de Base de Cálculo');
  cbccst.Values.Add('30');
  cbccst.Descriptions.Add('30 - Isenta ou não Tributada e com Cobrança do I.C.M.S. por Substituição Tributária');
  cbccst.Values.Add('40');
  cbccst.Descriptions.Add('40 - Isenta');
  cbccst.Values.Add('41');
  cbccst.Descriptions.Add('41 - Não Tributada');
  cbccst.Values.Add('50');
  cbccst.Descriptions.Add('50 - Suspensão');
  cbccst.Values.Add('51');
  cbccst.Descriptions.Add('51 - Diferimento');
  cbccst.Values.Add('60');
  cbccst.Descriptions.Add('60 - I.C.M.S. Cobrado Anteriormente por Substituição Tributária');
  cbccst.Values.Add('70');
  cbccst.Descriptions.Add('70 - Com Redução de Base de Cálculo e Cobrança do I.C.M.S. por Substituição Tributária');
  cbccst.Values.Add('90');
  cbccst.Descriptions.Add('90 - Outras');
  cbccst.Enabled := (frmprincipal.parametrosPAR_CCRT.AsString = '3' );

  cbcsts.Values.Add('101');
  cbcsts.Descriptions.Add('101 – Tributada pelo Simples Nacional com Permissão de Crédito');
  cbcsts.Values.Add('102');
  cbcsts.Descriptions.Add('102 – Tributada pelo Simples Nacional sem Permissão de Crédito');
  cbcsts.Values.Add('103');
  cbcsts.Descriptions.Add('103 – Isenção do I.C.M.S. no Simples Nacional para Faixa de Receita Bruta');
  cbcsts.Values.Add('201');
  cbcsts.Descriptions.Add('201 – Tributada pelo Simples Nacional com Permissão de Crédito e com Cobrança do I.C.M.S. por sSbstituição Tributária');
  cbcsts.Values.Add('202');
  cbcsts.Descriptions.Add('202 – Tributada pelo Simples Nacional sem Permissão de Crédito e com Cobrança do I.C.M.S. por Substituição Tributária');
  cbcsts.Values.Add('203');
  cbcsts.Descriptions.Add('203 – Isenção do I.C.M.S. no Simples Nacional para Faixa de Receita Bruta e com Cobrança do I.C.M.S. por Substituição Tributária');
  cbcsts.Values.Add('300');
  cbcsts.Descriptions.Add('300 – Imune');
  cbcsts.Values.Add('400');
  cbcsts.Descriptions.Add('400 – Não Tributada pelo Simples Nacional');
  cbcsts.Values.Add('500');
  cbcsts.Descriptions.Add('500 – I.C.M.S. Cobrado Anteriormente por Substituição Tributária (Substituído) ou por Antecipação');
  cbcsts.Values.Add('900');
  cbcsts.Descriptions.Add('900 – Outros');
  cbcsts.Enabled := (frmprincipal.parametrosPAR_CCRT.AsString <> '3');

  cbcsta.Values.Add('101');
  cbcsta.Descriptions.Add('101 – Tributada pelo Simples Nacional com Permissão de Crédito');
  cbcsta.Values.Add('102');
  cbcsta.Descriptions.Add('102 – Tributada pelo Simples Nacional sem Permissão de Crédito');
  cbcsta.Values.Add('103');
  cbcsta.Descriptions.Add('103 – Isenção do I.C.M.S. no Simples Nacional para Faixa de Receita Bruta');
  cbcsta.Values.Add('201');
  cbcsta.Descriptions.Add('201 – Tributada pelo Simples Nacional com Permissão de Crédito e com Cobrança do I.C.M.S. por sSbstituição Tributária');
  cbcsta.Values.Add('202');
  cbcsta.Descriptions.Add('202 – Tributada pelo Simples Nacional sem Permissão de Crédito e com Cobrança do I.C.M.S. por Substituição Tributária');
  cbcsta.Values.Add('203');
  cbcsta.Descriptions.Add('203 – Isenção do I.C.M.S. no Simples Nacional para Faixa de Receita Bruta e com Cobrança do I.C.M.S. por Substituição Tributária');
  cbcsta.Values.Add('300');
  cbcsta.Descriptions.Add('300 – Imune');
  cbcsta.Values.Add('400');
  cbcsta.Descriptions.Add('400 – Não Tributada pelo Simples Nacional');
  cbcsta.Values.Add('500');
  cbcsta.Descriptions.Add('500 – I.C.M.S. Cobrado Anteriormente por Substituição Tributária (Substituído) ou por Antecipação');
  cbcsta.Values.Add('900');
  cbcsta.Descriptions.Add('900 – Outros');
  cbcsta.Enabled := (frmprincipal.parametrosPAR_CCRT.AsString <> '3');
end;

procedure Tfrmtab_nat_edi.edcnatExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (edcnat.Text = '') then
       exit;

   if edcnat.Text <> frmtab_nat.cadastroNAT_CNAT.AsString then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_NAT');
      SQL.Add('WHERE  NAT_CNAT = '''+edcnat.Text+'''');
      SQL.Add('AND         ID <> '''+edid.Text+'''');
      Open;

      if not fields[0].IsNull then
      begin
        edcnat.SetFocus;
        raise exception.Create('C.F.O.P. já Cadastrado !');
      end;
    end;
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

procedure Tfrmtab_nat_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
     ALTERA_TAB_NAT
  else
     NOVO_TAB_NAT;   
end;

procedure Tfrmtab_nat_edi.edpenfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpenf.Text = '' then
     edpenf.Text := '0';

  edpenf.Text := formatfloat('0.00',strtofloat(edpenf.Text));
end;

procedure Tfrmtab_nat_edi.edpipcValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpipc.Text = '' then
     edpipc.Text := '0';

  edpipc.Text := formatfloat('0.00',strtofloat(edpipc.Text));
end;

procedure Tfrmtab_nat_edi.edpippValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpipp.Text = '' then
     edpipp.Text := '0';

  edpipp.Text := formatfloat('0.00',strtofloat(edpipp.Text));
end;

procedure Tfrmtab_nat_edi.siSAVClick(Sender: TObject);
begin
  try
    ibSP.StoredProcName := 'SP_TAB_NAT';
    ibSP.Prepare;
    case frmtab_nat_edi.Tag of
      0: ibSP.ParamByName('id').Value := 0;
      1: ibSP.ParamByName('id').Value := edid.Text;
    end;

    ibSP.ParamByName('cnat').Value := edcnat.Text;
    ibSP.ParamByName('dnat').Value := eddnat.Text;
    ibSP.ParamByName('tipo').Value := cbtipo.Text;
    ibSP.ParamByName('oper').Value := cboper.Text;
    ibSP.ParamByName('ccst').Value := cbccst.Text;
    ibSP.ParamByName('csts').Value := cbcsts.Text;
    ibSP.ParamByName('csta').Value := cbcsta.Text;

    ibSP.ParamByName('bipi').Value := '0';
    if rbbipi.Checked then
    ibSP.ParamByName('bipi').Value := '1';

    ibSP.ParamByName('fret').Value := '0';
    if rbfret.Checked then
    ibSP.ParamByName('fret').Value := '1';

    ibSP.ParamByName('mate').Value := '0';
    if rbmate.Checked then
    ibSP.ParamByName('mate').Value := '1';

    ibSP.ParamByName('penf').Value := edpenf.Text;
    ibSP.ParamByName('csti').Value := cbcsti.Text;
    ibSP.ParamByName('cstp').Value := cbcstp.Text;
    ibSP.ParamByName('pipp').Value := edpipp.Text;
    ibSP.ParamByName('cstc').Value := cbcstc.Text;
    ibSP.ParamByName('pipc').Value := edpipc.Text;

    ibSP.ParamByName('obse').Value := edobse.Lines.Text;
    ibSP.ParamByName('sta').Value  := '0';

    ibSP.ParamByName('indt').Value := rgindt.ItemIndex;
    ibSP.ParamByName('cenq').Value := '';
    ibSP.ParamByName('cfop').Value := edcfop.Text;
    ibSP.ExecProc;

    case frmtab_nat_edi.Tag of
      0: frmprincipal.Log_Eve('Notas Fiscais','Tabela de natureza de operação','Inclusão' ,edcnat.Text,edcnat.Text,LOWERCASE(eddnat.Text),'','');
      1: frmprincipal.Log_Eve('Notas Fiscais','Tabela de natureza de operação','Alteração',edcnat.Text,edcnat.Text,LOWERCASE(eddnat.Text),'','');
    end;

    editado := true;
    IBTra.Commit;
    IBTra.StartTransaction;

    if (frmtab_nat_edi.Tag = 0) then
       NOVO_TAB_NAT
    else
       Close;
  except
    editado := false;
    IBTRA.Rollback;
    IBTra.StartTransaction;
  end;
end;

end.

