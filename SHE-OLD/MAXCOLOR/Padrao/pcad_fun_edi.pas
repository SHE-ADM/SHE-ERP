unit pcad_fun_edi;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, IBStoredProc, IBDatabase, ImgList, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxExEdtr, jpeg,
  dxEdLib, dxEditor, dxCntner, StdCtrls, dxPageControl, Buttons, ExtDlgs,
  dateutils, rxSpeedbar;

type
  Tfrmcad_fun_edi = class(Tfrmpadr3)
    Label1: TLabel;
    Label5: TLabel;
    Label55: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    pcmain: TdxPageControl;
    tsADI: TdxTabSheet;
    Bevel5: TBevel;
    edexpe: TdxEdit;
    Label22: TLabel;
    eddadm: TdxDateEdit;
    Label23: TLabel;
    Label24: TLabel;
    edpror: TdxEdit;
    cbapos: TdxImageEdit;
    cbtadm: TComboBox;
    Label26: TLabel;
    eddtra: TdxDateEdit;
    Label27: TLabel;
    edddem: TdxDateEdit;
    Label28: TLabel;
    cbsitu: TComboBox;
    Label29: TLabel;
    cbcage: TComboBox;
    Label30: TLabel;
    Aposentado: TLabel;
    tsPAG: TdxTabSheet;
    Bevel6: TBevel;
    Label31: TLabel;
    Label32: TLabel;
    edcafi: TdxEdit;
    eddafi: TdxDateEdit;
    Label33: TLabel;
    edcafr: TdxEdit;
    Label34: TLabel;
    Label35: TLabel;
    eddafr: TdxDateEdit;
    Label36: TLabel;
    eddfei: TdxDateEdit;
    Label38: TLabel;
    eddfet: TdxDateEdit;
    Label37: TLabel;
    Label39: TLabel;
    eddaqi: TdxDateEdit;
    eddaqt: TdxDateEdit;
    Label40: TLabel;
    Label41: TLabel;
    edirrf: TdxEdit;
    Label42: TLabel;
    Inss: TLabel;
    edinss: TdxEdit;
    cbfpag: TComboBox;
    Label43: TLabel;
    Label44: TLabel;
    edpage: TdxEdit;
    Label45: TLabel;
    edpcon: TdxEdit;
    Label47: TLabel;
    cbptip: TdxImageEdit;
    Label49: TLabel;
    edpdoc: TdxMaskEdit;
    Label50: TLabel;
    cbfcop: TdxImageEdit;
    Label51: TLabel;
    Label52: TLabel;
    edfdop: TdxDateEdit;
    Label53: TLabel;
    cbfcat: TComboBox;
    Label54: TLabel;
    edfcon: TdxEdit;
    Label57: TLabel;
    edfsal: TdxEdit;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    cbtcon: TComboBox;
    edpens: TdxEdit;
    Label61: TLabel;
    cbsind: TdxImageEdit;
    Label62: TLabel;
    cbdsin: TdxImageEdit;
    tsDOC: TdxTabSheet;
    Bevel8: TBevel;
    Label63: TLabel;
    Bevel9: TBevel;
    edncrt: TdxEdit;
    Label64: TLabel;
    edscrt: TdxEdit;
    Label65: TLabel;
    cbrguf: TdxImageEdit;
    Label66: TLabel;
    eddcrt: TdxDateEdit;
    Label67: TLabel;
    Label68: TLabel;
    Bevel10: TBevel;
    edrgnu: TdxEdit;
    Label69: TLabel;
    edrgem: TdxEdit;
    Label70: TLabel;
    Label71: TLabel;
    edrgdt: TdxDateEdit;
    Label72: TLabel;
    Bevel11: TBevel;
    edtenu: TdxEdit;
    Label73: TLabel;
    edtezo: TdxEdit;
    Label74: TLabel;
    Label75: TLabel;
    edtese: TdxEdit;
    edrnum: TdxEdit;
    Label77: TLabel;
    edrsec: TdxEdit;
    Label78: TLabel;
    Label79: TLabel;
    edrcat: TdxEdit;
    Label76: TLabel;
    Bevel12: TBevel;
    edcpf: TdxMaskEdit;
    Label80: TLabel;
    edcamt: TdxEdit;
    Label81: TLabel;
    cbpdba: TdxImageEdit;
    cbfdba: TdxImageEdit;
    eddoti: TComboBox;
    Tipo: TLabel;
    eddonu: TdxEdit;
    Label83: TLabel;
    cbnaci: TComboBox;
    Label84: TLabel;
    Label85: TLabel;
    Bevel13: TBevel;
    ednaan: TdxEdit;
    Label86: TLabel;
    Label88: TLabel;
    Bevel15: TBevel;
    Label87: TLabel;
    Bevel14: TBevel;
    cbgrau: TComboBox;
    Label89: TLabel;
    Label90: TLabel;
    Bevel16: TBevel;
    cbgfip: TComboBox;
    Label91: TLabel;
    Label92: TLabel;
    cbggfi: TdxImageEdit;
    tsPES: TdxTabSheet;
    Bevel17: TBevel;
    cbnacc: TComboBox;
    Label82: TLabel;
    edconj: TdxEdit;
    Label93: TLabel;
    Label94: TLabel;
    edmae: TdxEdit;
    Label95: TLabel;
    cbnacm: TComboBox;
    Label96: TLabel;
    edpai: TdxEdit;
    Label97: TLabel;
    cbnacp: TComboBox;
    tsTEL: TdxTabSheet;
    edddd: TdxMaskEdit;
    Bevel18: TBevel;
    edDDD1: TdxMaskEdit;
    Label98: TLabel;
    edtel1: TdxMaskEdit;
    Label99: TLabel;
    edDDD2: TdxMaskEdit;
    Label100: TLabel;
    edtel2: TdxMaskEdit;
    Label101: TLabel;
    edDDD3: TdxMaskEdit;
    Label102: TLabel;
    edtel3: TdxMaskEdit;
    Label103: TLabel;
    edmail: TdxEdit;
    Label104: TLabel;
    edDDD4: TdxMaskEdit;
    Label105: TLabel;
    Label106: TLabel;
    edcel1: TdxMaskEdit;
    cbctc1: TdxImageEdit;
    Label107: TLabel;
    Label108: TLabel;
    edDDD5: TdxMaskEdit;
    edcel2: TdxMaskEdit;
    Label109: TLabel;
    cbctc2: TdxImageEdit;
    Label110: TLabel;
    edneid: TdxMaskEdit;
    Label111: TLabel;
    tsEND: TdxTabSheet;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    edtlog: TdxEdit;
    edlogr: TdxEdit;
    edcep: TdxButtonEdit;
    ednume: TdxEdit;
    edcomp: TdxEdit;
    edbai: TdxEdit;
    edesta: TdxEdit;
    edcid: TdxEdit;
    Bevel19: TBevel;
    Label117: TLabel;
    edcidn: TdxEdit;
    edestn: TdxEdit;
    Label121: TLabel;
    Label122: TLabel;
    cbcivi: TComboBox;
    tsDIC: TdxTabSheet;
    Bevel20: TBevel;
    Label123: TLabel;
    cbconv: TdxImageEdit;
    cbssin: TdxImageEdit;
    Label124: TLabel;
    edmdis: TdxEdit;
    Label125: TLabel;
    Label126: TLabel;
    Label128: TLabel;
    Label131: TLabel;
    Label127: TLabel;
    Label129: TLabel;
    cbppri: TdxImageEdit;
    Label130: TLabel;
    cbvtra: TdxImageEdit;
    Label132: TLabel;
    Label133: TLabel;
    cbsoka: TdxImageEdit;
    cbvale: TdxImageEdit;
    Label134: TLabel;
    cb13sa: TdxImageEdit;
    edvsal: TdxEdit;
    Label25: TLabel;
    Label135: TLabel;
    cbtsal: TComboBox;
    Label136: TLabel;
    edhein: TdxMaskEdit;
    edhsin: TdxMaskEdit;
    edhefn: TdxMaskEdit;
    edhsfn: TdxMaskEdit;
    OpenPictureDialogEdit: TOpenPictureDialog;
    Label138: TLabel;
    edabon: TdxEdit;
    cep_log: TIBQuery;
    cep_logID: TIntegerField;
    cep_logLOG_TIT: TIBStringField;
    cep_logLOG_NO: TIBStringField;
    cep_logLOG_CEP: TIBStringField;
    cep_logBAI_NO: TIBStringField;
    cep_logLOC_NO: TIBStringField;
    cep_logLOG_UF: TIBStringField;
    Label10: TLabel;
    edcomi: TdxEdit;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    edregi: TdxEdit;
    ednord: TdxEdit;
    Label139: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    Label46: TLabel;
    Label56: TLabel;
    Label2: TLabel;
    Label48: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label137: TLabel;
    sbtab_dep: TSpeedButton;
    sbtab_sec: TSpeedButton;
    sbtab_car: TSpeedButton;
    edcfun: TdxEdit;
    edapel: TdxEdit;
    ednome: TdxEdit;
    eddcad: TdxDateEdit;
    cbdemp: TdxImageEdit;
    edccus: TdxButtonEdit;
    eddcus: TdxEdit;
    edccbo: TdxEdit;
    edchap: TdxEdit;
    cbdvin: TComboBox;
    Panel3: TPanel;
    imag: TImage;
    SpeedButton1: TSpeedButton;
    edaltu: TdxEdit;
    edpeso: TdxEdit;
    cbcabe: TComboBox;
    cbolho: TComboBox;
    cbraca: TComboBox;
    cbdefi: TComboBox;
    eddnas: TdxDateEdit;
    edidad: TdxEdit;
    edsina: TdxMemo;
    cbalva: TdxImageEdit;
    cbvsta: TdxImageEdit;
    cbddep: TdxImageEdit;
    cbdsec: TdxImageEdit;
    cbdcar: TdxImageEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edccboValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edchapValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edidadValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edaltuValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edpesoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edexpeValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edprorValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edvsalValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edirrfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edinssValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcafrValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcafiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edfsalValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure imagDblClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure edccusValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcepButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edcepClick(Sender: TObject);
    procedure edcepEnter(Sender: TObject);
    procedure edcepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edabonValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure eddnasExit(Sender: TObject);
    procedure edcomiValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ednordValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
    procedure NOVO_FUNCIONARIO;
    procedure ALTERA_FUNCIONARIO;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
    editado: boolean;    
  end;

var
  frmcad_fun_edi: Tfrmcad_fun_edi;

implementation

uses uPrincipal, pcad_fun, unLocaliza_Cep;

{$R *.dfm}

procedure Tfrmcad_fun_edi.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
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
    imag.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_fun_edi.ALTERA_FUNCIONARIO;
begin
  with frmcad_fun do
  begin
    edCFUN.Text := cadastroID.AsString;
    edNOME.Text := cadastroFUN_NOME.AsString;
    edAPEL.Text := cadastroFUN_APEL.AsString;
    if not cadastroFUN_DCAD.IsNull then
       edDCAD.Date := cadastroFUN_DCAD.AsDateTime;
    cbDEMP.Text := inttostr(cadastroFUN_CEMP.AsInteger);
    cbDDEP.Text := cadastroFUN_DDEP.AsString;
    cbDSEC.Text := cadastroFUN_DSEC.AsString;
    edCCUS.Text := inttostr(cadastroFUN_CCUS.AsInteger);
    edDCUS.Text := cadastroFUN_DCUS.AsString;
    cbDCAR.Text := cadastroFUN_DCAR.AsString;
    edCCBO.Text := inttostr(cadastroFUN_CCBO.AsInteger);
    edCHAP.Text := inttostr(cadastroFUN_CHAP.AsInteger);
    cbDVIN.Text := cadastroFUN_DVIN.AsString;
    cbVSTA.Text := cadastroFUN_VSTA.AsString;
    edVSAL.Text := formatfloat('#,0.00########',cadastroFUN_VSAL.AsFloat);
    edABON.Text := formatfloat('#,0.00########',cadastroFUN_ABON.AsFloat);
    cbTSAL.Text := cadastroFUN_TSAL.AsString;
    edALTU.Text := formatfloat('#,0.00########',cadastroFUN_ALTU.AsFloat);
    edPESO.Text := formatfloat('#,0.00########',cadastroFUN_PESO.AsFloat);
    cbCABE.Text := cadastroFUN_CABE.AsString;
    cbOLHO.Text := cadastroFUN_OLHO.AsString;
    cbRACA.Text := cadastroFUN_RACA.AsString;
    cbDEFI.Text := cadastroFUN_DEFI.AsString;
    cbALVA.Text := 'NÃO';
    if cadastroFUN_ALVA.AsString = '1' then
       cbALVA.Text := 'SIM';
    if not cadastroFUN_SINA.IsNull then
       edSINA.Text := cadastroFUN_SINA.AsString;
    if not cadastroFUN_DNAS.IsNull then
       edDNAS.Date := cadastroFUN_DNAS.AsDateTime;
    edIDAD.Text := inttostr(cadastroFUN_IDAD.AsInteger);
    if not cadastroFUN_DADM.IsNull then
       edDADM.Date := cadastroFUN_DADM.AsDateTime;
    edEXPE.Text := inttostr(cadastroFUN_EXPE.AsInteger);
    edPROR.Text := inttostr(cadastroFUN_PROR.AsInteger);
    cbAPOS.Text := 'NÃO';
    if cadastroFUN_APOS.AsString = '1' then
       cbAPOS.Text := 'SIM';
    cbTADM.Text := cadastroFUN_TADM.AsString;
    if not cadastroFUN_DTRA.IsNull then
       edDTRA.Date := cadastroFUN_DTRA.AsDateTime;
    if not cadastroFUN_DDEM.IsNull then
       edDDEM.Date := cadastroFUN_DDEM.AsDateTime;
    cbSITU.Text := cadastroFUN_SITU.AsString;
    cbCAGE.Text := cadastroFUN_CAGE.AsString;
    edCAFI.Text := inttostr(cadastroFUN_CAFI.AsInteger);
    if not cadastroFUN_DAFI.IsNull then
       edDAFI.Date := cadastroFUN_DAFI.AsDateTime;
    edCAFR.Text := inttostr(cadastroFUN_CAFR.AsInteger);
    if not cadastroFUN_DAFR.IsNull then
       edDAFR.Date := cadastroFUN_DAFR.AsDateTime;
    if not cadastroFUN_DFEI.IsNull then
       edDFEI.Date := cadastroFUN_DFEI.AsDateTime;
    if not cadastroFUN_DFET.IsNull then
       edDFET.Date := cadastroFUN_DFET.AsDateTime;
    if not cadastroFUN_DAQI.IsNull then
       edDAQI.Date := cadastroFUN_DAQI.AsDateTime;
    if not cadastroFUN_DAQT.IsNull then
       edDAQT.Date := cadastroFUN_DAQT.AsDateTime;
    edIRRF.Text := formatfloat('#,0.00########',cadastroFUN_IRRF.AsFloat);
    edINSS.Text := formatfloat('#,0.00########',cadastroFUN_INSS.AsFloat);
    cbFPAG.Text := cadastroFUN_FPAG.AsString;
    cbPDBA.Text := cadastroFUN_PDBA.AsString;
    edPAGE.Text := cadastroFUN_PAGE.AsString;
    edPCON.Text := cadastroFUN_PCON.AsString;
    cbPTIP.Text := cadastroFUN_PTIP.AsString;
    edPDOC.Text := cadastroFUN_PDOC.AsString;
    cbFCOP.Text := cadastroFUN_FCOP.AsString;
    edFDOP.Text := cadastroFUN_FDOP.AsString;
    cbFDBA.Text := cadastroFUN_FDBA.AsString;
    cbFCAT.Text := cadastroFUN_FCAT.AsString;
    edFCON.Text := cadastroFUN_FCON.AsString;
    edFSAL.Text := formatfloat('#,0.00########',cadastroFUN_FSAL.AsFloat);
    cbDSIN.Text := cadastroFUN_DSIN.AsString;
    cbSIND.Text := 'NÃO';
    if cadastroFUN_SIND.AsString = '1' then
       cbSIND.Text := 'SIM';
    cbTCON.Text := cadastroFUN_TCON.AsString;
    edPENS.Text := inttostr(cadastroFUN_PENS.AsInteger);
    edNCRT.Text := cadastroFUN_NCRT.AsString;
    edSCRT.Text := cadastroFUN_SCRT.AsString;
    edDCRT.Text := cadastroFUN_DCRT.AsString;
    edRGNU.Text := cadastroFUN_RGNU.AsString;
    edRGEM.Text := cadastroFUN_RGEM.AsString;
    cbRGUF.Text := cadastroFUN_RGUF.AsString;
    edRGDT.Text := cadastroFUN_RGDT.AsString;
    edTENU.Text := cadastroFUN_TENU.AsString;
    edTEZO.Text := cadastroFUN_TEZO.AsString;
    edTESE.Text := cadastroFUN_TESE.AsString;
    edRNUM.Text := cadastroFUN_RNUM.AsString;
    edRSEC.Text := cadastroFUN_RSEC.AsString;
    edRCAT.Text := cadastroFUN_RCAT.AsString;
    edCPF .Text := cadastroFUN_CPF .AsString;
    edCAMT.Text := cadastroFUN_CAMT.AsString;
    edDOTI.Text := cadastroFUN_DOTI.AsString;
    edDONU.Text := cadastroFUN_DONU.AsString;
    cbNACI.Text := cadastroFUN_NACI.AsString;
    edNAAN.Text := inttostr(cadastroFUN_NAAN.AsInteger);
    cbGRAU.Text := cadastroFUN_GRAU.AsString;
    cbGFIP.Text := cadastroFUN_GFIP.AsString;
    cbGGFI.Text := 'NÃO';
    if cadastroFUN_GGFI.AsString = '1' then
       cbGGFI.Text := 'SIM';
    cbCIVI.Text := cadastroFUN_CIVI.AsString;
    edDDD1.Text := cadastroFUN_DDD1.AsString;
    edTEL1.Text := cadastroFUN_TEL1.AsString;
    edDDD2.Text := cadastroFUN_DDD2.AsString;
    edTEL2.Text := cadastroFUN_TEL2.AsString;
    edDDD3.Text := cadastroFUN_DDD3.AsString;
    edTEL3.Text := cadastroFUN_TEL3.AsString;
    edDDD4.Text := cadastroFUN_DDD4.AsString;
    edCEL1.Text := cadastroFUN_CEL1.AsString;
    cbCTC1.Text := cadastroFUN_CTC1.AsString;
    edDDD5.Text := cadastroFUN_DDD5.AsString;
    edCEL2.Text := cadastroFUN_CEL2.AsString;
    cbCTC2.Text := cadastroFUN_CTC2.AsString;
    edNEID.Text := cadastroFUN_NEID.AsString;
    edMAIL.Text := cadastroFUN_MAIL.AsString;
    edCONJ.Text := cadastroFUN_CONJ.AsString;
    cbNACC.Text := cadastroFUN_NACC.AsString;
    edMAE.Text  := cadastroFUN_MAE.AsString;
    cbNACM.Text := cadastroFUN_NACM.AsString;
    edPAI.Text  := cadastroFUN_PAI.AsString;
    cbNACP.Text := cadastroFUN_NACP.AsString;
    edTLOG.Text := cadastroFUN_TLOG.AsString;
    edLOGR.Text := cadastroFUN_LOGR.AsString;
    edCEP.Text  := cadastroFUN_CEP.AsString;
    edNUME.Text := cadastroFUN_NUME.AsString;
    edCOMP.Text := cadastroFUN_COMP.AsString;
    edBAI.Text  := cadastroFUN_BAI.AsString;
    edCID.Text  := cadastroFUN_CID.AsString;
    edCIDN.Text := cadastroFUN_CIDN.AsString;
    edESTA.Text := cadastroFUN_ESTA.AsString;
    edESTN.Text := cadastroFUN_ESTN.AsString;
    cbCONV.Text := 'NÃO';
    if cadastroFUN_CONV.AsString = '1' then
       cbCONV.Text := 'SIM';
    cbSSIN.Text := 'NÃO';
    if cadastroFUN_SSIN.AsString = '1' then
       cbSSIN.Text := 'SIM';
    edCOMI.Text := formatfloat('0.00',cadastroFUN_COMI.AsFloat);
    edREGI.Text := cadastroFUN_REGI.AsString;
    ednord.Text := ostrzero(cadastroFUN_NORD.AsInteger,3);
    edMDIS.Text := inttostr(cadastroFUN_MDIS.AsInteger);
    edHEIN.Text := cadastroFUN_HEIN.AsString;
    edHSIN.Text := cadastroFUN_HSIN.AsString;
    edHEFN.Text := cadastroFUN_HEFN.AsString;
    edHSFN.Text := cadastroFUN_HSFN.AsString;
    cbPPRI.Text := 'NÃO';
    if cadastroFUN_PPRI.AsString = '1' then
       cbPPRI.Text := 'SIM';
    cbVTRA.Text := 'NÃO';
    if cadastroFUN_VTRA.AsString = '1' then
       cbVTRA.Text := 'SIM';
    cbSOKA.Text := 'NÃO';
    if cadastroFUN_SOKA.AsString = '1' then
       cbSOKA.Text := 'SIM';
    cbVALE.Text := 'NÃO';
    if cadastroFUN_VALE.AsString = '1' then
       cbVALE.Text := 'SIM';
    cb13SA.Text := 'NÃO';
    if cadastroFUN_13SA.AsString = '1' then
       cb13SA.Text := 'SIM';

    carregaFoto(cadastroFUN_FOTO.BlobSize,cadastroFUN_FOTO,cadastro,frmprincipal.parametros);
  end;


  edapel.SetFocus;
end;

procedure Tfrmcad_fun_edi.NOVO_FUNCIONARIO;
begin
  edCFUN.Text := '00000';
  edNOME.Text := '';
  edAPEL.Text := '';
  edDCAD.Date := strtodate(SLPrincipal.Values['data_sistema']);
  cbDEMP.Text := frmprincipal.parametrosID.AsString;
  cbDDEP.Text := '';
  cbDSEC.Text := '';
  edCCUS.Text := '0';
  edDCUS.Text := '';
  cbDCAR.Text := '';
  edCCBO.Text := '0';
  edCHAP.Text := '0';
  cbDVIN.Text := '';
  cbVSTA.Text := 'ATIVO';
  edVSAL.Text := '0,00';
  edABON.Text := '0,00';
  cbTSAL.Text := 'MENSAL';
  edALTU.Text := '0,00';
  edPESO.Text := '0,00';
  cbCABE.Text := '';
  cbOLHO.Text := '';
  cbRACA.Text := '';
  cbDEFI.Text := '';
  cbALVA.Text := 'SIM';
  edSINA.Text := '';
  edDNAS.Text := '';
  edIDAD.Text := '0';
  edDADM.Text := '';
  edEXPE.Text := '0';
  edPROR.Text := '0';
  cbAPOS.Text := 'NÃO';
  cbTADM.Text := '';
  edDTRA.Text := '';
  edDDEM.Text := '';
  cbSITU.Text := '';
  cbCAGE.Text := '';
  edCAFI.Text := '0';
  edDAFI.Text := '';
  edCAFR.Text := '0';
  edDAFR.Text := '';
  edDFEI.Text := '';
  edDFET.Text := '';
  edDAQI.Text := '';
  edDAQT.Text := '';
  edIRRF.Text := '0,00';
  edINSS.Text := '0,00';
  cbFPAG.Text := '';
  cbPDBA.Text := '';
  edPAGE.Text := '';
  edPCON.Text := '';
  cbPTIP.Text := '';
  edPDOC.Text := '';
  cbFCOP.Text := '';
  edFDOP.Text := '';
  cbFDBA.Text := '';
  cbFCAT.Text := '';
  edFCON.Text := '';
  edFSAL.Text := '0,00';
  cbDSIN.Text := '';
  cbSIND.Text := 'NÃO';
  cbTCON.Text := '';
  edPENS.Text := '0';
  edNCRT.Text := '';
  edSCRT.Text := '';
  edDCRT.Text := '';
  edRGNU.Text := '';
  edRGEM.Text := '';
  cbRGUF.Text := '';
  edRGDT.Text := '';
  edTENU.Text := '';
  edTEZO.Text := '';
  edTESE.Text := '';
  edRNUM.Text := '';
  edRSEC.Text := '';
  edRCAT.Text := '';
  edCPF .Text := '';
  edCAMT.Text := '';
  edDOTI.Text := '';
  edDONU.Text := '';
  cbNACI.Text := '';
  edNAAN.Text := '0';
  cbGRAU.Text := '';
  cbGFIP.Text := '';
  cbGGFI.Text := 'NÃO';
  cbCIVI.Text := '';
  edDDD1.Text := '11';
  edTEL1.Text := '';
  edDDD2.Text := '11';
  edTEL2.Text := '';
  edDDD3.Text := '11';
  edTEL3.Text := '';
  edDDD4.Text := '11';
  edCEL1.Text := '';
  cbCTC1.Text := '';
  edDDD5.Text := '11';
  edCEL2.Text := '';
  cbCTC2.Text := '';
  edNEID.Text := '';
  edMAIL.Text := '';
  edCONJ.Text := '';
  cbNACC.Text := '';
  edMAE.Text  := '';
  cbNACM.Text := '';
  edPAI.Text  := '';
  cbNACP.Text := '';
  edTLOG.Text := '';
  edLOGR.Text := '';
  edCEP.Text  := '';
  edNUME.Text := '';
  edCOMP.Text := '';
  edBAI.Text  := '';
  edCID.Text  := '';
  edCIDN.Text := '';
  edESTA.Text := '';
  edESTN.Text := '';
  cbCONV.Text := 'NÃO';
  cbSSIN.Text := 'NÃO';
  edMDIS.Text := '0';
  edCOMI.Text := '0,00';
  edREGI.Text := '';
  edNORD.Text := '0';
  edHEIN.Text := '0000';
  edHSIN.Text := '0000';
  edHEFN.Text := '0000';
  edHSFN.Text := '0000';
  cbPPRI.Text := 'NÃO';
  cbVTRA.Text := 'NÃO';
  cbSOKA.Text := 'NÃO';
  cbVALE.Text := 'NÃO';
  cb13SA.Text := 'NÃO';

  carregaFoto(0,frmcad_fun.cadastroFUN_FOTO,frmcad_fun.cadastro,frmprincipal.parametros);

  edapel.SetFocus;
end;

procedure Tfrmcad_fun_edi.FormCreate(Sender: TObject);
begin
  inherited;
  pcmain.ActivePageIndex := 0;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   BAN_DESC FROM TAB_BAN');
    SQL.Add('GROUP BY BAN_DESC');
    SQL.Add('ORDER BY BAN_DESC');
    Open;

    while not eof do
    begin
      cbpdba.Values.Add(fields[0].AsString);
      cbpdba.Descriptions.Add(fields[0].AsString);
      cbfdba.Values.Add(fields[0].AsString);
      cbfdba.Descriptions.Add(fields[0].AsString);
      next;
    end;

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
    SQL.Add('SELECT   FUN_DDEP FROM CAD_FUN_DEP');
    SQL.Add('WHERE    FUN_STA = ''0''');
    SQL.Add('ORDER BY FUN_DDEP');
    Open;
    while not eof do
    begin
      cbddep.Values.Add(fields[0].AsString);
      cbddep.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DSEC FROM CAD_FUN_SEC');
    SQL.Add('WHERE    FUN_STA = ''0''');
    SQL.Add('ORDER BY FUN_DSEC');
    Open;
    while not eof do
    begin
      cbdsec.Values.Add(fields[0].AsString);
      cbdsec.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DCAR FROM CAD_FUN_CAR');
    SQL.Add('WHERE    FUN_STA = ''0''');
    SQL.Add('ORDER BY FUN_DCAR');
    Open;
    while not eof do
    begin
      cbdcar.Values.Add(fields[0].AsString);
      cbdcar.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DVIN FROM CAD_FUN_VIN');
    SQL.Add('WHERE    FUN_STA = ''0''');
    SQL.Add('ORDER BY FUN_DVIN');
    Open;
    while not eof do
    begin
      cbDVIN.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_CABE''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbCABE.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_OLHO''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbOLHO.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_RACA''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbRACA.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_DEFI''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbDEFI.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_TADM''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbTADM.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_SITU''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbSITU.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_CAGE''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbCAGE.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_TSAL''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbTSAL.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_FPAG''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbFPAG.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_TCON''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbTCON.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_FCAT''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbFCAT.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_NACI''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbNACI.Items.Add(fields[0].AsString);
      cbNACC.Items.Add(fields[0].AsString);
      cbNACM.Items.Add(fields[0].AsString);
      cbNACP.Items.Add(fields[0].AsString);      
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_GRAU''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbGRAU.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_GFIP''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbGFIP.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FUN_DDET FROM CAD_FUN_DET');
    SQL.Add('WHERE    FUN_CHAV = ''FUN_CIVI''');
    SQL.Add('ORDER BY FUN_DDET');
    Open;
    while not eof do
    begin
      cbCIVI.Items.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmcad_fun_edi.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 1 then
  ALTERA_FUNCIONARIO
  else
  NOVO_FUNCIONARIO;
end;

procedure Tfrmcad_fun_edi.edccboValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccbo.Text = '' then
     edccbo.Text := '0';
end;

procedure Tfrmcad_fun_edi.edchapValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edchap.Text  = '' then
     edchap.Text := '0';
end;

procedure Tfrmcad_fun_edi.edidadValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edidad.Text  = '' then
     edidad.Text := '0';
end;

procedure Tfrmcad_fun_edi.edaltuValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edaltu.Text  = '' then
     edaltu.Text := '0,00';

  edaltu.Text := formatfloat('#,0.00########',strtofloat(edaltu.Text));
end;

procedure Tfrmcad_fun_edi.edpesoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpeso.Text  = '' then
     edpeso.Text := '0,00';

  edpeso.Text := formatfloat('#,0.00########',strtofloat(edpeso.Text));
end;

procedure Tfrmcad_fun_edi.edexpeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edexpe.Text  = '' then
     edexpe.Text := '0';
end;

procedure Tfrmcad_fun_edi.edprorValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edpror.Text  = '' then
     edpror.Text := '0';
end;

procedure Tfrmcad_fun_edi.edvsalValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edvsal.Text  = '' then
     edvsal.Text := '0,00';

  edvsal.Text := formatfloat('#,0.00########',strtofloat(edvsal.Text));
end;

procedure Tfrmcad_fun_edi.edirrfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edirrf.Text  = '' then
     edirrf.Text := '0,00';

  edirrf.Text := formatfloat('#,0.00########',strtofloat(edirrf.Text));
end;

procedure Tfrmcad_fun_edi.edinssValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edinss.Text  = '' then
     edinss.Text := '0,00';

  edinss.Text := formatfloat('#,0.00########',strtofloat(edinss.Text));
end;

procedure Tfrmcad_fun_edi.edcafrValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcafr.Text  = '' then
     edcafr.Text := '0';
end;

procedure Tfrmcad_fun_edi.edcafiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcafi.Text  = '' then
     edcafi.Text := '0';
end;

procedure Tfrmcad_fun_edi.edfsalValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edfsal.Text  = '' then
     edfsal.Text := '0,00';

  edfsal.Text := formatfloat('#,0.00########',strtofloat(edfsal.Text));
end;

procedure Tfrmcad_fun_edi.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialogEdit.Execute then
     imag.Picture.LoadFromFile(OpenPictureDialogEdit.FileName);
end;

procedure Tfrmcad_fun_edi.imagDblClick(Sender: TObject);
begin
  imag.Picture := nil;
  imag.Update;

  carregaFoto(0,frmcad_fun.cadastroFUN_FOTO,frmcad_fun.cadastro,frmprincipal.parametros);
end;

procedure Tfrmcad_fun_edi.siSAVClick(Sender: TObject);
var
  cdep,pcba,fcba,csec,ccar,cvin: integer;
  foto: TStream;  
begin
  if (ednome.Text = '') then
  begin
    ednome.SetFocus;
    raise exception.Create('Código do funcionário não informado !');
  end;

  if (edlogr.Text <> '') and (copy(ednume.Text,1,1) = ' ') then
  begin
    if (pcmain.ActivePage = tsEND) then
        ednume.SetFocus;
    raise exception.Create('Número do logradouro do endereço não cadastrado !');
  end;

  if (edlogr.Text <> '') and (edtlog.Text = '') then
  begin
    if (pcmain.ActivePage = tsEND)  then
        edtlog.SetFocus;
    raise exception.Create('Título do logradouro do endereço não cadastrado !');
  end;

  if (edlogr.Text <> '') and (length(edcep.Text) < 8) then
  begin
    if (pcmain.ActivePage = tsEND) then
        edcep.SetFocus;
    raise exception.Create('Cep não informado ou digitado incorretamente !');
  end;

  if eddcad.Date < 0 then
  begin
    eddcad.SetFocus;
    raise exception.Create('Data de admissão não informada !');
  end;

  cdep := 0;
  if cbddep.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DEP');
    SQL.Add('WHERE  FUN_DDEP = '''+cbddep.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DEP (ID,FUN_DDEP,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add(''''+cbddep.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;

      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FUN_DEP');
      SQL.Add('WHERE  FUN_DDEP = '''+cbddep.Text+'''');
      Open;
    end;

    cdep := fields[0].AsInteger;
  end;

  csec := 0;
  if cbdsec.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_SEC');
    SQL.Add('WHERE  FUN_DSEC = '''+cbdsec.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_SEC (ID,FUN_DSEC,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add(''''+cbdsec.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;

      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FUN_SEC');
      SQL.Add('WHERE  FUN_DSEC = '''+cbdsec.Text+'''');
      Open;
    end;  
    csec := fields[0].AsInteger;
  end;

  ccar := 0;
  if cbdcar.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_CAR');
    SQL.Add('WHERE  FUN_DCAR = '''+cbdcar.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_CAR (ID,FUN_DCAR,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add(''''+cbdcar.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;

      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FUN_CAR');
      SQL.Add('WHERE  FUN_DCAR = '''+cbdcar.Text+'''');
      Open;
    end;  
    ccar := fields[0].AsInteger;
  end;

  cvin := 0;
  if cbdvin.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_VIN');
    SQL.Add('WHERE  FUN_DVIN = '''+cbdvin.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_VIN (ID,FUN_DVIN,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add(''''+cbdvin.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;

      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FUN_CAR');
      SQL.Add('WHERE  FUN_DCAR = '''+cbdcar.Text+'''');
      Open;
    end;
    cvin := fields[0].AsInteger;
  end;

  if cbcabe.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_CABE''');
    SQL.Add('AND    FUN_DDET = '''+cbcabe.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_CABE'',');
      SQL.Add(''''+cbcabe.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  pcba := 0;
  if cbpdba.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID FROM TAB_BAN');
    SQL.Add('WHERE    BAN_DESC = '''+cbpdba.Text+'''');
    SQL.Add('ORDER BY BAN_DESC');
    Open;
    pcba := fields[0].AsInteger;
  end;

  fcba := 0;
  if cbfdba.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID FROM TAB_BAN');
    SQL.Add('WHERE    BAN_DESC = '''+cbfdba.Text+'''');
    SQL.Add('ORDER BY BAN_DESC');
    Open;
    fcba := fields[0].AsInteger;
  end;

  if cbolho.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_OLHO''');
    SQL.Add('AND    FUN_DDET = '''+cbolho.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_OLHO'',');
      SQL.Add(''''+cbolho.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbraca.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_RACA''');
    SQL.Add('AND    FUN_DDET = '''+cbraca.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_RACA'',');
      SQL.Add(''''+cbraca.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbdefi.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_DEFI''');
    SQL.Add('AND    FUN_DDET = '''+cbdefi.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_DEFI'',');
      SQL.Add(''''+cbdefi.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbtadm.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_TADM''');
    SQL.Add('AND    FUN_DDET = '''+cbtadm.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_TADM'',');
      SQL.Add(''''+cbtadm.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbsitu.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_SITU''');
    SQL.Add('AND    FUN_DDET = '''+cbsitu.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_SITU'',');
      SQL.Add(''''+cbsitu.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbcage.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_CAGE''');
    SQL.Add('AND    FUN_DDET = '''+cbcage.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_CAGE'',');
      SQL.Add(''''+cbcage.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbtsal.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_TSAL''');
    SQL.Add('AND    FUN_DDET = '''+cbtsal.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_TSAL'',');
      SQL.Add(''''+cbtsal.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbfpag.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_FPAG''');
    SQL.Add('AND    FUN_DDET = '''+cbfpag.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_FPAG'',');
      SQL.Add(''''+cbfpag.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbtcon.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_TCON''');
    SQL.Add('AND    FUN_DDET = '''+cbtcon.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_TCON'',');
      SQL.Add(''''+cbtcon.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbfcat.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_FCAT''');
    SQL.Add('AND    FUN_DDET = '''+cbfcat.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_FCAT'',');
      SQL.Add(''''+cbfcat.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbnaci.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_NACI''');
    SQL.Add('AND    FUN_DDET = '''+cbnaci.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_NACI'',');
      SQL.Add(''''+cbnaci.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbnacc.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_NACI''');
    SQL.Add('AND    FUN_DDET = '''+cbnacc.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_NACI'',');
      SQL.Add(''''+cbnacc.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbnacm.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_NACI''');
    SQL.Add('AND    FUN_DDET = '''+cbnacm.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_NACI'',');
      SQL.Add(''''+cbnacm.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbnacp.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_NACI''');
    SQL.Add('AND    FUN_DDET = '''+cbnacp.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_NACI'',');
      SQL.Add(''''+cbnacp.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbgrau.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_GRAU''');
    SQL.Add('AND    FUN_DDET = '''+cbgrau.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_GRAU'',');
      SQL.Add(''''+cbgrau.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbgfip.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_GFIP''');
    SQL.Add('AND    FUN_DDET = '''+cbgfip.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_GFIP'',');
      SQL.Add(''''+cbgfip.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  if cbcivi.Text <> '' then
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_FUN_DET');
    SQL.Add('WHERE  FUN_CHAV = ''FUN_CIVI''');
    SQL.Add('AND    FUN_DDET = '''+cbcivi.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO CAD_FUN_DET (ID,FUN_CHAV,FUN_DDET,FUN_STA)');
      SQL.Add('VALUES (');
      SQL.Add('''0'',');
      SQL.Add('''FUN_CIVI'',');
      SQL.Add(''''+cbcivi.Text+''',');
      SQL.Add('''0'')');
      ExecSQL;
      IBTra.CommitRetaining;
    end;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FUN_NOME FROM CAD_FUN');
    SQL.Add('WHERE     FUN_NOME = '''+ednome.Text+'''');
    Open;

    if (not fields[0].IsNull) and (fields[0].AsString <> edcfun.Text) then
    begin
      ednome.SetFocus;
      raise exception.Create('Nome já cadastrado !');
    end;
  end;

  try
    ibSP.StoredProcName := 'SP_CAD_FUN';
    ibSP.Prepare;

    case frmcad_fun_edi.Tag of
      0: ibSP.Params[0].Value := null;
      1: ibSP.Params[0].Value := edcfun.Text;
    end;

    ibSP.ParamByName('nome').Value := ednome.Text;
    ibSP.ParamByName('apel').Value := edapel.Text;
    ibSP.ParamByName('dcad').Value := eddcad.Date;
    ibSP.ParamByName('sta').Value  := '0';
    ibSP.ParamByName('cemp').Value := cbdemp.Text;
    ibSP.ParamByName('cdep').Value := cdep;
    ibSP.ParamByName('ddep').Value := cbddep.Text;
    ibSP.ParamByName('csec').Value := csec;
    ibSP.ParamByName('dsec').Value := cbdsec.Text;
    ibSP.ParamByName('ccus').Value := edccus.Text;
    ibSP.ParamByName('dcus').Value := eddcus.Text;
    ibSP.ParamByName('ccar').Value := ccar;
    ibSP.ParamByName('dcar').Value := cbdcar.Text;
    ibSP.ParamByName('ccbo').Value := edccbo.Text;
    ibSP.ParamByName('chap').Value := edchap.Text;
    ibSP.ParamByName('cvin').Value := cvin;
    ibSP.ParamByName('dvin').Value := cbdvin.Text;
    ibSP.ParamByName('vsta').Value := cbvsta.Text;
    ibSP.ParamByName('abon').Value := edabon.Text;
    ibSP.ParamByName('vsal').Value := edvsal.Text;
    ibSP.ParamByName('tsal').Value := cbtsal.Text;
    ibSP.ParamByName('altu').Value := edaltu.Text;
    ibSP.ParamByName('peso').Value := edpeso.Text;
    ibSP.ParamByName('cabe').Value := cbcabe.Text;
    ibSP.ParamByName('olho').Value := cbolho.Text;
    ibSP.ParamByName('raca').Value := cbraca.Text;
    ibSP.ParamByName('defi').Value := cbdefi.Text;
    ibSP.ParamByName('alva').Value := '0';
    if cbalva.Text = 'SIM' then
       ibSP.ParamByName('alva').Value := '1';
    ibSP.ParamByName('sina').Value := edsina.Text;
    if eddnas.Date < 0 then
       ibSP.ParamByName('dnas').Value := null
    else
       ibSP.ParamByName('dnas').Value := eddnas.Date;
    ibSP.ParamByName('idad').Value := edidad.Text;
    if eddadm.Date < 0 then
       ibSP.ParamByName('dadm').Value := null
    else
       ibSP.ParamByName('dadm').Value := eddadm.Date;
    ibSP.ParamByName('expe').Value := edexpe.Text;
    ibSP.ParamByName('pror').Value := edpror.Text;
    ibSP.ParamByName('apos').Value := '0';
    if cbapos.Text = 'SIM' then
       ibSP.ParamByName('apos').Value := '1';
    ibSP.ParamByName('tadm').Value :=  cbtadm.Text;
    if eddtra.Date < 0 then
       ibSP.ParamByName('dtra').Value := null
    else
       ibSP.ParamByName('dtra').Value := eddtra.Date;
    if edddem.Date < 0 then
       ibSP.ParamByName('ddem').Value := null
    else
       ibSP.ParamByName('ddem').Value := edddem.Date;
    ibSP.ParamByName('situ').Value := cbsitu.Text;
    ibSP.ParamByName('cage').Value := cbcage.Text;
    ibSP.ParamByName('cafi').Value := edcafi.Text;
    if eddafi.Date < 0 then
       ibSP.ParamByName('dafi').Value := null
    else
       ibSP.ParamByName('dafi').Value := eddafi.Text;
    ibSP.ParamByName('cafr').Value := edcafr.Text;
    if eddafr.Date < 0 then
       ibSP.ParamByName('dafr').Value := null
    else
       ibSP.ParamByName('dafr').Value := eddafr.Date;
    if eddfei.Date < 0 then
       ibSP.ParamByName('dfei').Value := null
    else
       ibSP.ParamByName('dfei').Value := eddfei.Date;
    if eddfet.Date < 0 then
       ibSP.ParamByName('dfet').Value := null
    else
       ibSP.ParamByName('dfet').Value := eddfet.Date;
    if eddaqi.Date < 0 then
       ibSP.ParamByName('daqi').Value := null
    else
       ibSP.ParamByName('daqi').Value := eddaqi.Date;
    if eddaqt.Date < 0 then
       ibSP.ParamByName('daqt').Value := null
    else
       ibSP.ParamByName('daqt').Value := eddaqt.Date;
    ibSP.ParamByName('irrf').Value := edirrf.Text;
    ibSP.ParamByName('inss').Value := edinss.Text;
    ibSP.ParamByName('fpag').Value := cbfpag.Text;
    ibSP.ParamByName('pcba').Value := pcba;
    ibSP.ParamByName('pdba').Value := cbpdba.Text;
    ibSP.ParamByName('pgag').Value := edpage.Text;
    ibSP.ParamByName('pcon').Value := edpcon.Text;
    ibSP.ParamByName('ptip').Value := cbptip.Text;
    ibSP.ParamByName('pdoc').Value := edpdoc.Text;
    ibSP.ParamByName('fcop').Value := '';
    if edfdop.Date < 0 then
       ibSP.ParamByName('fdop').Value := null
    else
       ibSP.ParamByName('fdop').Value := edfdop.Date;
    ibSP.ParamByName('fcba').Value := fcba;
    ibSP.ParamByName('fdba').Value := cbfdba.Text;
    ibSP.ParamByName('fcat').Value := cbfcat.Text;
    ibSP.ParamByName('fcon').Value := edfcon.Text;
    ibSP.ParamByName('fsal').Value := edfsal.Text;
    ibSP.ParamByName('csin').Value := 0;
    ibSP.ParamByName('dsin').Value := cbdsin.Text;
    ibSP.ParamByName('sind').Value := '0';
    if cbsind.Text = '1' then
       ibSP.ParamByName('sind').Value := '1';
    ibSP.ParamByName('tcon').Value := cbtcon.Text;
    ibSP.ParamByName('pens').Value := edpens.Text;
    ibSP.ParamByName('ncrt').Value := edncrt.Text;
    ibSP.ParamByName('scrt').Value := edscrt.Text;
    if eddcrt.Date < 0 then
       ibSP.ParamByName('dcrt').Value := null
    else
       ibSP.ParamByName('dcrt').Value := eddcrt.Text;
    ibSP.ParamByName('rgnu').Value := edrgnu.Text;
    ibSP.ParamByName('rgem').Value := edrgem.Text;
    ibSP.ParamByName('rguf').Value := cbrguf.Text;
    if edrgdt.Date < 0 then
       ibSP.ParamByName('rgdt').Value := null
    else
       ibSP.ParamByName('rgdt').Value := edrgdt.Text;
    ibSP.ParamByName('tenu').Value := edtenu.Text;
    ibSP.ParamByName('tezo').Value := edtezo.Text;
    ibSP.ParamByName('tese').Value := edtese.Text;
    ibSP.ParamByName('rnum').Value := edrnum.Text;
    ibSP.ParamByName('rsec').Value := edrsec.Text;
    ibSP.ParamByName('rcat').Value := edrcat.Text;
    ibSP.ParamByName('cpf').Value  := edcpf.Text;
    ibSP.ParamByName('camt').Value := edcamt.Text;
    ibSP.ParamByName('doti').Value := eddoti.Text;
    ibSP.ParamByName('donu').Value := eddonu.Text;
    ibSP.ParamByName('naci').Value := cbnaci.Text;
    ibSP.ParamByName('naan').Value := ednaan.Text;
    ibSP.ParamByName('grau').Value := cbgrau.Text;
    ibSP.ParamByName('gfip').Value := cbgfip.Text;
    ibSP.ParamByName('ggfi').Value := '0';
    if cbggfi.Text = 'SIM' then
       ibSP.ParamByName('ggfi').Value := '1';
    ibSP.ParamByName('civi').Value := cbcivi.Text;
    ibSP.ParamByName('ddd1').Value := edddd1.Text;
    ibSP.ParamByName('tel1').Value := edtel1.Text;
    ibSP.ParamByName('ddd2').Value := edddd2.Text;
    ibSP.ParamByName('tel2').Value := edtel2.Text;
    ibSP.ParamByName('ddd3').Value := edddd3.Text;
    ibSP.ParamByName('tel3').Value := edtel3.Text;
    ibSP.ParamByName('ddd4').Value := edddd4.Text;
    ibSP.ParamByName('cel1').Value := edcel1.Text;
    ibSP.ParamByName('ctc1').Value := cbctc1.Text;
    ibSP.ParamByName('ddd5').Value := edddd5.Text;
    ibSP.ParamByName('cel2').Value := edcel2.Text;
    ibSP.ParamByName('ctc2').Value := cbctc2.Text;
    ibSP.ParamByName('neid').Value := edneid.Text;
    ibSP.ParamByName('mail').Value := edmail.Text;
    ibSP.ParamByName('conj').Value := edconj.Text;
    ibSP.ParamByName('nacc').Value := cbnacc.Text;
    ibSP.ParamByName('mae').Value  := edmae.Text;
    ibSP.ParamByName('nacm').Value := cbnacm.Text;
    ibSP.ParamByName('pai').Value  := edpai.Text;
    ibSP.ParamByName('nacp').Value := cbnacp.Text;
    ibSP.ParamByName('tlog').Value := edtlog.Text;
    ibSP.ParamByName('logr').Value := edlogr.Text;
    ibSP.ParamByName('cep').Value  := edcep.Text;
    ibSP.ParamByName('nume').Value := ednume.Text;
    ibSP.ParamByName('comp').Value := edcomp.Text;
    ibSP.ParamByName('bai').Value  := edbai.Text;
    ibSP.ParamByName('cid').Value  := edcid.Text;
    ibSP.ParamByName('cidn').Value := edcidn.Text;
    ibSP.ParamByName('esta').Value := edesta.Text;
    ibSP.ParamByName('estn').Value := edestn.Text;
    ibSP.ParamByName('conv').Value := '0';
    if cbconv.Text = 'SIM' then
       ibSP.ParamByName('conv').Value := '1';
    ibSP.ParamByName('ssin').Value := '0';
    if cbssin.Text = 'SIM' then
       ibSP.ParamByName('ssin').Value := '1';
    ibSP.ParamByName('mdis').Value  := edmdis.Text;
    ibSP.ParamByName('comi').Value  := edcomi.Text;
    ibSP.ParamByName('hein').Value  := edhein.Text;
    ibSP.ParamByName('hsin').Value  := edhsin.Text;
    ibSP.ParamByName('hefn').Value  := edhefn.Text;
    ibSP.ParamByName('hsfn').Value  := edhsfn.Text;
    ibSP.ParamByName('hora').Value  := 0;
    ibSP.ParamByName('f60sh').Value := 0;
    ibSP.ParamByName('f60vl').Value := 0;
    ibSP.ParamByName('f10sh').Value := 0;
    ibSP.ParamByName('f10vl').Value := 0;
    ibSP.ParamByName('tota').Value  := 0;
    ibSP.ParamByName('regi').Value  := edREGI.Text;
    ibSP.ParamByName('nord').Value  := edNORD.Text;

    ibSP.ParamByName('ppri').Value := '0';
    if cbppri.Text = 'SIM' then
       ibSP.ParamByName('ppri').Value := '1';
    ibSP.ParamByName('vtra').Value := '0';
    if cbvtra.Text = 'SIM' then
       ibSP.ParamByName('vtra').Value := '1';
    ibSP.ParamByName('soka').Value := '0';
    if cbsoka.Text = 'SIM' then
       ibSP.ParamByName('soka').Value := '1';
    ibSP.ParamByName('vale').Value := '0';
    if cbvale.Text = 'SIM' then
       ibSP.ParamByName('vale').Value := '1';
    ibSP.ParamByName('tesa').Value := '0';
    if cb13sa.Text = 'SIM' then
       ibSP.ParamByName('tesa').Value := '1';
    foto := TMemoryStream.Create;
    if imag.Picture.Graphic <> nil then
       imag.Picture.Graphic.SaveToStream(foto);
    ibSP.ParamByName('FOTO').LoadFromStream(foto,ftBlob);
    ibSP.ExecProc;

    case frmcad_fun_edi.Tag of
      0: frmprincipal.Log_Eve('Funcionários','Cadastro de Funcionários','Inclusão' ,edcfun.Text,edcfun.Text,LOWERCASE(edapel.Text),'','');
      1: frmprincipal.Log_Eve('Funcionários','Cadastro de Funcionários','Alteração',edcfun.Text,edcfun.Text,LOWERCASE(edapel.Text),'','');
    end;

    editado := true;
    IBTra.Commit;
    IBTra.StartTransaction;

    if (frmcad_fun_edi.Tag = 0) then
       NOVO_FUNCIONARIO
    else
       Close;
  except
    editado := false;
    IBTRA.Rollback;
    IBTra.StartTransaction;
  end;
end;

procedure Tfrmcad_fun_edi.edccusValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edccus.Text = '' then
  begin
    eddcus.Text := '';
    abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DCUS FROM FIN_CUS');
    SQL.Add('WHERE  ID = '''+edccus.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      edccus.SetFocus;
      raise exception.Create('Centro de Custo nao encontrado !');
    end;
    edccus.Text := fields[0].AsString;
    eddcus.Text := fields[1].AsString;
  end;
end;

procedure Tfrmcad_fun_edi.edcepButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  cCEP: string;
  i: word;
begin
  frmLocaliza_cep := TFrmLocaliza_cep.Create(self);
  try
    frmLocaliza_cep.ShowModal;
  finally
    if frmLocaliza_cep.editado then
    begin
      for i := 1 to length(frmLocaliza_Cep.caCep.Caption) do
      if copy(frmLocaliza_Cep.caCep.Caption,i,1) <> '-' then
         cCEP := cCEP+copy(frmLocaliza_Cep.caCep.Caption,i,1);

      edtlog.Text := frmLocaliza_Cep.caTipo.Caption;
      edlogr.Text := frmLocaliza_Cep.caLogradouro.Caption;
      edbai.Text  := copy(frmLocaliza_Cep.caBairro.Caption,1,40);
      edcid.Text  := copy(frmLocaliza_Cep.caCidade.Caption,1,40);
      edesta.Text := frmLocaliza_Cep.caUf.Caption;
      edcep.Text  := cCEP;
    end;
    freeAndNil(frmLocaliza_cep);
    frmLocaliza_cep.Free;
  end;
end;

procedure Tfrmcad_fun_edi.edcepClick(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_fun_edi.edcepEnter(Sender: TObject);
begin
  if length(edcep.Text) > 9 then
     edcep.Text := '';
end;

procedure Tfrmcad_fun_edi.edcepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  cCEP: string;
  i: word;
begin
  for i := 1 to length(edcep.Text) do
    if copy(edcep.Text,i,1) <> '-' then
       cCEP := cCEP+copy(edcep.Text,i,1);

  cep_log.Close;
  cep_log.Params[0].Value := cCEP;
  cep_log.Open;

  edtlog.Text := cep_logLOG_TIT.AsString;
  edlogr.Text := cep_logLOG_NO.AsString;
  edcep.Text  := cep_logLOG_CEP.AsString;
  edbai.Text  := copy(cep_logBAI_NO.AsString,1,40);
  edcid.Text  := copy(cep_logLOC_NO.AsString,1,40);
  edesta.Text := cep_logLOG_UF.AsString;

  if (pcmain.ActivePage = tsEND) then
      ednume.SetFocus;
end;

procedure Tfrmcad_fun_edi.edabonValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edabon.Text  = '' then
     edabon.Text := '0,00';

  edabon.Text := formatfloat('#,0.00########',strtofloat(edabon.Text));
end;

procedure Tfrmcad_fun_edi.eddnasExit(Sender: TObject);
  var
    Ctrl: TWinControl;
begin
  try
    if eddnas.Date < 0 then
    edidad.Text := '0' else
    edidad.Text := inttostr(YearsBetween(eddnas.Date,strtodate(SLPrincipal.Values['data_sistema'])));
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

procedure Tfrmcad_fun_edi.edcomiValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcomi.Text = '' then
     edcomi.Text := '0';

  edcomi.Text := formatfloat('0.00',strtofloat(edcomi.Text));   
end;

procedure Tfrmcad_fun_edi.ednordValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if ednord.Text = '' then
     ednord.Text := '0';

  ednord.Text := ostrzero(strtoint(ednord.Text),3);   
end;

end.
