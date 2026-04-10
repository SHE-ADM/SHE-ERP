unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, math, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg,
  XPStyleActnCtrls, IdBaseComponent, IdComponent,
  IdIPWatch,StrInt, StrIntImp,

  xmldom, XMLIntf, msxmldom, XMLDoc,
  Provider, Xmlxform, cxGraphics, cxControls, dxStatusBar;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mCAD: TMenuItem;
    mTAB: TMenuItem;
    mven: TMenuItem;
    muti: TMenuItem;
    cad_usu: TIBDataSet;
    ibTRA: TIBTransaction;
    ActionManager1: TActionManager;
    actcad_cli: TAction;
    muti_log: TMenuItem;
    muti_bak: TMenuItem;
    mUTI_N4: TMenuItem;
    muti_pri: TMenuItem;
    muti_sis: TMenuItem;
    mUTI_N5: TMenuItem;
    muti_blk: TMenuItem;
    muti_cal: TMenuItem;
    mcad_pro: TMenuItem;
    mcad_rep: TMenuItem;
    mCAD_N1: TMenuItem;
    mcad_for: TMenuItem;
    mcad_tra: TMenuItem;
    mtab_icm: TMenuItem;
    mtab_nat: TMenuItem;
    mtab_pag: TMenuItem;
    mtab_uni: TMenuItem;
    mven_rom: TMenuItem;
    mven_ctr_rom: TMenuItem;
    mNF: TMenuItem;
    mNF_EMI: TMenuItem;
    mNF_CTR: TMenuItem;
    mfin_ctr_dup: TMenuItem;
    Contedo1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    muti_usu: TMenuItem;
    mUTI_N3: TMenuItem;
    actcad_pro: TAction;
    actcad_rep: TAction;
    actcad_tra: TAction;
    actcad_for: TAction;
    acttab_alq: TAction;
    acttab_grp: TAction;
    acttab_nat: TAction;
    acttab_pag: TAction;
    acttab_uni: TAction;
    acttab_cor: TAction;
    acttab_col: TAction;
    actven_rom: TAction;
    actven_nfs: TAction;
    acttab_mun: TAction;
    consulta: TIBQuery;
    actctr_nfe: TAction;
    actent_pro: TAction;
    actctr_pro: TAction;
    par_pri: TIBQuery;
    par_priID: TIntegerField;
    par_priPRI_IP: TIBStringField;
    par_priPRI_CPRI: TSmallintField;
    par_priPRI_DPRI: TIBStringField;
    par_priPRI_SECA: TIBStringField;
    mUTI_N2: TMenuItem;
    muti_wor: TMenuItem;
    actent_fic: TAction;
    actctr_rom: TAction;
    actrec_dup: TAction;
    actcad_fun: TAction;
    actcad_usu: TAction;
    actctr_rec: TAction;
    acttab_emb: TAction;
    mTAB_N2: TMenuItem;
    mtab_emb: TMenuItem;
    actcad_pro_prc: TAction;
    mcad_fun: TMenuItem;
    mUTI_N1: TMenuItem;
    muti_age: TMenuItem;
    actcad_age: TAction;
    muti_sen: TMenuItem;
    parametros: TIBDataSet;
    actlog_usu: TAction;
    actsen_usu: TAction;
    actbackup: TAction;
    actpar_pri: TAction;
    actpar_sis: TAction;
    actlog_wor: TAction;
    actcad_pro_con: TAction;
    actven_ped: TAction;
    actctr_ped: TAction;
    mfin: TMenuItem;
    mfin_rec_rec_con: TMenuItem;
    mfin_ban_cad: TMenuItem;
    acttab_ban: TAction;
    mcad_tab_epo: TMenuItem;
    actcad_emp: TAction;
    mven_ped: TMenuItem;
    mven_ctr_ped: TMenuItem;
    actcad_com: TAction;
    mcom_prc: TMenuItem;
    mcom_ctr_prc: TMenuItem;
    actven_prc: TAction;
    actctr_prc: TAction;
    actcad_cli_ram: TAction;
    actcad_for_ram: TAction;
    actftp: TAction;
    actsobre: TAction;
    acttab_clf: TAction;
    mtab_cob: TMenuItem;
    acttab_cob: TAction;
    sp_sql: TIBQuery;
    mcom: TMenuItem;
    acttab_grd: TAction;
    mfin_rec_cfn: TMenuItem;
    pnbot: TPanel;
    ToolBar1: TToolBar;
    rsbLOG: TRxSpeedButton;
    rsbsen: TRxSpeedButton;
    rsbusu: TRxSpeedButton;
    ToolButton1: TToolButton;
    rsbbak: TRxSpeedButton;
    ToolButton2: TToolButton;
    rsbpri: TRxSpeedButton;
    rsbsis: TRxSpeedButton;
    ToolButton4: TToolButton;
    rsbBLC: TRxSpeedButton;
    rsbCALC: TRxSpeedButton;
    ToolButton3: TToolButton;
    rsbSOB: TRxSpeedButton;
    ToolButton26: TToolButton;
    rsbSAI: TRxSpeedButton;
    ibSP: TIBStoredProc;
    mtab_ped: TMenuItem;
    acttab_ped: TAction;
    pnCustomize: TPanel;
    Bevel8: TBevel;
    pnlpro: TPanel;
    bctr_pro: TRxSpeedButton;
    bent_pro: TRxSpeedButton;
    bcad_pro: TRxSpeedButton;
    bcad_pro_grp: TRxSpeedButton;
    btab_cor: TRxSpeedButton;
    bcad_pro_con: TRxSpeedButton;
    bcad_pro_grd: TRxSpeedButton;
    pnlpcp: TPanel;
    bcad_cli_pcp: TRxSpeedButton;
    bcad_for_pcp: TRxSpeedButton;
    bpro_pcp: TRxSpeedButton;
    btec_pcp: TRxSpeedButton;
    pnlfin: TPanel;
    bcad_cli_fin: TRxSpeedButton;
    bcad_for_fin: TRxSpeedButton;
    bbol: TRxSpeedButton;
    bdup: TRxSpeedButton;
    brec_con: TRxSpeedButton;
    brec_rec: TRxSpeedButton;
    pnlven: TPanel;
    BCli: TRxSpeedButton;
    BPro: TRxSpeedButton;
    BRom: TRxSpeedButton;
    bnfs_nfso: TRxSpeedButton;
    bnfs_nfsv: TRxSpeedButton;
    BPed: TRxSpeedButton;
    mfin_ban: TMenuItem;
    N5: TMenuItem;
    mfin_ban_con: TMenuItem;
    mfin_ctr: TMenuItem;
    N13: TMenuItem;
    mtab_cus: TMenuItem;
    mtab_pla: TMenuItem;
    mtab_tpl: TMenuItem;
    N14: TMenuItem;
    mfin_ctr_bol: TMenuItem;
    mfin_rec: TMenuItem;
    mfin_rec_cad_con: TMenuItem;
    N15: TMenuItem;
    mfin_rec_dup_con: TMenuItem;
    mfin_rec_can_rec: TMenuItem;
    N16: TMenuItem;
    mfin_rec_con: TMenuItem;
    N17: TMenuItem;
    mfin_rec_car: TMenuItem;
    mfin_rec_ban: TMenuItem;
    mfin_pag: TMenuItem;
    mfin_pag_can_pag: TMenuItem;
    mfin_pag_pag_con: TMenuItem;
    N20: TMenuItem;
    mfin_pag_dup_con: TMenuItem;
    mfin_pag_cad_con: TMenuItem;
    mfin_cai: TMenuItem;
    N18: TMenuItem;
    N21: TMenuItem;
    mfin_cco: TMenuItem;
    mfin_cco_man: TMenuItem;
    mfin_cco_lan: TMenuItem;
    mfin_emr: TMenuItem;
    mfin_spc: TMenuItem;
    mfin_val: TMenuItem;
    N23: TMenuItem;
    actfin_ppl: TAction;
    mcad_fun_cad: TMenuItem;
    actcad_fun_dep: TAction;
    mcad_fun_dep: TMenuItem;
    actcad_fun_sec: TAction;
    mcad_fun_sec: TMenuItem;
    actcad_fun_vin: TAction;
    mcad_fun_vin: TMenuItem;
    acttab_fin_cus: TAction;
    acttab_fin_tpl: TAction;
    actcad_fun_car: TAction;
    mcad_fun_car: TMenuItem;
    N24: TMenuItem;
    actcad_ban_con: TAction;
    actcad_fin_pag: TAction;
    bpag_con: TRxSpeedButton;
    bpag_pag: TRxSpeedButton;
    N25: TMenuItem;
    mNF_LOG: TMenuItem;
    actctr_nfs_log: TAction;
    actpag_fin_pag: TAction;
    pnltec: TPanel;
    BCtr_tec: TRxSpeedButton;
    BEnt_tec: TRxSpeedButton;
    bcad_tec: TRxSpeedButton;
    sbvtec: TSpeedButton;
    RxSpeedButton13: TRxSpeedButton;
    BCad_tec_con: TRxSpeedButton;
    mcad_pro_cad: TMenuItem;
    N26: TMenuItem;
    mcad_pro_lan: TMenuItem;
    mcad_pro_ctr: TMenuItem;
    mcad_pro_con: TMenuItem;
    N32: TMenuItem;
    Panel7: TPanel;
    Label1: TLabel;
    dtsparametros: TDataSource;
    sbvpro: TSpeedButton;
    mven_ped_oca: TMenuItem;
    mven_ctr_oca: TMenuItem;
    N33: TMenuItem;
    bcad_pro_col: TRxSpeedButton;
    N34: TMenuItem;
    actpag_com: TAction;
    bped_oca: TRxSpeedButton;
    bped_prg: TRxSpeedButton;
    pnloca: TPanel;
    bven_oca: TRxSpeedButton;
    sbvorc: TSpeedButton;
    bctr_oca: TRxSpeedButton;
    pnlprg: TPanel;
    bven_prg: TRxSpeedButton;
    sbvprg: TSpeedButton;
    bctr_prg: TRxSpeedButton;
    pnlped: TPanel;
    sbvped: TSpeedButton;
    bctr_ped: TRxSpeedButton;
    bven_ped: TRxSpeedButton;
    actcad_cli_pre: TAction;
    N27: TMenuItem;
    mcad_cli: TMenuItem;
    mcad_cli_pre: TMenuItem;
    mcad_cli_cad: TMenuItem;
    mcad_cli_ram: TMenuItem;
    mcad_cli_ram_n: TMenuItem;
    mcad_for_cad: TMenuItem;
    mcad_for_ram: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    mtab_cor: TMenuItem;
    mtab_ncm: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N8: TMenuItem;
    mven_ped_prg: TMenuItem;
    mven_ctr_prg: TMenuItem;
    mcad_com: TMenuItem;
    BCtr_tcc: TRxSpeedButton;
    BPed_tec: TRxSpeedButton;
    RxSpeedButton9: TRxSpeedButton;
    mtab_grd: TMenuItem;
    mtab_col: TMenuItem;
    N44: TMenuItem;
    mtab_grp: TMenuItem;
    acttab_ori: TAction;
    N46: TMenuItem;
    mtab_ori: TMenuItem;
    actcad_emp_and: TAction;
    actcad_emp_box: TAction;
    actcad_emp_set: TAction;
    actcad_emp_cat: TAction;
    actcad_emp_map: TAction;
    actcad_emp_sal: TAction;
    pnlcon: TPanel;
    SpeedButton1: TSpeedButton;
    reti: TRxSpeedButton;
    rprc: TRxSpeedButton;
    cad_usuID: TIntegerField;
    cad_usuUSU_DCAD: TDateField;
    cad_usuUSU_DULT: TDateTimeField;
    cad_usuUSU_CUSU: TIntegerField;
    cad_usuUSU_DUSU: TIBStringField;
    cad_usuUSU_NOME: TIBStringField;
    cad_usuUSU_CDEP: TIntegerField;
    cad_usuUSU_DIAS: TSmallintField;
    cad_usuUSU_PASS: TIBStringField;
    cad_usuUSU_ADM: TIBStringField;
    cad_usuUSU_STA: TIBStringField;
    cad_usuUSU_PPRI: TIBStringField;
    cad_usuUSU_PSEC: TIBStringField;
    cad_usuUSU_MENU: TIBStringField;
    cad_usuUSU_TUSU: TSmallintField;
    cad_usuUSU_STAV: TIBStringField;
    mcai_tsr: TMenuItem;
    actcai_tsr: TAction;
    mcai_abr: TMenuItem;
    mcai_fec: TMenuItem;
    N31: TMenuItem;
    mcai_sar: TMenuItem;
    N42: TMenuItem;
    actcai_mov: TAction;
    mcai_mov: TMenuItem;
    actcai_sar: TAction;
    actven_prg: TAction;
    actctr_prg: TAction;
    bctr_ped_sep: TRxSpeedButton;
    actctr_ped_sep: TAction;
    bctr_ped_sep_pcp: TRxSpeedButton;
    mven_ctr_ped_sep: TMenuItem;
    mtab_cat: TMenuItem;
    acttab_cat: TAction;
    actcai_abr: TAction;
    actcai_fec: TAction;
    actfin_dup: TAction;
    rsbAGE: TRxSpeedButton;
    bven_des: TRxSpeedButton;
    actven_des: TAction;
    N28: TMenuItem;
    muti_man: TMenuItem;
    mfin_pag_pag_com: TMenuItem;
    actfin_pag_pag_com: TAction;
    actrec_car: TAction;
    mfin_rec_rec_car: TMenuItem;
    mfin_rec_rec_ban: TMenuItem;
    pnlrec: TPanel;
    sbvrec: TSpeedButton;
    RxSpeedButton2: TRxSpeedButton;
    RxSpeedButton4: TRxSpeedButton;
    actrec_ban: TAction;
    pnlrec_pag: TPanel;
    sbvrec_pag: TSpeedButton;
    RxSpeedButton5: TRxSpeedButton;
    RxSpeedButton6: TRxSpeedButton;
    actrec_pag_car: TAction;
    actrec_pag_ban: TAction;
    actrec_cad: TAction;
    mven_des: TMenuItem;
    mcai_rea: TMenuItem;
    N9: TMenuItem;
    actcai_rea: TAction;
    RxSpeedButton1: TRxSpeedButton;
    RxSpeedButton7: TRxSpeedButton;
    actrec_can_ban: TAction;
    bven_prc: TRxSpeedButton;
    bctr_prc: TRxSpeedButton;
    actven_oca: TAction;
    actctr_oca: TAction;
    actcad_pro_est: TAction;
    actcad_pro_eti: TAction;
    muti_est: TMenuItem;
    actrec_can_car: TAction;
    mREL: TMenuItem;
    mREL_PED: TMenuItem;
    mREL_PRG: TMenuItem;
    mREL_PED_PRO_CLI: TMenuItem;
    mREL_PED_PRO_GER: TMenuItem;
    mREL_PED_PRO_GRP: TMenuItem;
    mREL_PED_PRO_CAT: TMenuItem;
    mREL_PRG_COM_CLI: TMenuItem;
    mREL_PRG_COM_PRO: TMenuItem;
    N30: TMenuItem;
    mREL_PRG_VEN_CLI: TMenuItem;
    mREL_FAT: TMenuItem;
    mREL_FAT_RES_NFE: TMenuItem;
    mREL_FAT_TIP_CRD: TMenuItem;
    actger: TAction;
    mREL_PED_KAR_CAT: TMenuItem;
    mREL_PRG_COM_GER: TMenuItem;
    mfin_rec_can_car: TMenuItem;
    mfin_rec_can_ban: TMenuItem;
    mtab_ibx: TMenuItem;
    acttab_ibx: TAction;
    mREL_PRG_VEN_GER: TMenuItem;
    N45: TMenuItem;
    mREL_PRG_VEN_PRO: TMenuItem;
    mREL_PED_KAR_PRO: TMenuItem;
    psq_pro: TIBQuery;
    cad_usuUSU_DESC: TSmallintField;
    mcad_pro_lav: TMenuItem;
    actcad_pro_lav: TAction;
    mcad_pro_lav_img: TMenuItem;
    actpag_cad: TAction;
    actpag_cad_dup: TAction;
    N19: TMenuItem;
    mfin_pag_con: TMenuItem;
    actpag_con: TAction;
    actpag_can: TAction;
    N40: TMenuItem;
    Container1: TMenuItem;
    actcad_con: TAction;
    mREL_PED_PRO_RKG: TMenuItem;
    actpag_rec: TAction;
    actfin_cfn: TAction;
    N6: TMenuItem;
    ConsultaNFe1: TMenuItem;
    actnfe_con: TAction;
    mREL_PED_PED_GER: TMenuItem;
    mREL_PED_PED_CLI: TMenuItem;
    mREL_PED_PED_VEN: TMenuItem;
    mREL_PED_PED_REP: TMenuItem;
    IFotoFundo: TImage;
    IP: TIdIPWatch;
    mREL_PED_KAR_GRP: TMenuItem;
    N29: TMenuItem;
    mREL_PED_PED_CAT: TMenuItem;
    actnfe_log: TAction;
    actfin_lan_chq: TAction;
    N7: TMenuItem;
    mtab_lan: TMenuItem;
    acttab_lan: TAction;
    mLOG: TMenuItem;
    mNF_TAR: TMenuItem;
    acttab_tar: TAction;
    acttar_dta: TAction;
    mNF_TAR_TAB: TMenuItem;
    mNF_TAR_LAN: TMenuItem;
    mREL_PED_PRO_VEN: TMenuItem;
    mREL_PED_PRO_REP: TMenuItem;
    N35: TMenuItem;
    mREL_FAT_TIP_PED: TMenuItem;
    mREL_FAT_VEN_GER: TMenuItem;
    N37: TMenuItem;
    mREL_FAT_VEN_FAT: TMenuItem;
    mREL_FAT_VEN_VEN: TMenuItem;
    N36: TMenuItem;
    Containers1: TMenuItem;
    N11: TMenuItem;
    mtab_dch: TMenuItem;
    acttab_dch: TAction;
    mREL_PED_PRO_DEV: TMenuItem;
    acttab_epo: TAction;
    rcol: TRxSpeedButton;
    actcad_pro_col: TAction;
    actcad_chq: TAction;
    aux: TIBQuery;
    RxSpeedButton3: TRxSpeedButton;
    actcad_pro_inv: TAction;
    cad_usuUSU_RELA: TIBStringField;
    ComprasporContainer1: TMenuItem;
    consulta_S: TIBQuery;
    bSHEILD: TIBTransaction;
    Cheques1: TMenuItem;
    Quitao1: TMenuItem;
    Custdia1: TMenuItem;
    N2: TMenuItem;
    Compensao1: TMenuItem;
    N41: TMenuItem;
    Consultas1: TMenuItem;
    actlan_chq: TAction;
    acttab_fer: TAction;
    Feriados1: TMenuItem;
    SBRodape: TdxStatusBar;
    cad_pro_tab: TIBDataSet;
    cad_pro_tabID: TIntegerField;
    cad_pro_tabPRO_CART: TIBStringField;
    cad_pro_tabPRO_CPRO: TIBStringField;
    cad_pro_tabPRO_DCOR: TIBStringField;
    cad_pro_tabPRO_TIPO: TIBStringField;
    cad_pro_tabPRO_PRC1: TFloatField;
    cad_pro_tabPRO_DAT1: TDateField;
    cad_pro_tabPRO_USU1: TIBStringField;
    cad_pro_tabPRO_PRC2: TFloatField;
    cad_pro_tabPRO_DAT2: TDateField;
    cad_pro_tabPRO_USU2: TIBStringField;
    psq_proC_DCST: TStringField;
    psq_proC_STAV: TStringField;
    psq_proC_QEST: TFloatField;
    psq_proC_REST: TIntegerField;
    psq_proC_QRES: TFloatField;
    psq_proC_RRES: TIntegerField;
    psq_proC_QDIS: TFloatField;
    psq_proC_RDIS: TIntegerField;
    psq_proC_QDEF: TFloatField;
    psq_proC_RDEF: TIntegerField;
    psq_proC_QCOM: TFloatField;
    psq_proC_RCOM: TIntegerField;
    psq_proC_QPRG: TFloatField;
    psq_proC_RPRG: TIntegerField;
    psq_proC_QSLD: TFloatField;
    psq_proC_RSLD: TIntegerField;
    psq_proC_QSEP: TFloatField;
    psq_proC_RSEP: TIntegerField;
    psq_proID: TIntegerField;
    psq_proPRO_CBAR: TIBStringField;
    psq_proPRO_CFOR: TIBStringField;
    psq_proPRO_CART: TIBStringField;
    psq_proPRO_CPRO: TIBStringField;
    psq_proPRO_CCOR: TIntegerField;
    psq_proPRO_PCOR: TIBStringField;
    psq_proPRO_DCOR: TIBStringField;
    psq_proPRO_DUNI: TIBStringField;
    psq_proPRO_GRAD: TIBStringField;
    psq_proPRO_COMP: TIBStringField;
    psq_proPRO_DPRO: TIBStringField;
    psq_proPRO_DPR2: TIBStringField;
    psq_proPRO_DPR3: TIBStringField;
    psq_proPRO_DPR4: TIBStringField;
    psq_proPRO_DPR5: TIBStringField;
    psq_proPRO_CDEP: TIntegerField;
    psq_proPRO_DEEP: TIBStringField;
    psq_proPRO_CDFO: TIntegerField;
    psq_proPRO_DEFO: TIBStringField;
    psq_proPRO_CCOL: TIntegerField;
    psq_proPRO_DCOL: TIBStringField;
    psq_proPRO_CGRP: TIntegerField;
    psq_proPRO_DGRP: TIBStringField;
    psq_proPRO_CCAT: TIntegerField;
    psq_proPRO_DCAT: TIBStringField;
    psq_proPRO_PREC: TFloatField;
    psq_proPRO_PPRO: TFloatField;
    psq_proPRO_PDSC: TIBBCDField;
    psq_proPRO_VPRC: TFloatField;
    psq_proPRO_VPRO: TFloatField;
    psq_proPRO_VDSC: TIBBCDField;
    psq_proPRO_RPRC: TFloatField;
    psq_proPRO_RPRO: TFloatField;
    psq_proPRO_RDSC: TIBBCDField;
    psq_proPRO_APRC: TIBStringField;
    psq_proPRO_LDSC: TIBBCDField;
    psq_proPRO_CUST: TFloatField;
    psq_proPRO_PCOM: TFloatField;
    psq_proPRO_CLIB: TFloatField;
    psq_proPRO_PIPI: TSmallintField;
    psq_proPRO_CCLF: TIBStringField;
    psq_proPRO_CCST: TIBStringField;
    psq_proPRO_DORI: TIBStringField;
    psq_proPRO_REPR: TIBStringField;
    psq_proPRO_METR: TIBBCDField;
    psq_proPRO_REND: TIBBCDField;
    psq_proPRO_PESO: TIBBCDField;
    psq_proPRO_PSCN: TIBBCDField;
    psq_proPRO_PSMR: TIBBCDField;
    psq_proPRO_STLN: TIBStringField;
    psq_proPRO_LARG: TIBBCDField;
    psq_proPRO_GRAM: TIBBCDField;
    psq_proPRO_UTIL: TIBBCDField;
    psq_proPRO_DENS: TIBStringField;
    psq_proPRO_TITF: TIBStringField;
    psq_proPRO_APRO: TMemoField;
    psq_proPRO_OBSE: TMemoField;
    psq_proPRO_OBSF: TMemoField;
    psq_proPRO_STA: TIBStringField;
    psq_proPRO_STAV: TIBStringField;
    psq_proPRO_FOTO: TBlobField;
    psq_proPRO_FOT2: TBlobField;
    psq_proPRO_FOT3: TBlobField;
    psq_proPRO_FOT4: TBlobField;
    psq_proPRO_FOT5: TBlobField;
    psq_proPRO_FOT6: TBlobField;
    psq_proPRO_FOT7: TBlobField;
    psq_proPRO_FOT8: TBlobField;
    psq_proPRO_INS1: TBlobField;
    psq_proPRO_INS2: TBlobField;
    psq_proPRO_INS3: TBlobField;
    psq_proPRO_INS4: TBlobField;
    psq_proPRO_INS5: TBlobField;
    psq_proPRO_INS6: TBlobField;
    psq_proPRO_INS7: TBlobField;
    psq_proPRO_INS8: TBlobField;
    psq_proPRO_QEST: TIBBCDField;
    psq_proPRO_QRES: TIBBCDField;
    psq_proPRO_QSEP: TIBBCDField;
    psq_proPRO_QPRG: TIBBCDField;
    psq_proPRO_QDEF: TIBBCDField;
    MSheild: TMenuItem;
    CFOP1: TMenuItem;
    ransportadora1: TMenuItem;
    CEAN1: TMenuItem;
    psq_proPRO_QCOM: TIBBCDField;
    psq_proPRO_QPRD: TIBBCDField;
    RSBCupom: TRxSpeedButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ACTCFeSat: TAction;
    cad_pro_com: TIBQuery;
    cad_pro_comID: TIntegerField;
    cad_pro_comCOM_CART: TIBStringField;
    cad_pro_comCOM_BASE: TIBStringField;
    cad_pro_comCOM_COMP: TIBStringField;
    cad_pro_comCOM_QTDE: TIBBCDField;
    Composicao: TMenuItem;
    psq_proPRO_REST: TLargeintField;
    psq_proPRO_RRES: TLargeintField;
    psq_proPRO_RPRG: TLargeintField;
    psq_proPRO_RCOM: TLargeintField;
    psq_proPRO_RDEF: TLargeintField;
    psq_proPRO_RSEP: TLargeintField;
    parametrosID: TIntegerField;
    parametrosPAR_CDNF: TIBStringField;
    parametrosPAR_SERI: TIBStringField;
    parametrosPAR_CCRT: TIBStringField;
    parametrosPAR_CNA1: TIBStringField;
    parametrosPAR_CNA2: TIBStringField;
    parametrosPAR_STPD: TIBStringField;
    parametrosPAR_STCO: TIBStringField;
    parametrosPAR_CCLI: TIntegerField;
    parametrosPAR_FANT: TIBStringField;
    parametrosPAR_RAZA: TIBStringField;
    parametrosPAR_RAMO: TIBStringField;
    parametrosPAR_CNAE: TIBStringField;
    parametrosPAR_CNPJ: TIBStringField;
    parametrosPAR_INSC: TIBStringField;
    parametrosPAR_DDD: TIBStringField;
    parametrosPAR_FONE: TIBStringField;
    parametrosPAR_TLOG: TIBStringField;
    parametrosPAR_LOGR: TIBStringField;
    parametrosPAR_NUME: TIBStringField;
    parametrosPAR_COMP: TIBStringField;
    parametrosPAR_CEP: TIBStringField;
    parametrosPAR_BAI: TIBStringField;
    parametrosPAR_CID: TIBStringField;
    parametrosPAR_CCID: TIBStringField;
    parametrosPAR_UF: TIBStringField;
    parametrosPAR_CUF: TIBStringField;
    parametrosPAR_FMAI: TIBStringField;
    parametrosPAR_DOLA: TIBBCDField;
    parametrosPAR_CICM: TIBBCDField;
    parametrosPAR_DUPL: TIBStringField;
    parametrosPAR_FRET: TIBStringField;
    parametrosPAR_TCLI: TIBStringField;
    parametrosPAR_TPRO: TIBStringField;
    parametrosPAR_CAIX: TIBStringField;
    parametrosPAR_GRAD: TIBStringField;
    parametrosPAR_NVIA: TIBStringField;
    parametrosPAR_STA: TIBStringField;
    parametrosPAR_CPAG: TIntegerField;
    parametrosPAR_CTRA: TIntegerField;
    parametrosPAR_TVOL: TIBStringField;
    parametrosPAR_CNSD: TIBStringField;
    parametrosPAR_CSTD: TIBStringField;
    parametrosPAR_CNSF: TIBStringField;
    parametrosPAR_CSTF: TIBStringField;
    parametrosPAR_TIPO: TIBStringField;
    parametrosPAR_PGRD: TIBStringField;
    parametrosPAR_CFOR: TIntegerField;
    parametrosPAR_CREP: TIntegerField;
    parametrosPAR_MAIL: TIBStringField;
    parametrosPAR_SITE: TIBStringField;
    parametrosPAR_LOGO: TIBStringField;
    parametrosPAR_CANH: TIBStringField;
    parametrosPAR_CEND: TIBStringField;
    parametrosPAR_SPRO: TIBStringField;
    parametrosPAR_RICM: TIBStringField;
    parametrosPAR_PECA: TIBStringField;
    parametrosPAR_LIMC: TSmallintField;
    parametrosPAR_LIMB: TSmallintField;
    parametrosPAR_LIME: TIBStringField;
    parametrosPAR_ESEG: TIBStringField;
    parametrosPAR_DIOR: TIBStringField;
    parametrosPAR_PSEP: TIBStringField;
    parametrosPAR_RFOR: TIBStringField;
    parametrosPAR_IEST: TIBStringField;
    parametrosPAR_BPAG: TSmallintField;
    parametrosPAR_CSEQ: TIBStringField;
    parametrosPAR_PVAR: TIBBCDField;
    parametrosPAR_PREP: TIBBCDField;
    parametrosPAR_DSEP: TSmallintField;
    parametrosPAR_BCHQ: TSmallintField;
    parametrosPAR_MCRD: TIBBCDField;
    parametrosPAR_PCRD: TIBBCDField;
    parametrosPAR_PREL: TIBStringField;
    parametrosPAR_REND: TIBStringField;
    parametrosPAR_DCRD: TIBStringField;
    parametrosPAR_DMAP: TIBStringField;
    parametrosPAR_STAV: TIBStringField;
    parametrosPAR_OCRT: TMemoField;
    parametrosPAR_FOTO: TBlobField;
    parametrosPAR_FOT2: TBlobField;
    parametrosPAR_FOT3: TBlobField;
    parametrosPAR_ONFE: TMemoField;
    parametrosPAR_OPED: TMemoField;
    parametrosPAR_CBAR: TBlobField;
    parametrosPAR_IM: TIBStringField;
    parametrosPAR_IE: TIBStringField;
    parametrosPAR_UNIDADEFEDERADA: TIBStringField;
    parametrosPAR_UNIDADEFEDERADACODIGO: TSmallintField;
    parametrosPAR_NOSERIECERTIFICADO: TIBStringField;
    parametrosPAR_EMAILCONTABIL: TIBStringField;
    parametrosPAR_EMAILXMLCOFRE: TIBStringField;
    parametrosPAR_LKFACEBOOK: TIBStringField;
    parametrosPAR_FTFACEBOOK: TBlobField;
    parametrosPAR_LKINSTAGRAM: TIBStringField;
    parametrosPAR_FTINSTAGRAM: TBlobField;
    parametrosPAR_LKTWITTER: TIBStringField;
    parametrosPAR_FTTWITTER: TBlobField;
    parametrosPAR_SWHASSINATURA: TIBStringField;
    parametrosPAR_CVEN: TSmallintField;
    parametrosRAMODEATIVIDADE: TIBStringField;
    parametrosCLI_FANT: TIBStringField;
    parametrosCLI_RAZA: TIBStringField;
    parametrosCLI_CPF: TIBStringField;
    parametrosCLI_CNPJ: TIBStringField;
    parametrosCLI_OBSO: TMemoField;
    parametrosFOR_FANT: TIBStringField;
    parametrosUSU_DUSU: TIBStringField;
    parametrosREP_FANT: TIBStringField;
    parametrosTRA_FANT: TIBStringField;
    parametrosPAG_DPAG: TIBStringField;
    parametrosCNPJSOFTWAREHOUSE: TIBStringField;
    parametrosTOKENSOFTWAREHOUSE: TIBStringField;
    PNLPrincipal: TPanel;
    Bevel1: TBevel;
    SBCAD_CLI: TRxSpeedButton;
    SBCAD_PRO: TRxSpeedButton;
    SBCAD_PRO_EST_LAN: TRxSpeedButton;
    SBCAD_PRO_EST_EXP_MAN: TRxSpeedButton;
    SBROM_VEN_LAN: TRxSpeedButton;
    SBPED_VEN_LAN: TRxSpeedButton;
    SBNFE_LAN: TRxSpeedButton;
    SBNFE_ADM: TRxSpeedButton;
    SBCAD_TRA: TRxSpeedButton;
    SBCAD_PRO_GRD: TRxSpeedButton;
    SBCAD_PRO_EST_ADM: TRxSpeedButton;
    RxSpeedButton8: TRxSpeedButton;
    RxSpeedButton10: TRxSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure rsbSAIClick(Sender: TObject);
    procedure actcad_cliExecute(Sender: TObject);
    procedure rsbBLCClick(Sender: TObject);
    procedure rsbCALCClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure rsbSOBClick(Sender: TObject);
    procedure actcad_proExecute(Sender: TObject);
    procedure actcad_repExecute(Sender: TObject);
    procedure actcad_forExecute(Sender: TObject);
    procedure acttab_alqExecute(Sender: TObject);
    procedure acttab_natExecute(Sender: TObject);
    procedure acttab_pagExecute(Sender: TObject);
    procedure actven_nfsExecute(Sender: TObject);
    procedure acttab_munExecute(Sender: TObject);
    procedure BProClick(Sender: TObject);
    procedure sbvproClick(Sender: TObject);
    procedure cad_usuAfterOpen(DataSet: TDataSet);
    procedure parametrosAfterOpen(DataSet: TDataSet);
    procedure actlog_usuExecute(Sender: TObject);
    procedure actsen_usuExecute(Sender: TObject);
    procedure actpar_priExecute(Sender: TObject);
    procedure actcad_pro_conExecute(Sender: TObject);
    procedure actsobreExecute(Sender: TObject);
    procedure acttab_clfExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure acttab_corExecute(Sender: TObject);
    procedure BCliClick(Sender: TObject);
    procedure bcad_pro_conClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actcai_tsrExecute(Sender: TObject);
    procedure actcai_movExecute(Sender: TObject);
    procedure sbvorcClick(Sender: TObject);
    procedure bped_ocaClick(Sender: TObject);
    procedure bped_prgClick(Sender: TObject);
    procedure sbvprgClick(Sender: TObject);
    procedure BPedClick(Sender: TObject);
    procedure actven_pedExecute(Sender: TObject);
    procedure actctr_pedExecute(Sender: TObject);
    procedure sbvpedClick(Sender: TObject);
    procedure actcad_pro_prcExecute(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure actctr_romExecute(Sender: TObject);
    procedure actctr_nfeExecute(Sender: TObject);
    procedure actcai_abrExecute(Sender: TObject);
    procedure actcai_sarExecute(Sender: TObject);
    procedure actcai_fecExecute(Sender: TObject);
    procedure actfin_dupExecute(Sender: TObject);
    procedure actven_desExecute(Sender: TObject);
    procedure actcai_reaExecute(Sender: TObject);
    procedure mREL_PED_PRO_CATClick(Sender: TObject);
    procedure mREL_PED_PRO_GERClick(Sender: TObject);
    procedure mREL_PED_KAR_CATClick(Sender: TObject);
    procedure mREL_FAT_RES_NFEClick(Sender: TObject);
    procedure mREL_FAT_TIP_CRDClick(Sender: TObject);
    procedure mREL_PRG_COM_CLIClick(Sender: TObject);
    procedure mREL_PRG_COM_GERClick(Sender: TObject);
    procedure mREL_PRG_VEN_CLIClick(Sender: TObject);
    procedure mREL_PRG_VEN_PROClick(Sender: TObject);
    procedure mREL_PED_KAR_PROClick(Sender: TObject);
    procedure psq_proCalcFields(DataSet: TDataSet);
    procedure mREL_PED_PED_GERClick(Sender: TObject);
    procedure mREL_PED_PED_CLIClick(Sender: TObject);
    procedure mREL_PED_PED_VENClick(Sender: TObject);
    procedure mREL_PED_PED_REPClick(Sender: TObject);
    procedure mREL_PED_PRO_RKGClick(Sender: TObject);
    procedure mREL_PED_PRO_CLIClick(Sender: TObject);
    procedure mREL_PED_PED_CATClick(Sender: TObject);
    procedure mREL_PRG_VEN_GERClick(Sender: TObject);
    procedure mREL_PED_PRO_VENClick(Sender: TObject);
    procedure mREL_PED_PRO_REPClick(Sender: TObject);
    procedure mREL_FAT_TIP_PEDClick(Sender: TObject);
    procedure mREL_FAT_VEN_GERClick(Sender: TObject);
    procedure mREL_FAT_VEN_FATClick(Sender: TObject);
    procedure mREL_FAT_VEN_VENClick(Sender: TObject);
    procedure Containers1Click(Sender: TObject);
    procedure mREL_PED_PRO_DEVClick(Sender: TObject);
    procedure mREL_PRG_COM_PROClick(Sender: TObject);
    procedure ComprasporContainer1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ransportadora1Click(Sender: TObject);
    procedure CEAN1Click(Sender: TObject);
    procedure ACTCFeSatExecute(Sender: TObject);
    procedure ComposicaoClick(Sender: TObject);
    procedure actcad_traExecute(Sender: TObject);
    procedure actfin_pag_pag_comExecute(Sender: TObject);
  private
    { Private declarations }
  public
   PAR_DEMP  : string;
    { Public declarations }
    procedure ATUALIZA_TABELA_PRECO(cart,cpro,dcor,tipo: string;valo: double);
    procedure ABRE_RELATORIO(nome: string);
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet);
    procedure Log_Eve(func,roti,even,ceve,codi,desc,auto,taut: string);
    procedure FazPrnAtualVirarDefault(IMPRESSORA: STRING);
    function  RETORNA_DATA_VENCIMENTO(Data: TDate) : TDate;
    function  PESQUISA_PRODUTO(campo,cpro:string): integer;
    function  RETORNA_LOGIN : boolean;
    function  ACESSO(cusu,campo,func,roti,nome: string;proc: boolean): boolean;
    function  RETORNA_DATA_MEDIA: TDate;
    function  CALCULA_LIMITE_CARTEIRA(limite: boolean;stco,fatu,ccli: string): string;
    function  CALCULA_LIMITE_VENDA(limite: boolean;stco,fatu,ccli,tcde,cred: string): string;
    function  CALCULA_LIMITE_BANCARIO(limite: boolean;stco,fatu,ccli: string): string;
  end;

procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
procedure uJPEGStream(Campo: TField; Imagem: TPicture); STDCall;
function  uPSQNotaFiscal(Texto: String;Mostrar: Boolean = True): Boolean; STDCall;

var
  FrmPrincipal  : TFrmPrincipal;
  PCampo        : Array of shortstring;
  AUTORIZACAO   : string;
  TP_AUTORIZACAO: string;
  ID_AUTORIZACAO: string;
  Campo_Pesquisa: string;
  TELA_WIDTH    : integer;
  FOTO_WIDTH    : integer;
  DATA_MEDIA    : TDate;
  VALOR_BANCARIO: double;
  VALOR_CARTEIRA: double;
  VALOR_SALDO   : double;

implementation

uses pLogin, pcad_cli, ppar_pri, pSobre,
  pcad_pro, pcad_rep, pcad_tra, pcad_for, ptab_cor, 
  ptab_nat, ptab_pag, ptab_mun,
  psenha,
  pcad_pro_con,
  bDados,
  pcai_abr, pcai_mov, pcai_tsr,
  pven_ped, pctr_ped,
  pven_nfe, pctr_rom, pctr_nfe,
  pcai_sar, pcai_fec, pfin_dup, pven_des,
  prelatorio_geral,
  pcai_sar_edi, pCFeSat, ppag_com;


{$R *.dfm}

procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
begin
  with FrmPrincipal do
       if Assigned(TForm(AInstance)) then
       begin
         TForm(AInstance).WindowState := wsNormal;
         TForm(AInstance).BringToFront;
         TForm(AInstance).SetFocus;
       end else
       begin
         TForm(AInstance) := AFClass.Create(AOwner);
         if TForm(AInstance).FormStyle = fsNormal then
            try
              TForm(AInstance).BorderIcons := [];
              TForm(AInstance).Visible     := False;
              TForm(AInstance).ShowModal;
            finally
              FreeAndNil(TForm(AInstance));
            end;
       end;
end;

function uPSQNotaFiscal(Texto: String;Mostrar: Boolean = True): Boolean; STDCall;
var
  i: Word;
begin
  result := True;
  Texto  := IntToStr(StrToInt(Trim(Texto)));
  with DMDados,QFBCadastro do
  if oBSONumero(Texto) then
  try
    oRTransact(TFBCadastro);
    SQL.Clear;
    for i := 1 to 9 do
    begin
      SQL.Add('SELECT NFE_CDNF,NFE_DEMI,NFE_DFAV,NFE_DTRA,NFE_DVEN,NFE_DREP');
      SQL.Add('FROM   PAR_SIS,'+oREPZero('nfe_cab','_',i,3)+ ' "NFE_CAB"');
      SQL.Add('WHERE  PAR_SIS.ID       = '''+IntToStr(i)+'''');
      SQL.Add('AND    PAR_SIS.PAR_CNPJ = '''+FrmPrincipal.ParametrosPAR_CNPJ.AsString+'''');
      SQL.Add('AND    NFE_CAB.NFE_CDNF = '''+Texto+'''');
      SQL.Add('AND    NFE_CAB.NFE_CHAV <> '' ''');
      if i < 9 then
      SQL.Add('UNION');
    end;
    Open;
    if Fields[0].AsInteger > 0 then
    begin
      result := False;
      if Mostrar then
      oErro(FrmPrincipal.Handle,'Número de Nota Fiscal já Emitida !'+#13+#13+
              'Favorecido..: '+Fields[2].AsString+IFThen((Fields[4].AsString <> '') and (Fields[5].AsString <> ''),#13+
              'Vendedores.: ' +Fields[4].AsString+' / '+Fields[5].AsString,'')+#13+#13+
              'Emitido em..............: '+FormatDateTime('dd/mm/yy hh:mm',Fields[1].AsDateTime)+#13+
              'Frete por conta de..: '    +Fields[3].AsString);
    end;
  finally
    oCTransact(TFBCadastro);
  end;
end;

procedure uJPEGStream(Campo: TField; Imagem: TPicture); STDCall;
var
  JPEGImagem: TJPEGImage;
  BlobStream: TMemoryStream;
begin
  JPEGImagem := TJPEGImage.Create;
  BlobStream := TMemoryStream.Create;

  try
    if not oEmpty(RECParametros.ID) then
    with FrmPrincipal do
    begin
      { Cria objeto do tipo TJPEG, e objeto do tipo MemoryStream }
      { Trata o campo como do tipo BLOB e salva o seu conteudo na memória. }
      if Not Campo.IsNull then
      TBlobField(Campo).SaveToStream(BlobStream) else
      TBlobField(RECParametros.Fot2).SaveToStream(BlobStream);
      { Ajusta a posicao inicial de leitura da memória }
       BlobStream.Position := 0;
      { Carrega da memoria os dados, para uma estrutura do tipo TJPEG }
      { A partir da posicao 0}
      JPEGImagem.LoadFromStream(BlobStream);
      { Exibe o jpeg no Timage. }
      Imagem.Assign(JPEGImagem);
    end;
  finally
    { Libera a memoria utilizada pelos componentes de conversão }
    JPEGImagem.Free;
    BlobStream.Free;
  end;
end;

function TFrmPrincipal.RETORNA_DATA_VENCIMENTO(Data: TDate): TDate;
begin
  if Data <= 0 then
  Data := strToDate(SLPrincipal.Values['data_sistema']);

  if DayOfWeek(Data) = 1 then // domingo
  Data := IncDay(Data,1) else
  if DayOfWeek(Data) = 7 then // sábado
  Data := IncDay(Data,2);

  result := Data;
end;

function TFrmPrincipal.RETORNA_DATA_MEDIA: TDate;
var
  dia: word;
  dtpri,dtmed: TDateTime;
  subtot, total: double;
begin
  dtmed  := 0;
  dtpri  := consulta.Fields[2].AsDateTime;
  subtot := consulta.Fields[3].AsFloat;
  total  := consulta.Fields[3].AsFloat;

  consulta.Next;
  while not consulta.Eof do
  begin
    dia    := daysbetween(dtpri,consulta.Fields[2].AsDateTime);
    subtot := subtot + (consulta.Fields[3].AsFloat * dia);
    total  := total  +  consulta.Fields[3].AsFloat;

    consulta.Next;
  end;

  if (dtpri > 0) and (subtot > 0) and (total > 0) then
  begin                    ;
    dtmed := incday(dtpri,round((subtot / total)));
    dtmed := incday(dtmed,frmprincipal.parametrosPAR_LIMC.AsInteger);
  end;
  result := dtmed;
end;

function TFrmPrincipal.CALCULA_LIMITE_CARTEIRA(limite: boolean;stco,fatu,ccli: string): string;
var stpd: string;
begin
  if (not limite) or (frmprincipal.parametrosPAR_LIMC.AsFloat <= 0) or (stco = 'SEM COBRANÇA') or (fatu <> '1') then
  stpd := '' else
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI_002');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI_004');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');

      if frmprincipal.parametrosPAR_CNPJ.AsString <> '47273917000123' then
      begin
        SQL.Add('UNION');
        SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI_003');
        SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
        SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
        SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
        SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
        SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');

        SQL.Add('UNION');
        SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI_005');
        SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
        SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
        SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
        SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
        SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      end;

      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI_006');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI_007');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI_008');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_CAR_BAI_009');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('ORDER  BY 1');
      Open;
    end;

    DATA_MEDIA := RETORNA_DATA_MEDIA;

    if (strToDate(SLPrincipal.Values['data_sistema']) >= DATA_MEDIA) and (DATA_MEDIA > 0) then
    stpd := 'AGUARDANDO LIBERAÇÃO';
  end;

  result := stpd;
end;

function TFrmPrincipal.CALCULA_LIMITE_BANCARIO(limite: boolean;stco,fatu,ccli: string): string;
var
  stpd: string;
begin
  if (not limite) or (frmprincipal.parametrosPAR_LIMB.AsFloat <= 0) or (stco = 'SEM COBRANÇA') or (fatu <> '1') then
  stpd := '' else
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI_002');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI_003');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI_004');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI_005');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI_006');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI_007');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI_008');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('UNION');
      SQL.Add('SELECT FIN_DOCT,FIN_STFI,FIN_DVEN,FIN_VPEN,FIN_DCAD,FIN_TIPO FROM FIN_REC_BAN_BAI_009');
      SQL.Add('WHERE  FIN_CCLI  = '''+ccli+'''');
      SQL.Add('AND    FIN_DVEN <= '''+formatDateTime('mm/dd/yy',incDay(strtodate(SLPrincipal.Values['data_sistema']),strtoint(formatfloat('-0',frmprincipal.parametrosPAR_LIMB.AsFloat))))+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      SQL.Add('ORDER BY 1');
      Open;
    end;

    if not consulta.Fields[0].IsNull then
    stpd := 'AGUARDANDO LIBERAÇÃO';
  end;

  result := stpd;
end;

function TFrmPrincipal.CALCULA_LIMITE_VENDA(limite: boolean;stco,fatu,ccli,tcde,cred: string): string;
var
  stpd: string;
begin
  stpd := '';

  if (frmprincipal.parametrosPAR_LIME.AsString = '1') and (stco <> 'SEM COBRANÇA') or (fatu <> '1') then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VPEN) FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
      SQL.Add('WHERE  FIN_CCLI = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      Open;
      VALOR_BANCARIO := fields[0].AsFloat;

      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VPEN*FIN_CONC) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE  FIN_CCLI = '''+ccli+'''');
      SQL.Add('AND    FIN_STFI <> ''CANCELADO''');
      SQL.Add('AND    FIN_STFI <> ''DEVOLUÇÃO''');
      SQL.Add('AND    FIN_STFI <> ''ABATIMENTO''');
      SQL.Add('AND    FIN_STFI NOT LIKE ''%PAGO%''');
      Open;
      VALOR_CARTEIRA := fields[0].AsFloat;
    end;


    if oTextToValor(tcde) > (oTextToValor(cred) - (VALOR_BANCARIO+VALOR_CARTEIRA)) then
    begin
      VALOR_SALDO        := oTextToValor(cred)  - (VALOR_BANCARIO+VALOR_CARTEIRA);
      if VALOR_SALDO < 0 then
      VALOR_SALDO        := 0;

      stpd := 'AGUARDANDO CRÉDITO';
    end;
  end;

  result := stpd;
end;

procedure TFrmPrincipal.ATUALIZA_TABELA_PRECO(cart,cpro,dcor,tipo: string;valo: double);
begin
  with cad_pro_tab do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM CAD_PRO_TAB');
    SelectSQL.Add('WHERE PRO_CPRO = '''+cpro+'''');
    SelectSQL.Add('AND   PRO_TIPO = '''+tipo+'''');
    SelectSQL.Add('AND   PRO_DAT1 = '''+formatDateTime('mm/dd/yy',strtodate(SLPrincipal.Values['data_sistema']))+'''');
    SelectSQL.Add('AND   PRO_PRC1 = '''+oStrTran(floattostr(valo),',','.')+'''');
    Open;
  end;

  if cad_pro_tab.Fields[0].IsNull then
  begin
    cad_pro_tab.Append;
    cad_pro_tabID.Value       := 0;
    cad_pro_tabPRO_CART.Value := cart;
    cad_pro_tabPRO_CPRO.Value := cpro;
    if cart <> cpro then
    cad_pro_tabPRO_DCOR.Value := dcor;
    cad_pro_tabPRO_TIPO.Value := tipo;
    cad_pro_tabPRO_PRC1.Value := valo;
    cad_pro_tabPRO_DAT1.Value := strtodate(SLPrincipal.Values['data_sistema']);
    cad_pro_tabPRO_USU1.Value := cad_usuUSU_DUSU.AsString;
    cad_pro_tab.Post;
    IBTra.CommitRetaining;
  end;
end;

function TFrmPrincipal.PESQUISA_PRODUTO(campo,cpro:string): integer;
var
  cField: string;
begin
  cField := 'CAD_PRO.ID';
  if campo = 'Referencia' then
  cField := 'CAD_PRO.PRO_CART'
  else if (campo = 'Grade') or (campo = 'Produto') then
  cField := 'CAD_PRO.PRO_CPRO'
  else if campo = 'Ref. Fornecedor' then
  cField := 'CAD_PRO.PRO_CFOR'
  else if campo = 'Descrição' then
  cField := 'CAD_PRO.PRO_DPRO'
  else if campo = 'Categoria' then
  cField := 'CAD_PRO.PRO_DCAT'
  else if campo = 'Grupo' then
  cField := 'CAD_PRO.PRO_DGRP'
  else if campo = 'Coleção' then
  cField := 'CAD_PRO.PRO_DCOL'
  else if campo = 'Barra' then
  cField := 'CAD_PRO.PRO_CBAR';

  with psq_pro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CAD_PRO.ID          ,CAD_PRO.PRO_CBAR    ,CAD_PRO.PRO_CFOR    ,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,');
    SQL.Add('       CAD_PRO.PRO_CCOR    ,CAD_PRO.PRO_PCOR    ,CAD_PRO.PRO_DCOR    ,CAD_PRO.PRO_DUNI    ,CAD_PRO.PRO_GRAD,CAD_PRO.PRO_COMP,');
    SQL.Add('       CAD_PRO.PRO_DPRO    ,CAD_PRO.PRO_DPR2    ,CAD_PRO.PRO_DPR3    ,CAD_PRO.PRO_DPR4    ,CAD_PRO.PRO_DPR5,');
    SQL.Add('       CAD_PRO.PRO_CDEP    ,CAD_PRO.PRO_DEEP    ,CAD_PRO.PRO_CDFO    ,CAD_PRO.PRO_DEFO    ,');
    SQL.Add('       CAD_PRO.PRO_CCOL    ,CAD_PRO.PRO_DCOL    ,CAD_PRO.PRO_CGRP    ,CAD_PRO.PRO_DGRP    ,CAD_PRO.PRO_CCAT,CAD_PRO.PRO_DCAT,');
    SQL.Add('       CAD_PRO.PRO_PREC    ,CAD_PRO.PRO_PPRO    ,CAD_PRO.PRO_PDSC    ,CAD_PRO.PRO_VPRC    ,CAD_PRO.PRO_VPRO,CAD_PRO.PRO_VDSC,');
    SQL.Add('       CAD_PRO.PRO_RPRC    ,CAD_PRO.PRO_RPRO    ,CAD_PRO.PRO_RDSC    ,CAD_PRO.PRO_APRC    ,CAD_PRO.PRO_LDSC,');
    SQL.Add('       CAD_PRO.PRO_CUST    ,CAD_PRO.PRO_PCOM    ,CAD_PRO.PRO_CLIB,');
    SQL.Add('       CAD_PRO.PRO_PIPI    ,CAD_PRO.PRO_CCLF    ,CAD_PRO.PRO_CCST    ,CAD_PRO.PRO_DORI    ,CAD_PRO.PRO_REPR,CAD_PRO.PRO_METR,');
    SQL.Add('       CAD_PRO.PRO_REND    ,CAD_PRO.PRO_PESO    ,CAD_PRO.PRO_PSCN    ,CAD_PRO.PRO_PSMR    ,CAD_PRO.PRO_STLN,CAD_PRO.PRO_LARG,');
    SQL.Add('       CAD_PRO.PRO_GRAM    ,CAD_PRO.PRO_UTIL    ,CAD_PRO.PRO_DENS    ,CAD_PRO.PRO_TITF,');
    SQL.Add('       CAD_PRO.PRO_APRO    ,CAD_PRO.PRO_OBSE    ,CAD_PRO.PRO_OBSF    ,CAD_PRO.PRO_STA     ,CAD_PRO.PRO_STAV,');
    SQL.Add('       CAD_PRO_IMG.PRO_FOTO,CAD_PRO_IMG.PRO_FOT2,CAD_PRO_IMG.PRO_FOT3,CAD_PRO_IMG.PRO_FOT4,');
    SQL.Add('       CAD_PRO_IMG.PRO_FOT5,CAD_PRO_IMG.PRO_FOT6,CAD_PRO_IMG.PRO_FOT7,CAD_PRO_IMG.PRO_FOT8,');
    SQL.Add('       CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,');
    SQL.Add('       CAD_PRO_IMG.PRO_INS5,CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8,');

    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');

    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
    SQL.Add('         (SELECT SUM(EST_CRED)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QCOM,');
    SQL.Add('         (SELECT SUM(EST_DEBI)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RCOM,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF ');

    SQL.Add('FROM     CAD_PRO,CAD_PRO_IMG');
    SQL.Add('WHERE    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
    SQL.Add('AND      CAD_PRO.PRO_STAV <> ''I''');

    if (CField = 'CAD_PRO.ID')       or (CField = 'CAD_PRO.PRO_CBAR') then
    SQL.Add('AND '+CField+' = '''    +CPro+'''' ) else
    if (CField = 'CAD_PRO.PRO_CART') or (CField = 'CAD_PRO.PRO_CPRO') then
    SQL.Add('AND '+CField+' LIKE ''' +CPro+'%''') else
    SQL.Add('AND '+CField+' LIKE ''%'+CPro+'%''');
    
    SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
    Open;
    Last;
  end;

  result := psq_pro.RecNo;
end;

function TFrmPrincipal.ACESSO(cusu,campo,func,roti,nome: string;proc: boolean): boolean;
var
  BRet: boolean;
begin
  BRet := true;

  if cad_usuUSU_CUSU.AsString <> '0' then
  begin
    ibSP.StoredProcName := 'SP_GRANT';
    ibSP.Prepare;
    ibSP.ParamByName('cusu').Value  := cusu;
    ibSP.ParamByName('campo').Value := campo;
    ibSP.ParamByName('func').Value  := func;
    ibSP.ParamByName('roti').Value  := roti;
    ibSP.ParamByName('nome').Value  := nome;
    ibSP.ExecProc;

    BRet := (ibSP.Params.ParamValues['bret'] = '1');

    if (proc) and (not BRet) then
    begin
      messageBox(handle,'ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.','Sistema de Vendas',MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;
  result := BRet;
end;

function TFrmPrincipal.RETORNA_LOGIN: boolean;
var
  BRet: boolean;
begin
  BRet     := false;
  frmlogin := TFrmlogin.Create(self);
  try
    frmlogin.Tag := 2;
    frmlogin.ShowModal;
  finally
    if frmlogin.RECLogin.Selected then
    begin
      SLPrincipal.Values['autorizacao'] := frmlogin.cad_usuUSU_DUSU.AsString;
//    BRet        := ((frmlogin.cad_usuUSU_NIVE.AsString = 'SUPERVISOR') or (frmlogin.cad_usuUSU_NIVE.AsString = 'GERENTE') or (frmlogin.cad_usuUSU_NIVE.AsString = 'ADMINISTRADOR'));
    end;
    freeAndNil(frmlogin);
    frmlogin.Free;
  end;
  result := BRet;
end;

procedure TFrmPrincipal.Log_Eve(func,roti,even,ceve,codi,desc,auto,taut: string);
begin
  ibSP.StoredProcName  := 'SP_LOG_EVE';
  ibSP.Prepare;
  ibSP.ParamByName('ID').Value   := 0;
  ibSP.ParamByName('CEVE').Value := ceve;
  ibSP.ParamByName('DEVE').Value := now;
  ibSP.ParamByName('CDEP').Value := frmprincipal.parametrosID.AsInteger;
  ibSP.ParamByName('CLOG').Value := frmprincipal.cad_usuUSU_CUSU.AsInteger;
  ibSP.ParamByName('DLOG').Value := TRIM(copy(frmprincipal.cad_usuUSU_DUSU.AsString,1,1)+LOWERCASE(copy(frmprincipal.cad_usuUSU_DUSU.AsString,2,14)));
  ibSP.ParamByName('AUT').Value  := auto;
  ibSP.ParamByName('TAUT').Value := taut;
  ibSP.ParamByName('IP').Value   := IP.LocalIP;
  ibSP.ParamByName('FUNC').Value := func;
  ibSP.ParamByName('ROTI').Value := roti;
  ibSP.ParamByName('EVEN').Value := even;
  ibSP.ParamByName('CODI').Value := codi;
  ibSP.ParamByName('DELO').Value := desc;
  ibSP.ExecProc;
  IBTra.CommitRetaining;
end;

procedure TFrmPrincipal.FazPrnAtualVirarDefault(IMPRESSORA: STRING);
var
  Res : DWord;
  Device: array[0..255] of char;
  Driver: array[0..255] of char;
  Port : array[0..255] of char;
  WindowsStr: array[0..255] of char;
  hDeviceMode: THandle;
begin
  IBTra.CommitRetaining;
  par_pri.Close;
  par_pri.Open;
  if not par_pri.Locate('PRI_SECA',IMPRESSORA,[]) then
     ShowMessage('Impressora não Cadastrada no Sistema'+#13+
                 'Favor cadastrar. Menu Utilitários - Lista de Impressoras');

  Printer.PrinterIndex := par_priPRI_CPRI.AsInteger;

  //Pega dados da impressora atual
  Printer.GetPrinter(Device,Driver,Port,hDeviceMode);
  //Monta String exigida pela API do Windows
  StrCat(Device,',');
  StrCat(Device,Driver);
  StrCat(Device,',');
  StrCat(Device,Port);
  StrPCopy(WindowsStr,'Windows');
  //Torna a impressora a atual
  WriteProfileString(WindowsStr,'device',Device);
  SendMessageTimeout(HWND_BROADCAST,WM_WININICHANGE,0,DWORD(@WindowsStr),SMTO_NORMAL,1,Res);
end;

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
  case msg of
       WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                      SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL));
  end;
  Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
  begin
    if (not (GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)) then
    SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));
  end;

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  TELA_WIDTH := Screen.Width - pnCustomize.Width - 5;
  if Screen.Width <= 1280 then
  FOTO_WIDTH := 250 else
  if Screen.Width >= 1600 then
  FOTO_WIDTH := 350 else
  FOTO_WIDTH := 300;

  tag := 1;
  SetLength(PCampo,4);

  if frmlogin.RECLogin.Selected then
  begin
    oOTransact(IBTra);

    cad_usu.Close;
    cad_usu.ParamByName('USU_CUSU').AsString := frmlogin.cad_usuUSU_CUSU.AsString;
    cad_usu.Open;

    WITH CONSULTA DO
    BEGIN
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_USU');
      SQL.Add('SET    USU_DULT = ''' + FormatDateTime('mm/dd/yy hh:mm',Now) + '''');
      SQL.Add('WHERE  ID       = ''' + Frmlogin.CAD_USUID.AsString          + '''');
      ExecSQL;
    end;

    frmlogin.TCadastro.Commit;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  if (SLPrincipal = nil) or (CAD_USU.RecNo = 0) then
  Application.Terminate else

  begin
    with par_pri do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM '+SLPrincipal.Values['par_pri']);
      SQL.Add('WHERE PRI_IP = '''+IP.LocalIP+'''');
      Open;
    end;

    Tag := 0;
  end;  
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var i: word;
begin
  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  if oYesNo(handle, 'Confirma saída do sistema ?') = mrNo then Abort;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  XRect   : TRect;
  WLargura: Word;
begin
  if Showing then
  begin
    { SBRodape.Tag = 27 }
    { Painel Conexão }
    WLargura := SBRodape.Panels[3].MinWidth;
    Case Length(SBRodape.Panels[3].Text) of
    25..30: WLargura := 185;
        31: WLargura := 190;
        32: WLargura := 195;
    33..40: WLargura := 210;
    end;
    SBRodape.Panels[3].Width := WLargura;

    { Painel Usuário }
    WLargura := SBRodape.Panels[1].MinWidth;
    Case Length(SBRodape.Panels[1].Text) of
    31..35: WLargura := 220;
    36..40: WLargura := 250;
    41..45: WLargura := 280;
    46..50: WLargura := 310;
    51..55: WLargura := 360;
    56..60: WLargura := 390;
    61..65: WLargura := 420;
    66..70: WLargura := 450;
    end;
    SBRodape.Panels[1].Width := WLargura;
    SBRodape.Panels[0].Width := SBRodape.Width - 20 - (SBRodape.Panels[1].Width+SBRodape.Panels[2].Width+SBRodape.Panels[3].Width+
                                                       SBRodape.Panels[4].Width+SBRodape.Panels[5].Width+SBRodape.Panels[6].Width);
    XRect.Left   := IFotoFundo.Left;
    XRect.Top    := IFotoFundo.Top - (IFThen(PNBot.Visible,0,PNBot.Height));
    XRect.Right  := Screen.Width;
    XRect.Bottom := Screen.Height  - (IFThen(PNBot.Visible,PNBot.Height,0) + SBRodape.Height);

    Canvas.StretchDraw(xRect,IFotoFundo.Picture.Graphic);

    if Screen.Height <= 768 then
       for WLargura := MDIChildCount - 1 downto 0 do
       if MDIChildren[WLargura] <> Nil then
          MDIChildren[WLargura].Repaint;
  end;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  if FrmPrincipal <> Nil then
  Paint;
end;

procedure TFrmPrincipal.rsbSAIClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPrincipal.rsbBLCClick(Sender: TObject);
begin
  winExec('c:\windows\system32\notepad.exe',sw_shownormal);
end;

procedure TFrmPrincipal.rsbCALCClick(Sender: TObject);
begin
  winexec('c:\windows\system32\calc.exe',AW_CENTER);
end;

procedure TFrmPrincipal.rsbSOBClick(Sender: TObject);
begin
  uFrmCreate(Application,TfrmSobre, frmSobre);
end;

procedure TFrmPrincipal.actcad_repExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmcad_rep, frmcad_rep);
end;

procedure TFrmPrincipal.actcad_forExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmcad_for, frmcad_for);
end;

procedure TFrmPrincipal.acttab_alqExecute(Sender: TObject);
begin
  //uFrmCreate(Application,Tfrmtab_alq, frmtab_alq);
end;

procedure TFrmPrincipal.acttab_natExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmtab_nat, frmtab_nat);
end;

procedure TFrmPrincipal.acttab_pagExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmtab_pag, frmtab_pag);
end;

procedure TFrmPrincipal.acttab_munExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmtab_mun, frmtab_mun);
end;

procedure TFrmPrincipal.BCliClick(Sender: TObject);
var
  hint: string;
begin
  pnloca.Visible := false;
  pnlprg.Visible := false;
  pnlped.Visible := false;
  pnlpro.Visible := false;

  if SLPrincipal.Values['departamento']      = 'ADM' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if (SLPrincipal.Values['departamento'] = 'VEN') or
          (SLPrincipal.Values['departamento'] = 'REP') then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'CRI' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'FIN' then
  begin
    pnlfin.Visible := false;
    hint := pnlfin.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'PCP' then
  begin
    pnlpcp.Visible := false;
    hint := pnlpcp.Hint;
  end;
  label1.Caption  := 'Menu de Clientes';
end;

procedure TFrmPrincipal.BProClick(Sender: TObject);
var
    hint: string;
begin
  pnloca.Visible := false;
  pnlprg.Visible := false;
  pnlped.Visible := false;
  pnlpro.Visible := true;

  if SLPrincipal.Values['departamento']      = 'ADM' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if (SLPrincipal.Values['departamento'] = 'VEN') or
          (SLPrincipal.Values['departamento'] = 'REP') then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'CRI' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'FIN' then
  begin
    pnlfin.Visible := false;
    hint := pnlfin.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'PCP' then
  begin
    pnlpcp.Visible := false;
    hint := pnlpcp.Hint;
  end;
  label1.Caption  := 'Menu de Produtos';
end;

procedure TFrmPrincipal.sbvproClick(Sender: TObject);
begin
  pnlpro.Visible  := false;
  if SLPrincipal.Values['departamento']      = 'ADM' then
     pnlven.Visible := true
  else if (SLPrincipal.Values['departamento'] = 'VEN') or
          (SLPrincipal.Values['departamento'] = 'REP') then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'CRI' then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'FIN' then
     pnlfin.Visible := true
  else if SLPrincipal.Values['departamento'] = 'PCP' then
     pnlpcp.Visible := true;
  label1.Caption  := 'Principais Categorias';
end;

procedure TFrmPrincipal.cad_usuAfterOpen(DataSet: TDataSet);
begin
  RECUsuarios.Id           := FrmPrincipal.cad_usuUSU_CUSU.AsString;
  RECUsuarios.Login        := FrmPrincipal.cad_usuUSU_DUSU.AsString;
  RECUsuarios.Nome         := FrmPrincipal.cad_usuUSU_Nome.AsString;
  RECUsuarios.Grupo        := FrmPrincipal.cad_usuUSU_Menu.AsString;
  RECUsuarios.DTAcesso     := dATE;

  oRegister_Export_Usuario;
  
  if Assigned(frmlogin) then
  PAR_DEMP := FrmLogin.RECLogin.DEEP;

  Parametros.Close;
  Parametros.Params[0].Value := PAR_DEMP;
  Parametros.Open;

  label1.Caption := 'Principais Categorias';
  label1.Update;

  mSheild.Visible := RECUsuarios.Id = 0;
  pnlven.Visible := false;
  pnlfin.Visible := false;
  pnlpcp.Visible := false;

  muti_man.Visible := false;
  muti_est.Visible := false;

  if cad_usuUSU_CUSU.AsInteger = 0 then
  begin
    pnlven.Visible   := true;
    muti_man.Visible := true;
    muti_est.Visible := true;
  end
  else
  begin
    pnlven.Visible := (cad_usuUSU_MENU.AsString = 'VEN') or (cad_usuUSU_MENU.AsString = 'VEN') ;
    pnlfin.Visible := (cad_usuUSU_MENU.AsString = 'FIN');
    pnlpcp.Visible := (cad_usuUSU_MENU.AsString = 'PCP');
  end;

  if (not pnlven.Visible) and (not pnlfin.Visible) and (not pnlpcp.Visible) and (not pnloca.Visible) and
     (not pnlprg.Visible) and (not pnlped.Visible) then
      pnlven.Visible := true;

  SLPrincipal                           := TStringList.Create;
  SLPrincipal.Values['cad_pro_est']     := 'cad_pro_est';
  SLPrincipal.Values['cad_pro_res']     := 'cad_pro_res';
  SLPrincipal.Values['cad_pro_sep']     := 'cad_pro_sep';
  SLPrincipal.Values['cad_pro_def']     := 'cad_pro_def';
  SLPrincipal.Values['cad_pro_prc']     := 'cad_pro_prc';
  SLPrincipal.Values['cad_pro_prg']     := 'cad_pro_prg';
  SLPrincipal.Values['cad_pro_est2']    := 'cad_pro_est_002';
  SLPrincipal.Values['cad_pro_res2']    := 'cad_pro_res_002';
  SLPrincipal.Values['cad_pro_sep2']    := 'cad_pro_sep_002';
  SLPrincipal.Values['cad_pro_def2']    := 'cad_pro_def_002';
  SLPrincipal.Values['cad_pro_prc2']    := 'cad_pro_prc_002';
  SLPrincipal.Values['cad_pro_prg2']    := 'cad_pro_prg_002';
  SLPrincipal.Values['cad_chq_lan']     := 'cad_chq_lan';
  SLPrincipal.Values['cad_chq_lan_bai'] := 'cad_chq_lan_bai';
  SLPrincipal.Values['cad_chq_ter']     := 'cad_chq_ter';
  SLPrincipal.Values['cad_chq_ter_bai'] := 'cad_chq_ter_bai';
  SLPrincipal.Values['fin_pag']         := 'fin_pag';
  SLPrincipal.Values['fin_pag_rec']     := 'fin_pag_rec';
  SLPrincipal.Values['fin_pag_bai']     := 'fin_pag_bai';
  SLPrincipal.Values['fin_pag_coc']     := 'fin_pag_coc';
  SLPrincipal.Values['fin_pag_coi']     := 'fin_pag_coi';
  SLPrincipal.Values['fin_pag_dup']     := 'fin_pag_dup';
  SLPrincipal.Values['fin_pag_obs']     := 'fin_pag_obs';
  SLPrincipal.Values['fin_rec']         := 'fin_rec';
  SLPrincipal.Values['fin_rec_dup']     := 'fin_rec_dup';
  SLPrincipal.Values['fin_rec_obs']     := 'fin_rec_obs';
  SLPrincipal.Values['fin_rec_ban_bai'] := 'fin_rec_ban_bai';
  SLPrincipal.Values['fin_rec_car_bai'] := 'fin_rec_car_bai';
  SLPrincipal.Values['fin_rec_car_rec'] := 'fin_rec_car_rec';
  SLPrincipal.Values['fin_rec_ban_rec'] := 'fin_rec_ban_rec';
  SLPrincipal.Values['log_eve']         := 'log_eve';
  SLPrincipal.Values['log_wor']         := 'log_wor';
  SLPrincipal.Values['nfe_cab']         := 'nfe_cab';
  SLPrincipal.Values['nfe_dup']         := 'nfe_dup';
  SLPrincipal.Values['nfe_ite']         := 'nfe_ite';
  SLPrincipal.Values['nfe_tra']         := 'nfe_tra';
  SLPrincipal.Values['par_pri']         := 'par_pri';
  SLPrincipal.Values['ped_avi_cab']     := 'ped_avi_cab';
  SLPrincipal.Values['ped_avi_ite']     := 'ped_avi_ite';
  SLPrincipal.Values['ped_oca_cab']     := 'ped_oca_cab';
  SLPrincipal.Values['ped_oca_ite']     := 'ped_oca_ite';
  SLPrincipal.Values['ped_com_cab']     := 'ped_com_cab';
  SLPrincipal.Values['ped_com_ite']     := 'ped_com_ite';
  SLPrincipal.Values['ped_prg_cab']     := 'ped_prg_cab';
  SLPrincipal.Values['ped_prg_ite']     := 'ped_prg_ite';
  SLPrincipal.Values['ped_tec_cab']     := 'ped_tec_cab';
  SLPrincipal.Values['ped_tec_ite']     := 'ped_tec_ite';
  SLPrincipal.Values['ped_ven_cab']     := 'ped_ven_cab';
  SLPrincipal.Values['ped_ven_ite']     := 'ped_ven_ite';
  SLPrincipal.Values['rom_cab']         := 'rom_cab';
  SLPrincipal.Values['rom_ite']         := 'rom_ite';
  SLPrincipal.Values['rom_des']         := 'rom_des';
  SLPrincipal.Values['tab_alq']         := 'tab_alq';
  SLPrincipal.Values['tab_ban']         := 'tab_ban';
  SLPrincipal.Values['autorizacao']     := '';
  SLPrincipal.Values['data_limite']     := formatDateTime('dd/mm/yy',incDay(consulta.Fields[0].AsDateTime,strtoint(formatfloat('-0',cad_usuUSU_DIAS.AsInteger))));
  SLPrincipal.Values['data_sistema']    := formatDateTime('dd/mm/yy',consulta.Fields[0].AsDateTime);
  SLPrincipal.Values['data_caixa']      := formatDateTime('dd/mm/yy',consulta.Fields[0].AsDateTime);
  SLPrincipal.Values['departamento']    := cad_usuUSU_MENU.AsString;

  if frmprincipal.parametrosID.AsInteger > 1 then
  begin
    SLPrincipal.Values['cad_pro_est2']    := 'cad_pro_est';
    SLPrincipal.Values['cad_pro_res2']    := 'cad_pro_res';
    SLPrincipal.Values['cad_pro_sep2']    := 'cad_pro_sep';
    SLPrincipal.Values['cad_pro_def2']    := 'cad_pro_def';
    SLPrincipal.Values['cad_pro_prc2']    := 'cad_pro_prc';
    SLPrincipal.Values['cad_pro_prg2']    := 'cad_pro_prg';
    SLPrincipal.Values['cad_pro_est']     := 'cad_pro_est_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_pro_res']     := 'cad_pro_res_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_pro_sep']     := 'cad_pro_sep_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_pro_def']     := 'cad_pro_def_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_pro_prc']     := 'cad_pro_prc_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_pro_prg']     := 'cad_pro_prg_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_chq_lan']     := 'cad_chq_lan_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_chq_lan_bai'] := 'cad_chq_lan_bai_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_chq_ter']     := 'cad_chq_ter_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['cad_chq_ter_bai'] := 'cad_chq_ter_bai_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_pag']         := 'fin_pag_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_pag_rec']     := 'fin_pag_rec_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_pag_bai']     := 'fin_pag_bai_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_pag_coc']     := 'fin_pag_coc_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_pag_coi']     := 'fin_pag_coi_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_pag_dup']     := 'fin_pag_dup_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_pag_obs']     := 'fin_pag_obs_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_rec']         := 'fin_rec_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_rec_dup']     := 'fin_rec_dup_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_rec_obs']     := 'fin_rec_obs_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_rec_ban_bai'] := 'fin_rec_ban_bai_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_rec_car_bai'] := 'fin_rec_car_bai_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_rec_car_rec'] := 'fin_rec_car_rec_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['fin_rec_ban_rec'] := 'fin_rec_ban_rec_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['log_eve']         := 'log_eve_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['log_wor']         := 'log_wor_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['nfe_cab']         := 'nfe_cab_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['nfe_dup']         := 'nfe_dup_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['nfe_ite']         := 'nfe_ite_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['nfe_tra']         := 'nfe_tra_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['par_pri']         := 'par_pri_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_avi_cab']     := 'ped_avi_cab_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_avi_ite']     := 'ped_avi_ite_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_oca_cab']     := 'ped_oca_cab_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_oca_ite']     := 'ped_oca_ite_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_com_cab']     := 'ped_com_cab_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_com_ite']     := 'ped_com_ite_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_prg_cab']     := 'ped_prg_cab_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_prg_ite']     := 'ped_prg_ite_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_tec_cab']     := 'ped_tec_cab_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_tec_ite']     := 'ped_tec_ite_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_ven_cab']     := 'ped_ven_cab_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['ped_ven_ite']     := 'ped_ven_ite_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['rom_cab']         := 'rom_cab_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['rom_ite']         := 'rom_ite_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['rom_des']         := 'rom_des_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['tab_alq']         := 'tab_alq_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
    SLPrincipal.Values['tab_ban']         := 'tab_ban_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);
  end;

  bcad_cli_pcp.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Clientes'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  bcad_cli_fin.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Clientes'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  bcli.Enabled               := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Clientes'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);

  bcad_for_fin.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Fornecedores'    ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  bcad_for_pcp.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Fornecedores'    ,'Cadastro'                  ,'Permissões Gerais'                  ,false);

  bcad_pro.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  bcad_pro_con.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  bent_pro.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Estoque'                   ,'Lançamentos'                        ,false);
  bctr_pro.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Estoque'                   ,'Controle de Lançamentos'            ,false);
  btab_cor.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Cores'                     ,'Permissões Gerais'                  ,false);
  bcad_pro_grp.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Grupos'                    ,'Permissões Gerais'                  ,false);
  bcad_pro_grd.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Grade'                              ,false);
  bcad_pro_col.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Coleções'                  ,'Permissões Gerais'                  ,false);

  bven_prc.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Compras'         ,'Programações'              ,'Incluir'                            ,false);
  bctr_prc.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Compras'         ,'Programações'              ,'Controlar'                          ,false);

  bven_prg.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Programações'              ,'Incluir'                            ,false);
  bctr_prg.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Programações'              ,'Controlar'                          ,false);
  bped_prg.Enabled           := true;

  if (not bven_prc.Enabled) and (not bctr_prc.Enabled ) and
     (not bven_prg.Enabled) and (not bctr_prg.Enabled ) then
  bped_prg.Enabled           := false;

  bven_oca.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Orçamentos'                ,'Incluir'                            ,false);
  bctr_oca.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Orçamentos'                ,'Controlar'                          ,false);
  bped_oca.Enabled           := true;

  if (not bven_oca.Enabled) and (not bctr_oca.Enabled ) then
  bped_oca.Enabled           := false;

  bven_ped.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Incluir'                            ,false);
  bven_des.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Incluir'                            ,false);
  bctr_ped.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Controlar'                          ,false);
  bctr_ped_sep.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Separar'                            ,false);
  bctr_ped_sep_pcp.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Separar'                            ,false);
  bped.Enabled               := true;

  if (not bven_ped.Enabled) and (not bctr_ped.Enabled ) then
  bped.Enabled               := false;

  brom.Enabled               := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Romaneios'                 ,'Incluir'                            ,false);
  brec_con.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Consultas'                          ,false);
  brec_rec.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Recebimento de Contas'              ,false);

  bpag_con.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Consultas'                          ,false);
  bpag_pag.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Pagamento de Contas'                ,false);
  bdup.Enabled               := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Controle Bancário'         ,'Duplicatas'                         ,false);  

  bnfs_nfso.Enabled          := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Nota Fiscal'     ,'Vendas'                    ,'Incluir'                            ,false);
  bnfs_nfsv.Enabled          := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Nota Fiscal'     ,'Vendas'                    ,'Visualizar'                         ,false);

  mcad_cli_cad.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Clientes'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_for_cad.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Fornecedores'    ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_rep.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Representantes'  ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_com.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Compradores'     ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_fun_cad.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Funcionários'    ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_fun_dep.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Funcionários'    ,'Departamentos'             ,'Permissões Gerais'                  ,false);
  mcad_fun_sec.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Funcionários'    ,'Seções'                    ,'Permissões Gerais'                  ,false);
  mcad_fun_car.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Funcionários'    ,'Cargos'                    ,'Permissões Gerais'                  ,false);
  mcad_fun_vin.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Funcionários'    ,'Vínculos'                  ,'Permissões Gerais'                  ,false);
  mcad_tra.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Transportadoras' ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_pro_cad.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_pro_lan.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Estoque'                   ,'Lançamentos'                        ,false);
  mcad_pro_ctr.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Estoque'                   ,'Controle de Lançamentos'            ,false);
  mcad_pro_con.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Permissões Gerais'                  ,false);
  mcad_tab_epo.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Local de Estoque','Cadastro'                  ,'Permissões Gerais'                  ,false);

  mtab_ibx.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Cadastro de Contas'                 ,false);
  mtab_icm.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'I.C.M.S.'                  ,'Permissões Gerais'                  ,false);
  mtab_nat.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Naturezas de Operações'    ,'Permissões Gerais'                  ,false);
  mtab_pag.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Condições de Pagamentos'   ,'Permissões Gerais'                  ,false);
  mtab_cob.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Tipos de Cobranças'        ,'Permissões Gerais'                  ,false);
  mtab_ped.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Tipos de Pedidos'          ,'Permissões Gerais'                  ,false);
  mtab_uni.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Unidades de Medidas'       ,'Permissões Gerais'                  ,false);
  mtab_emb.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Embalagens'                ,'Permissões Gerais'                  ,false);
  mtab_cor.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Cores'                     ,'Permissões Gerais'                  ,false);
  mtab_cat.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Categorias'                ,'Permissões Gerais'                  ,false);
  mtab_grp.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Grupos'                    ,'Permissões Gerais'                  ,false);
  mtab_lan.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Lançamentos de Estoque'    ,'Permissões Gerais'                  ,false);
  mtab_col.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Coleções'                  ,'Permissões Gerais'                  ,false);  
  mtab_ncm.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Classificação Fiscal'      ,'Permissões Gerais'                  ,false);
  mtab_ncm.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Centro de Custo'           ,'Permissões Gerais'                  ,false);
  mtab_pla.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Plano de Contas'           ,'Permissões Gerais'                  ,false);
  mtab_cus.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Centro de Custo'           ,'Permissões Gerais'                  ,false);
  mtab_tpl.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Tipos de Planos de Contas' ,'Permissões Gerais'                  ,false);
  mtab_grd.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Produtos'        ,'Cadastro'                  ,'Grade'                              ,false);
  mtab_ori.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Tabelas'         ,'Origem de Mercadorias'     ,'Permissões Gerais'                  ,false);

  mcom_prc.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Compras'         ,'Programações'              ,'Incluir'                            ,false);
  mcom_ctr_prc.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Compras'         ,'Programações'              ,'Controlar'                          ,false);

  mNF_EMI.Enabled            := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Nota Fiscal'     ,'Vendas'                    ,'Incluir'                            ,false);
  mNF_CTR.Enabled            := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Nota Fiscal'     ,'Vendas'                    ,'Visualizar'                         ,false);
  mNF_LOG.Enabled            := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Nota Fiscal'     ,'Vendas'                    ,'Logística'                          ,false);
  mNF_TAR_TAB.Enabled        := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Tabelas'         ,'Tarefas'                   ,'Descrição'                          ,false);
  mNF_TAR_LAN.Enabled        := mNF_TAR_TAB.Enabled;
  mNF_TAR.Enabled            := mNF_TAR_TAB.Enabled;

  if (not mNF_TAR.Enabled) and (not mNF_LOG.Enabled) then
  mLOG.Enabled := false;

  mven_ped_oca.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Orçamentos'                ,'Incluir'                            ,false);
  mven_ctr_oca.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Orçamentos'                ,'Controlar'                          ,false);
  mven_ped_prg.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Programações'              ,'Incluir'                            ,false);
  mven_ctr_prg.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Programações'              ,'Controlar'                          ,false);
  mven_ped.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Incluir'                            ,false);
  mven_des.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Incluir'                            ,false);
  mven_ctr_ped.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Controlar'                          ,false);
  mven_ctr_ped_sep.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Pedidos'                   ,'Separar'                            ,false);
  mven_rom.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Romaneios'                 ,'Incluir'                            ,false);
  mven_ctr_rom.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas'          ,'Romaneios'                 ,'Controlar'                          ,false);

  mfin_ban_cad.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Bancos'                    ,'Cadastro de Bancos'                 ,false);
  mfin_ban_con.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Bancos'                    ,'Cadastro de Bancos'                 ,false);
  mfin_ban_cad.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Bancos'                    ,'Contas Bancárias'                   ,false);
  mfin_ctr_dup.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Controle Bancário'         ,'Duplicatas'                         ,false);
  mfin_ctr_bol.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Controle Bancário'         ,'Boletos'                            ,false);
  mtab_dch.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Controle Bancário'         ,'Motivos de Devoluções de Cheques'   ,false);

  mfin_rec_cad_con.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Cadastro de Contas'                 ,false);
  mfin_rec_dup_con.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Duplicação de Contas'               ,false);
  mfin_rec_rec_con.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Recebimento de Contas'              ,false);
  mfin_rec_can_rec.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Cancelamento de Recebimentos'       ,false);
  mfin_rec_con.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Consultas'                          ,false);
  mfin_rec_cfn.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Receber'          ,'Calculadora Financeira'             ,false);
  mfin_pag_cad_con.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Cadastro de Contas'                 ,false);
  mfin_pag_dup_con.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Duplicação de Contas'               ,false);
  mfin_pag_pag_con.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Pagamento de Contas'                ,false);
  mfin_pag_can_pag.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Cancelamento de Pagamentos'         ,false);
  mfin_pag_pag_com.Enabled   := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Pagamento de Comissões'             ,false);
  mfin_pag_con.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Contas a Pagar'            ,'Consultas'                          ,false);
  mfin_cco_man.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Cartões e Convênios'       ,'Manutenção de Lançamentos'          ,false);
  mfin_cco_lan.Enabled       := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Cartões e Convênios'       ,'Baixa de Lançamentos'               ,false);
  mfin_emr.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Emissão de Recibos'        ,'Permissões Gerais'                  ,false);
  mfin_spc.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Situação do Cliente no SPC','Permissões Gerais'                  ,false);
  mfin_val.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Vales de Funcionários'     ,'Permissões Gerais'                  ,false);

  mcai_abr.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Caixa'                     ,'Abertura'                           ,false);
  mcai_fec.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Caixa'                     ,'Fechamento'                         ,false);  
  mcai_tsr.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Caixa'                     ,'Tipos de Sangria \ Reforço'         ,false);
  mcai_sar.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Caixa'                     ,'Sangria \ Reforço'                  ,false);
  mcai_mov.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Financeiro'      ,'Caixa'                     ,'Movimentos'                         ,false);

  muti_age.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Agenda'                    ,'Permissões Gerais'                  ,false);
  muti_log.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Login'                     ,'Permissões Gerais'                  ,false);
  muti_sen.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Senha'                     ,'Permissões Gerais'                  ,false);
  muti_wor.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Estação de Trabalho'       ,'Permissões Gerais'                  ,false);
  muti_bak.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Backup'                    ,'Permissões Gerais'                  ,false);
  muti_pri.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Parametros de Impressão'   ,'Permissões Gerais'                  ,false);
  muti_sis.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Parametros do Sistema'     ,'Permissões Gerais'                  ,false);
  muti_usu.Enabled           := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Usuários'                   ,'Permissões Gerais'                  ,false);

  rsbusu.Enabled             := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Usuários'                  ,'Permissões Gerais'                  ,false);
  rsbbak.Enabled             := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Backup'                    ,'Permissões Gerais'                  ,false);
  rsbpri.Enabled             := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Parametros de Impressão'   ,'Permissões Gerais'                  ,false);
  rsbsis.Enabled             := ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários'     ,'Parametros do Sistema'     ,'Permissões Gerais'                  ,false);

  mREL.Visible               := (cad_usuUSU_RELA.AsString = '1');

  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CURRENT_DATE - EXTRACT(WEEKDAY FROM CURRENT_DATE)     AS week_start_date,');
    SQL.Add('       CURRENT_DATE - EXTRACT(WEEKDAY FROM CURRENT_DATE) + 6 AS week_end_date');
    SQL.Add('FROM   RDB$DATABASE');
    Open;

    Aweek_start_date := Fields[0].AsDateTime;
    Aweek_end_date   := Fields[1].AsDateTime;
  end;

  with par_pri do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM par_pri');
    SQL.Add('WHERE PRI_IP = '''+IP.LocalIP+'''');
    Open;
  end;
end;

procedure TFrmPrincipal.parametrosAfterOpen(DataSet: TDataSet);
          function _RETAliqICMS: Double;
          begin
            with consulta do
            begin
              SQL.Clear;
              SQL.Add('SELECT ALQ_ICMS FROM TAB_ALQ');
              SQL.Add('WHERE  ALQ_ESTA = '''+RECParametros.UnidadeFederada+'''');
              Open;
            end;
            result := consulta.Fields[0].AsFloat;
          end;
begin
  RECParametros.Id                    := ParametrosID.AsString;
  RECParametros.Fantasia              := ParametrosPAR_FANT.AsString;
  RECParametros.RazaoSocial           := ParametrosPAR_RAZA.AsString;
  RECParametros.IDCliente             := IntToStr(ParametrosPAR_CCLI.AsInteger);
  RECParametros.Cliente               := ParametrosCLI_FANT.AsString;
  RECParametros.RSCliente             := ParametrosCLI_RAZA.AsString;
  RECParametros.IDFornecedor          := IntToStr(ParametrosPAR_CFOR.AsInteger);
  RECParametros.Fornecedor            := ParametrosFOR_FANT.AsString;
  RECParametros.IDVendedor            := IntToStr(ParametrosPAR_CVEN.AsInteger);
  RECParametros.Vendedor              := ParametrosUSU_DUSU.AsString;
  RECParametros.IDRepresentante       := IntToStr(ParametrosPAR_CREP.AsInteger);
  RECParametros.Representante         := ParametrosREP_FANT.AsString;
  RECParametros.IDPrazo               := IntToStr(ParametrosPAR_CPAG.AsInteger);
  RECParametros.Prazo                 := ParametrosPAG_DPAG.AsString;
  RECParametros.IDTransportadora      := IntToStr(ParametrosPAR_CTRA.AsInteger);
  RECParametros.Transportadora        := IFThen(RECParametros.IDTransportadora = 1,'NOSSO CARRO ('+RECParametros.Fantasia+')',
                                         IFThen(RECParametros.IDTransportadora = 2,'CLIENTE RETIRA',ParametrosTRA_FANT.AsString));
  RECParametros.RELPedido             := ParametrosPAR_PREL.AsString;
  RECParametros.TipoPedido            := ParametrosPAR_STPD.AsString;
  RECParametros.TipoCobranca          := ParametrosPAR_STCO.AsString;
  RECParametros.PRZBancario           := ParametrosPAR_LIMB.AsInteger;
  RECParametros.PRZCarteira           := ParametrosPAR_LIMC.AsInteger;
  RECParametros.PRZCheques            := ParametrosPAR_BCHQ.AsInteger;
  RECParametros.PRZPagamentos         := ParametrosPAR_BPAG.AsInteger;
  RECParametros.PRZExpedicao          := ParametrosPAR_BPAG.AsInteger;
  RECParametros.VCreditoMaximo        := ParametrosPAR_MCRD.AsFloat;
  RECParametros.PCreditoMaximo        := ParametrosPAR_PCRD.AsFloat;
  RECParametros.RamoDeAtividade       := ParametrosRAMODEATIVIDADE.AsString;
  RECParametros.Email                 := ParametrosPAR_MAIL.AsString;
  RECParametros.EmailContabil         := ParametrosPAR_EMAILCONTABIL.AsString;
  RECParametros.EmailXMLCofre         := ParametrosPAR_EMAILXMLCofre.AsString;
  RECParametros.Cnpj                  := ParametrosPAR_CNPJ.AsString;
  RECParametros.CNPJSoftwareHouse     := ParametrosCNPJSOFTWAREHOUSE.AsString;
  RECParametros.TokenSoftwareHouse    := ParametrosTOKENSOFTWAREHOUSE.AsString;
  RECParametros.IE                    := ParametrosPAR_IE.AsString;
  RECParametros.CodMunicipio          := ParametrosPAR_CCID.AsString;
  RECParametros.Municipio             := ParametrosPAR_CID.AsString;
  RECParametros.RegimeTributario      := ParametrosPAR_CCRT.AsString;
  RECParametros.UnidadeFederada       := ParametrosPAR_UNIDADEFEDERADA.AsString;
  RECParametros.UnidadeFederadaCodigo := ParametrosPAR_UNIDADEFEDERADACODIGO.AsString;
  RECParametros.NoSerieCertificado    := ParametrosPAR_NOSERIECERTIFICADO.AsString;
  RECParametros.CFOPDentroUF          := ParametrosPAR_CNA1.AsString;
  RECParametros.CFOPForaUF            := ParametrosPAR_CNA2.AsString;
  RECParametros.Volume                := ParametrosPAR_TVOL.AsString;
  RECParametros.Grade                 := (ParametrosPAR_GRAD.AsString = '1');
  RECParametros.EstoquePecas          := ParametrosPAR_PECA.AsString;
  RECParametros.CTRLLimite            := (ParametrosPAR_LIME.AsString = '1');
  RECParametros.SQLAllClientes        := (ParametrosPAR_TCLI.AsString = '1');
  RECParametros.SQLAllProdutos        := (ParametrosPAR_TPRO.AsString = '1');
  RECParametros.PCreditoICMS          := ParametrosPAR_CICM.AsFloat;
  RECParametros.PICMS                 := _RETAliqICMS;
  RECParametros.SwHAssinatura         := IFThen(RECParametros.Fantasia <> 'EXPRESSO','','Yb0gv9r9MRN8M6uLN33yWJDMAI8gdJXBrMTbv5yUOgajE7cg6Ul8cwdKwuXHcWobsl3eHuEuL1o+xeAtCNjxKYTgg3Ln1sJwU+6YNo17whdIofhrLLiqfNYf09WFuK'+
                                                                                        'cv6YcLFLrIng3AIDw9otUD0i3AtDTKVXT4PbaRtPdl9FbdSE5JcNPvuLj78+z2PGPjLjJM6f/bUfJE4J5uQlRlkOJRLFi6uHtgcvW49/NkioB0cWOfOLiamRX4UFPKlEqEaERw6Yb1k2zVpGDL2qb528txLVeCQLjxpp8ucyKhMlOurrjmaXNf0k2iXbwIUzP2SKBnQBMThVoHqLWMwY7AJQ==');

  RECParametros.Foto                  := ParametrosPAR_FOTO;
  RECParametros.Fot2                  := ParametrosPAR_FOT2;
  RECParametros.Fot3                  := ParametrosPAR_FOT3;
  RECParametros.Fot4                  := ParametrosPAR_CBAR;
  RECParametros.C_Cnpj                := oRETMaskCNPJ(ParametrosPAR_CNPJ.AsString);
  RECParametros.C_Fantasia            := '( '+oStrZero(ParametrosID.AsInteger,5)+' ) '+oREPPrimeiraLetraMaiuscula(ParametrosPAR_FANT.AsString);
  RECParametros.C_Nome                := '( '+oStrZero(ParametrosID.AsInteger,5)+' ) '+oREPPrimeiraLetraMaiuscula(ParametrosPAR_FANT.AsString)+' - '+
                                                                                            oREPPrimeiraLetraMaiuscula(ParametrosPAR_RAZA.AsString);
  RECParametros.C_Endereco            := oREPPrimeiraLetraMaiuscula(ParametrosPAR_TLOG.AsString)+' ' +
                                         oREPPrimeiraLetraMaiuscula(ParametrosPAR_LOGR.AsString)+', '+
                                         oREPPrimeiraLetraMaiuscula(ParametrosPAR_NUME.AsString)+' ' +
                                         oREPPrimeiraLetraMaiuscula(ParametrosPAR_COMP.AsString)+' ' +
                                         'Cep '+LeftStr(ParametrosPAR_CEP.AsString,5)+'-'+RightStr(ParametrosPAR_CEP.AsString,3);
  RECParametros.C_Complemento         := oREPPrimeiraLetraMaiuscula(ParametrosPAR_BAI.AsString)+' - '+
                                         oREPPrimeiraLetraMaiuscula(ParametrosPAR_CID.AsString)+' - '+
                                         ParametrosPAR_UF.AsString;
  RECParametros.C_Fone                := 'Fone: ( '+ParametrosPAR_DDD.AsString+' ) '+
                                         LeftStr(ParametrosPAR_FONE.AsString ,4)+'-'+
                                         RightStr(ParametrosPAR_FONE.AsString,4);


  RECParametros.DTServidor := RECUsuarios.DTAcesso;
  RECParametros.DTMes1     := StartOfTheMonth(RECUsuarios.DtAcesso);
  RECParametros.DTMes2     := EndOfTheMonth(RECUsuarios.DtAcesso);
  RECParametros.DTSemana1  := StartOfTheWeek(RECUsuarios.DtAcesso);
  RECParametros.DTSemana2  := EndOfTheWeek(RECUsuarios.DtAcesso);

  RECParametros.EnvMail    := False;
  RECParametros.TimeZone   := '-03:00';

  SBRodape.Panels[1].Text  := cad_usuUSU_DUSU.AsString;
  SBRodape.Panels[3].Text  := LAN;
  SBRodape.Update;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT CAST (''NOW'' AS TIMESTAMP) as DATA FROM RDB$DATABASE');
    Open;
  end;

  SBRodape.Panels[0].Text := ParametrosPAR_FANT.AsString;
  carregaFoto(parametrosPAR_FOTO.BlobSize,parametrosPAR_FOTO,parametros)
end;

procedure TFrmPrincipal.actlog_usuExecute(Sender: TObject);
var
  i: integer;
begin
  if frmlogin = nil then
  begin
    for I := MDIChildCount-1 downto 0 do
        if MDIChildren[I] <> nil then
           MDIChildren[I].Close;

    frmlogin     := Tfrmlogin.create(Application);
    frmlogin.Tag := frmprincipal.Tag;
    frmlogin.Update;
    try
      frmlogin.ShowModal;
    finally
      if Frmlogin.RECLogin.Selected then
      begin
        cad_usu.Close;
        cad_usu.ParamByName('USU_CUSU').AsString := frmlogin.cad_usuUSU_CUSU.AsString;
        cad_usu.Open;
      end;
      paint;
    end;
  end;  
end;

procedure TFrmPrincipal.actsen_usuExecute(Sender: TObject);
begin
  if frmsenha = nil then
  begin
    Application.CreateForm (Tfrmsenha, frmsenha);
    try
      frmsenha.dusu := cad_usuUSU_DUSU.AsString;
      frmsenha.ShowModal;
    finally
      if frmsenha.editado then
      begin
        cad_usu.Edit;
        cad_usuUSU_PASS.Value := frmsenha.edpassN.Text;
        cad_usu.Post;
        IBTra.CommitRetaining;
      end;
      freeAndnil(frmsenha);
      frmsenha.Free;
    end;
    cad_usu.Close;
    cad_usu.Open;
  end;  
end;

procedure TFrmPrincipal.actpar_priExecute(Sender: TObject);
begin
  if frmpar_pri = nil then
  begin
    if not ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_VISU','Utilitários','Parametros de Impressão','Permissões Gerais',false) then
       raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');

    Application.CreateForm (TfrmPar_Pri, frmPar_Pri);
    try
      frmPar_Pri.ShowModal;
    finally
      par_pri.Close;
      par_pri.Open;

      freeAndnil(frmpar_pri);
      frmpar_pri.Free;
    end;
  end;  
end;

procedure TFrmPrincipal.actcad_pro_conExecute(Sender: TObject);
begin
  if frmcad_pro_con = nil then
  begin
    Application.CreateForm (Tfrmcad_pro_con, frmcad_pro_con);
    frmcad_pro_con.ShowModal;
  end;
end;

procedure TFrmPrincipal.actsobreExecute(Sender: TObject);
begin
  if frmsobre = nil then
  begin
    Application.CreateForm (Tfrmsobre, frmsobre);
    frmsobre.Show;
  end;
end;

procedure TFrmPrincipal.acttab_clfExecute(Sender: TObject);
begin
  //uFrmCreate(Application,Tfrmtab_clf, frmtab_clf);
end;

procedure TFrmPrincipal.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbDataSet);
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam <> 0 then
  begin
    BlobStream := tab.CreateBlobStream(valor,bmRead);
    JPEGImage  := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      IFotoFundo.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
  begin
    IFotoFundo.Picture := nil;
    frmprincipal.Color := clBtnFace;
  end;
  IFotoFundo.Update;
  IFotoFundo.Refresh;  
end;

procedure TFrmPrincipal.bcad_pro_conClick(Sender: TObject);
begin
  pnlpro.Visible := false;
  pnlcon.Visible := true;
  pnlcon.Tag     := 0;

  label1.Caption  := 'Menu de Consultas';
end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  pnlpro.Visible := true;
  pnlcon.Visible := false;
end;

procedure TFrmPrincipal.actcai_abrExecute(Sender: TObject);
begin
  if frmcai_abr = nil then
  begin
    Application.CreateForm (Tfrmcai_abr, frmcai_abr);
    frmcai_abr.ShowModal;
  end;
end;

procedure TFrmPrincipal.actcai_fecExecute(Sender: TObject);
begin
  if frmcai_fec = nil then
  begin
    Application.CreateForm (Tfrmcai_fec, frmcai_fec);
    frmcai_fec.ShowModal;
  end;
end;

procedure TFrmPrincipal.actcai_tsrExecute(Sender: TObject);
begin
  if frmcai_tsr = nil then
  begin
    Application.CreateForm (Tfrmcai_tsr, frmcai_tsr);
    frmcai_tsr.Show;
  end;
end;

procedure TFrmPrincipal.actcai_movExecute(Sender: TObject);
begin
  if frmcai_mov = nil then
  begin
    Application.CreateForm (Tfrmcai_mov, frmcai_mov);
    if Screen.Width <= 1024 then
    begin
      frmcai_mov.FormStyle := fsNormal;
      frmcai_mov.Visible   := false;
      frmcai_mov.ShowModal;
    end
    else
      frmcai_mov.Show;
  end;    
end;

procedure TFrmPrincipal.sbvorcClick(Sender: TObject);
begin
  pnloca.Visible  := false;
  if SLPrincipal.Values['departamento']      = 'ADM' then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'VEN' then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'CRI' then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'FIN' then
     pnlfin.Visible := true
  else if SLPrincipal.Values['departamento'] = 'PCP' then
     pnlpcp.Visible := true;
  label1.Caption  := 'Principais Categorias';
end;

procedure TFrmPrincipal.sbvprgClick(Sender: TObject);
begin
  pnlprg.Visible  := false;
  if SLPrincipal.Values['departamento']      = 'ADM' then
     pnlven.Visible := true
  else if (SLPrincipal.Values['departamento'] = 'VEN') or
          (SLPrincipal.Values['departamento'] = 'REP') then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'CRI' then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'FIN' then
     pnlfin.Visible := true
  else if SLPrincipal.Values['departamento'] = 'PCP' then
     pnlpcp.Visible := true;
  label1.Caption  := 'Principais Categorias';
end;

procedure TFrmPrincipal.bped_ocaClick(Sender: TObject);
var
    hint: string;
begin
  pnlprg.Visible := false;
  pnlped.Visible := false;
  pnlpro.Visible := false;
  pnloca.Visible := true;

  if SLPrincipal.Values['departamento']      = 'ADM' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'VEN' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'CRI' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'FIN' then
  begin
    pnlfin.Visible := false;
    hint := pnlfin.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'PCP' then
  begin
    pnlpcp.Visible := false;
    hint := pnlpcp.Hint;
  end;
  label1.Caption  := 'Menu de Orçamentos';
end;

procedure TFrmPrincipal.bped_prgClick(Sender: TObject);
var
    hint: string;
begin
  pnlped.Visible := false;
  pnlpro.Visible := false;
  pnloca.Visible := false;
  pnlprg.Visible := true;
  
  if SLPrincipal.Values['departamento']      = 'ADM' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if (SLPrincipal.Values['departamento'] = 'VEN') or
          (SLPrincipal.Values['departamento'] = 'REP') then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'CRI' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'FIN' then
  begin
    pnlfin.Visible := false;
    hint := pnlfin.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'PCP' then
  begin
    pnlpcp.Visible := false;
    hint := pnlpcp.Hint;
  end;
  label1.Caption  := 'Menu de Programações';
end;

procedure TFrmPrincipal.actven_pedExecute(Sender: TObject);
begin
  if frmven_ped = nil then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY CAI_DABR DESC');
      Open;

      if strtodate(SLPrincipal.Values['data_caixa']) > fields[2].AsDateTime  then
      raise exception.Create('Caixa não aberto !');

      if not fields[3].IsNull then
      raise exception.Create('Caixa já fechado !');
    end;

    Application.CreateForm (Tfrmven_ped, frmven_ped);
    frmven_ped.edcdcx.Text := consulta.Fields[0].AsString;

    if Screen.Width <= 1024 then
    begin
      frmven_ped.FormStyle := fsNormal;
      frmven_ped.Visible   := false;
      frmven_ped.ShowModal;
    end
    else
      frmven_ped.Show;
  end;
end;

procedure TFrmPrincipal.BPedClick(Sender: TObject);
var
    hint: string;
begin
  pnlpro.Visible := false;
  pnloca.Visible := false;
  pnlprg.Visible := false;
  pnlped.Visible := true;

  if SLPrincipal.Values['departamento']      = 'ADM' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'VEN' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'CRI' then
  begin
    pnlven.Visible := false;
    hint := pnlven.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'FIN' then
  begin
    pnlfin.Visible := false;
    hint := pnlfin.Hint;
  end
  else if SLPrincipal.Values['departamento'] = 'PCP' then
  begin
    pnlpcp.Visible := false;
    hint := pnlpcp.Hint;
  end;
  label1.Caption  := 'Menu de Pedidos';
end;

procedure TFrmPrincipal.sbvpedClick(Sender: TObject);
begin
  pnlped.Visible  := false;
  if SLPrincipal.Values['departamento']      = 'ADM' then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'VEN' then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'CRI' then
     pnlven.Visible := true
  else if SLPrincipal.Values['departamento'] = 'FIN' then
     pnlfin.Visible := true
  else if SLPrincipal.Values['departamento'] = 'PCP' then
     pnlpcp.Visible := true;
  label1.Caption  := 'Principais Categorias';
end;

procedure TFrmPrincipal.actcad_pro_prcExecute(Sender: TObject);
begin
  Application.CreateForm (Tfrmcad_pro_con, frmcad_pro_con);
  frmcad_pro_con.Tag := 1;
  frmcad_pro_con.Show;
end;

procedure TFrmPrincipal.actcai_sarExecute(Sender: TObject);
begin
  if frmcai_sar = nil then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY CAI_DABR DESC');
      Open;

      if strtodate(SLPrincipal.Values['data_caixa']) > fields[2].AsDateTime  then
         raise exception.Create('Caixa não aberto !');

      if not fields[3].IsNull then
         raise exception.Create('Caixa já fechado !');
    end;

    Application.CreateForm (Tfrmcai_sar, frmcai_sar);
    frmcai_sar.cadastro.Tag := consulta.Fields[0].AsInteger;
    frmcai_sar.Show;
  end;  
end;

procedure TFrmPrincipal.actfin_dupExecute(Sender: TObject);
begin
  if frmfin_dup = nil then
  begin
    Application.CreateForm (Tfrmfin_dup, frmfin_dup);
    if Screen.Width <= 1024 then
    begin
      frmfin_dup.FormStyle := fsNormal;
      frmfin_dup.Visible   := false;
      frmfin_dup.ShowModal;
    end
    else
      frmfin_dup.Show;
  end;
end;

procedure TFrmPrincipal.actven_desExecute(Sender: TObject);
begin
  if frmven_des = nil then
  begin
    frmven_des := tfrmven_des.create(self);
    try
      frmven_des.edcdro.text := '0';
      frmven_des.showmodal;
    finally
      freeAndNil(frmven_des);
      frmven_des.Free;
    end
  end;  
end;

procedure TFrmPrincipal.actcai_reaExecute(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
    SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('ORDER BY CAI_DABR DESC');
    Open;

    if fields[3].IsNull then
       raise exception.Create('Caixa não fechado para re-abertura !');
  end;

  if oYesNo(handle,'Confirma re-abertura do caixa '+consulta.fields[1].AsString+' ('+consulta.fields[0].AsString+') '+formatDateTime('dd/mm/yy',consulta.fields[2].AsDateTime)) = mrno then
     abort;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_DFEC = NULL,');
    SQL.Add('       CAI_HFEC = NULL' );
    SQL.Add('WHERE  ID = '''+consulta.Fields[0].AsString+'''');
    ExecSQL;
    IBTra.CommitRetaining;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAI_DABR FROM CAI_LAF');
    SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('ORDER BY CAI_DABR DESC');
    Open;

    if not fields[0].IsNull then
       SLPrincipal.Values['data_caixa'] := formatDateTime('dd/mm/yy',Fields[0].AsDateTime);
  end;

  messageBox(handle,'Caixa Re-Aberto com Sucesso !','Sistema de Vendas',MB_ICONINFORMATION+MB_OK);
end;

procedure TFrmPrincipal.ABRE_RELATORIO(nome: string);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsGER.TabVisible  := true;
    frmrelatorio_geral.pcMAIN.ActivePage := frmrelatorio_geral.tsGER;
    frmrelatorio_geral.cbGER_TREL.Text   := nome;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure TFrmPrincipal.mREL_PED_PRO_CATClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS DE PRODUTOS POR CATEGORIA');
end;

procedure TFrmPrincipal.mREL_PED_PRO_GERClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS DE PRODUTOS - GERAL');
end;

procedure TFrmPrincipal.mREL_PED_PRO_DEVClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS DE PRODUTOS - DEVOLUÇÃO');
end;

procedure TFrmPrincipal.mREL_PED_PRO_RKGClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS DE PRODUTOS - RANKING');
end;

procedure TFrmPrincipal.mREL_PED_KAR_CATClick(Sender: TObject);
begin
  ABRE_RELATORIO('KARDEX DE PRODUTOS POR CATEGORIA');
end;

procedure TFrmPrincipal.mREL_FAT_RES_NFEClick(Sender: TObject);
begin
  ABRE_RELATORIO('RESUMO DE NOTAS FISCAIS');
end;

procedure TFrmPrincipal.mREL_FAT_TIP_CRDClick(Sender: TObject);
begin
  ABRE_RELATORIO('FATURAMENTO POR TIPOS DE CRÉDITOS');
end;

procedure TFrmPrincipal.mREL_FAT_TIP_PEDClick(Sender: TObject);
begin
  ABRE_RELATORIO('FATURAMENTO POR TIPOS DE PEDIDOS');
end;

procedure TFrmPrincipal.mREL_PRG_COM_CLIClick(Sender: TObject);
begin
  ABRE_RELATORIO('COMPRAS POR FORNECEDORES');
end;

procedure TFrmPrincipal.mREL_PRG_COM_PROClick(Sender: TObject);
begin
  ABRE_RELATORIO('COMPRAS POR PRODUTOS');
end;

procedure TFrmPrincipal.ComprasporContainer1Click(Sender: TObject);
begin
  ABRE_RELATORIO('COMPRAS POR CONTAINER');
end;

procedure TFrmPrincipal.mREL_PRG_COM_GERClick(Sender: TObject);
begin
  ABRE_RELATORIO('COMPRAS - GERAL');
end;

procedure TFrmPrincipal.mREL_PRG_VEN_CLIClick(Sender: TObject);
begin
  ABRE_RELATORIO('PROGRAMAÇÃO DE VENDAS POR CLIENTES');
end;

procedure TFrmPrincipal.mREL_PRG_VEN_PROClick(Sender: TObject);
begin
  ABRE_RELATORIO('PROGRAMAÇÃO DE VENDAS POR PRODUTOS');
end;

procedure TFrmPrincipal.mREL_PED_KAR_PROClick(Sender: TObject);
begin
  ABRE_RELATORIO('KARDEX DE VENDAS POR PRODUTOS');
end;

procedure TFrmPrincipal.psq_proCalcFields(DataSet: TDataSet);
begin
  psq_proC_QEST.Value := psq_proPRO_QEST.AsFloat;
  psq_proC_QRES.Value := psq_proPRO_QRES.AsFloat;
  psq_proC_QSEP.Value := psq_proPRO_QSEP.AsFloat;

  psq_proC_QDEF.Value := psq_proPRO_QDEF.AsFloat;
  psq_proC_QEST.Value := psq_proC_QEST.AsFloat + psq_proC_QSEP.AsFloat;
  psq_proC_QDIS.Value := psq_proC_QEST.AsFloat - psq_proC_QRES.AsFloat - psq_proC_QSEP.AsFloat;
  if psq_proC_QDIS.AsFloat < 0 then
  psq_proC_QDIS.Value := 0;

  if psq_proPRO_STAV.AsString = 'P' then
  psq_proC_STAV.Value := 'PRÉ-CADASTRO' else
  if psq_proPRO_STAV.AsString = 'I' then
  psq_proC_STAV.Value := 'INATIVO';

  if psq_proPRO_CCST.AsString = '0' then
  psq_proC_DCST.Value := 'Nacional' else
  if psq_proPRO_CCST.AsString = '1' then
  psq_proC_DCST.Value := 'Estrangeira - Importação Direta' else
  if psq_proPRO_CCST.AsString = '2' then
  psq_proC_DCST.Value := 'Estrangeira - Adiquirida no Mercado Interno';
end;

procedure TFrmPrincipal.mREL_PED_PED_GERClick(Sender: TObject);
begin
  ABRE_RELATORIO('PEDIDOS - GERAL');
end;

procedure TFrmPrincipal.mREL_PED_PED_CLIClick(Sender: TObject);
begin
  ABRE_RELATORIO('PEDIDOS POR CLIENTES');
end;

procedure TFrmPrincipal.mREL_PED_PED_VENClick(
  Sender: TObject);
begin
  ABRE_RELATORIO('PEDIDOS POR VENDEDORES');
end;

procedure TFrmPrincipal.mREL_PED_PED_REPClick(
  Sender: TObject);
begin
  ABRE_RELATORIO('PEDIDOS POR REPRESENTANTES');
end;

procedure TFrmPrincipal.mREL_PED_PRO_CLIClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS DE PRODUTOS POR CLIENTES');
end;

procedure TFrmPrincipal.mREL_PED_PRO_VENClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS DE PRODUTOS POR VENDEDORES');
end;

procedure TFrmPrincipal.mREL_PED_PRO_REPClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS DE PRODUTOS POR REPRESENTANTES');
end;

procedure TFrmPrincipal.mREL_PED_PED_CATClick(Sender: TObject);
begin
  ABRE_RELATORIO('PEDIDOS DE VENDAS POR CATEGORIAS');
end;

procedure TFrmPrincipal.mREL_PRG_VEN_GERClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS - GERAL');
end;

procedure TFrmPrincipal.mREL_FAT_VEN_GERClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS FATURADAS - GERAL');
end;

procedure TFrmPrincipal.mREL_FAT_VEN_FATClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS FATURADAS POR CATEGORIAS');
end;

procedure TFrmPrincipal.mREL_FAT_VEN_VENClick(Sender: TObject);
begin
  ABRE_RELATORIO('VENDAS FATURADAS POR VENDEDORES');
end;

procedure TFrmPrincipal.Containers1Click(Sender: TObject);
begin
  ABRE_RELATORIO('FATURAMENTO POR NÚMERO DE CONTAINER');
end;

procedure TFrmPrincipal.CFOP1Click(Sender: TObject);
const
  aCFOP: Array [1..78] of String =
('7102         0199',
 '7101         0199',
 '5906         0199',
 '6949         0199',
 '7949         0199',
 '5101     11010151',
 '5102     11020151',
 '5122     11220151',
 '5123     11230151',
 '5124     11240151',
 '5124/590211240151',
 '5125     11250151',
 '5201     12010199',
 '5202     12020199',
 '5551     15510151',
 '5556     15560199',
 '5901     19010155',
 '5902     19020155',
 '5903     19030155',
 '5904     19040155',
 '5905     19050199',
 '5908     19080151',
 '5910     19100151',
 '5911     19110151',
 '5913     19130151',
 '5915     19150155',
 '5916     19160155',
 '5924     19240155',
 '5925     19250155',
 '5934     19340151',
 '5949     19490199',
 '6101     21010151',
 '6102     21020151',
 '6107     21070151',
 '6108     21080151',
 '6110     21100151',
 '6118     21180151',
 '6119     21190151',
 '6122     21220151',
 '6123     21230151',
 '6124     21240151',
 '6124/690221240151',
 '6125     21250151',
 '6125/692521250151',
 '6202     22020199',
 '6403     24030151',
 '6404     24040151',
 '6901     29010151',
 '6902     29020151',
 '6910     29100151',
 '6911     29110151',
 '6916     29160199',
 '6923     29230151',
 '6924     29240151',
 '6925     29250151',
 '1551     35510151',
 '1101     51010151',
 '1556     51010151',
 '3101     51010199',
 '1102     51020151',
 '3102     51020199',
 '1125     51250151',
 '1201     52010199',
 '1202     52020199',
 '1407     54030151',
 '1902     59020155',
 '1910     59100151',
 '1911     59110151',
 '1915     59150155',
 '1949     59490101',
 '2101     61010151',
 '2102     61020151',
 '2124     61240155',
 '2125     61250155',
 '2202     62020199',
 '2902     69020155',
 '2910     69100151',
 '2924     69240155');
var
  i: Word;
begin
  try
    oOTransact(DMDados.TFBEdicao);
    with DMDados do
    for i := 1 to 78 do
    with QFBEdicao do
    begin
      SQL.Clear;
      SQL.Add('UPDATE TAB_NAT');
      SQL.Add('SET    NAT_CFOP = '''+Copy(aCFOP[i],10,4)+''',');
      SQL.Add('       IPISEME  = '''+Copy(aCFOP[i],14,2)+''',');
      SQL.Add('       IPISEMS  = '''+Copy(aCFOP[i],16,2)+'''');
      SQL.Add('WHERE  NAT_CNAT = '''+Trim(LeftStr(aCFOP[i],9))+'''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('UPDATE TAB_NAT');
      SQL.Add('SET    NAT_TPNF = ''0''');
      SQL.Add('WHERE  NAT_OPER = ''ENTRADA''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('UPDATE TAB_NAT');
      SQL.Add('SET    NAT_TPNF =  ''1''');
      SQL.Add('WHERE  NAT_OPER <> ''ENTRADA''');
      ExecSQL;
    end;
  finally
    oCTransact(DMDados.TFBEdicao);
  end;
  oAviso(Handle,'CFOP Atualizado com Sucesso !');
end;

procedure TFrmPrincipal.ransportadora1Click(Sender: TObject);
begin
  try
    oOTransact(DMDados.TFBEdicao);
    oOTransact(DMDados.TFBCadastro);
    with DMDados do
    begin
      with QFBEdicao do
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM CAD_TRA');
        SQL.Add('WHERE  TRA_FANT LIKE ''%CLIENTE RETIRA%''');
        ExecSQL;

        SQL.Clear;
        SQL.Add('DELETE FROM CAD_TRA');
        SQL.Add('WHERE  TRA_FANT LIKE ''%PROPRIO%''');
        ExecSQL;

        SQL.Clear;
        SQL.Add('DELETE FROM CAD_TRA');
        SQL.Add('WHERE  TRA_FANT LIKE ''%PRÓPRIO%''');
        ExecSQL;

        SQL.Clear;
        SQL.Add('DELETE FROM CAD_TRA');
        SQL.Add('WHERE  TRA_FANT = ''NOSSO CARRO''');
        ExecSQL;
      end;
      with QFBCadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID,PAR_FANT,PAR_RAZA,PAR_CNPJ FROM PAR_SIS');
        Open;
        while not eof do
        begin
          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('DELETE FROM CAD_TRA');
          QFBEdicao.SQL.Add('WHERE TRA_FANT = '''+Fields[1].AsString+'''');
          QFBEdicao.ExecSQL;
          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('DELETE FROM CAD_TRA');
          QFBEdicao.SQL.Add('WHERE TRA_RAZA = '''+Fields[2].AsString+'''');
          QFBEdicao.ExecSQL;
          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('DELETE FROM CAD_TRA');
          QFBEdicao.SQL.Add('WHERE TRA_CNPJ = '''+Fields[3].AsString+'''');
          QFBEdicao.ExecSQL;

          Hint := 'NOSSO CARRO ('+Fields[1].AsString+')';
          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE '+oREPZero('nfe_cab','_',Fields[0].AsInteger,3));
          QFBEdicao.SQL.Add('SET    NFE_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  NFE_DTRA = '''+Fields[1].AsString+'''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE '+oREPZero('ped_ven_cab','_',Fields[0].AsInteger,3));
          QFBEdicao.SQL.Add('SET    ROM_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  ROM_DTRA = '''+Fields[1].AsString+'''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE '+oREPZero('ped_ven_cab','_',Fields[0].AsInteger,3));
          QFBEdicao.SQL.Add('SET    ROM_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  ROM_DTRA = '''+Fields[1].AsString+'''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE '+oREPZero('rom_cab','_',Fields[0].AsInteger,3));
          QFBEdicao.SQL.Add('SET    ROM_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  ROM_DTRA = '''+Fields[1].AsString+'''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE CAD_CLI');
          QFBEdicao.SQL.Add('SET    CLI_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  CLI_DTRA = '''+Fields[1].AsString+'''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE CAD_CLI');
          QFBEdicao.SQL.Add('SET    CLI_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  CLI_DTRA = '''+Fields[1].AsString+'''');
          QFBEdicao.ExecSQL;

          Hint := 'O PRÓPRIO';
          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE '+oREPZero('nfe_cab','_',Fields[0].AsInteger,3));
          QFBEdicao.SQL.Add('SET    NFE_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  NFE_DTRA = ''CLIENTE RETIRA''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE '+oREPZero('ped_ven_cab','_',Fields[0].AsInteger,3));
          QFBEdicao.SQL.Add('SET    ROM_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  ROM_DTRA = ''CLIENTE RETIRA''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE '+oREPZero('ped_ven_cab','_',Fields[0].AsInteger,3));
          QFBEdicao.SQL.Add('SET    ROM_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  ROM_DTRA = ''CLIENTE RETIRA''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE '+oREPZero('rom_cab','_',Fields[0].AsInteger,3));
          QFBEdicao.SQL.Add('SET    ROM_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  ROM_DTRA = ''CLIENTE RETIRA''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE CAD_CLI');
          QFBEdicao.SQL.Add('SET    CLI_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  CLI_DTRA = ''CLIENTE RETIRA''');
          QFBEdicao.ExecSQL;

          QFBEdicao.SQL.Clear;
          QFBEdicao.SQL.Add('UPDATE CAD_CLI');
          QFBEdicao.SQL.Add('SET    CLI_DTRA = '''+Hint+'''');
          QFBEdicao.SQL.Add('WHERE  CLI_DTRA = ''CLIENTE RETIRA''');
          QFBEdicao.ExecSQL;

          Next;
        end;
      end;
    end;
  finally
    oCTransact(DMDados.TFBEdicao);
    oCTransact(DMDados.TFBCadastro);
  end;
  oAviso(Handle,'Transportadora Atualizada com Sucesso !');
end;

procedure TFrmPrincipal.CEAN1Click(Sender: TObject);
begin
  try
    oOTransact(DMDados.TFBEdicao);
    oOTransact(DMDados.TFBCadastro);
    with DMDados do
    begin
      with QFBCadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID,PRO_CPRO FROM CAD_PRO');
        SQL.Add('WHERE  PRO_CBAR NOT LIKE ''789%''');
        Open;
      end;
      while not QFBCadastro.Eof do
      begin
        with QFBEdicao do
        begin
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET   PRO_CBAR = '''+oRETBarCode(QFBCadastro.Fields[0].AsString,QFBCadastro.Fields[1].AsString)+'''');
          SQL.Add('WHERE ID       = '''+QFBCadastro.Fields[0].AsString+'''');
          ExecSQL;
        end;
        QFBCadastro.Next;
      end;
    end;
  finally
    oCTransact(DMDados.TFBEdicao);
    oCTransact(DMDados.TFBCadastro);
  end;
  oAviso(Handle,'CEAN Atualizado com Sucesso !');
end;

procedure TFrmPrincipal.ACTCFeSatExecute(Sender: TObject);
var
  Numero: String;
begin
  if oEmpty(RECParametros.SwHAssinatura) then
  oException(Nil,'Emissor de CFeSat não Disponível !');

  if Assigned(frmctr_ped) then
  Numero := frmctr_ped.cadastroROM_DERO.AsString else
  Numero := '0';

  FrmCFeSat := TFrmCFeSat.Create(Nil,Numero);
  try FrmCFeSat.ShowModal;
  finally FreeAndNil(FrmCFeSat);
  end;
end;

procedure TFrmPrincipal.ComposicaoClick(Sender: TObject);
          procedure MONTA_COMPOSICAO;
          var
            base,comp: string;
          begin
            base := '';
            comp := '';
            SBRodape.Hint := '';

            try
              cad_pro_com.DisableControls;
              cad_pro_com.First;
              while not cad_pro_com.Eof do
              begin
                if base <> cad_pro_comCOM_BASE.AsString then
                begin
                  base := cad_pro_comCOM_BASE.AsString;
                  if comp = '' then
                     comp := comp + cad_pro_comCOM_BASE.AsString+': '
                  else
                     comp := comp + '   '+cad_pro_comCOM_BASE.AsString+': ';
                end;

                comp := comp +' '+formatfloat('0.00',cad_pro_comCOM_QTDE.AsFloat)+'%'+' '+cad_pro_comCOM_COMP.AsString;
                cad_pro_com.Next;
              end;
            finally
              cad_pro_com.First;
              cad_pro_com.EnableControls;
            end;

            SBRodape.Hint := comp;
            if copy(SBRodape.Hint,1,1) = ' ' then
               SBRodape.Hint := copy(SBRodape.Hint,2,length(SBRodape.Hint));
            SBRodape.Hint := TRIM(copy(SBRodape.Hint,1,120));
          end;
begin
  try
    oOTransact(DMDados.TFBEdicao);
    oOTransact(DMDados.TFBCadastro);
    with DMDados do
    begin
      with QFBCadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT PRO_CART');
        SQL.Add('FROM   CAD_PRO');
        SQL.Add('WHERE  PRO_COMP IS NULL');
        SQL.Add('OR     PRO_COMP = ''''');
        SQL.Add('GROUP BY 1');
        Open;
      end;
      while not QFBCadastro.Eof do
      begin
        cad_pro_com.Close;
        cad_pro_com.Params[0].Value := QFBCadastro.Fields[0].AsString;
        cad_pro_com.Open;

        MONTA_COMPOSICAO;
        if not oEmpty(SBRodape.Hint) then
        with QFBEdicao do
        begin
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO');
          SQL.Add('SET    PRO_COMP = '''+SBRodape.Hint+'''');
          SQL.Add('WHERE  PRO_CART = '''+QFBCadastro.Fields[0].AsString+'''');
          ExecSQL;
        end;
        QFBCadastro.Next;
      end;
    end;
  finally
    oCTransact(DMDados.TFBEdicao);
    oCTransact(DMDados.TFBCadastro);
  end;
  SBRodape.Hint := '';
  oAviso(Handle,'Composições Atualizadas com Sucesso !');
end;

procedure TFrmPrincipal.actcad_cliExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmCAD_CLI,FrmCAD_CLI);
end;

procedure TFrmPrincipal.actcad_traExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmCAD_TRA,FrmCAD_TRA);
end;

procedure TFrmPrincipal.actcad_proExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmCAD_PRO,FrmCAD_PRO);
end;

procedure TFrmPrincipal.acttab_corExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmTAB_COR,FrmTAB_COR);
end;

procedure TFrmPrincipal.actctr_pedExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmCTR_PED,FrmCTR_PED);
end;

procedure TFrmPrincipal.actctr_romExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmCTR_ROM,FrmCTR_ROM);
end;

procedure TFrmPrincipal.actven_nfsExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmVEN_NFE,FrmVEN_NFE);
end;

procedure TFrmPrincipal.actctr_nfeExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmCTR_NFE,FrmCTR_NFE);
end;

procedure TFrmPrincipal.actfin_pag_pag_comExecute(Sender: TObject);
begin
  if frmpag_com = nil then
  begin
    Application.CreateForm (Tfrmpag_com, frmpag_com);

    if Screen.Width <= 1024 then
    begin
      frmpag_com.FormStyle := fsNormal;
      frmpag_com.Visible   := false;
      frmpag_com.ShowModal;
    end
    else
      frmpag_com.Show;
  end;

end;

end.

