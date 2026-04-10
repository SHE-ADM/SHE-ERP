unit pLogin;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxEditor,
  RXCtrls, Registry, IBTable;

type
  TFrmLogin = class(TForm)
    PNLPrincipal: TPanel;
    PNLLogin: TPanel;
    LAUsuario: TLabel;
    LANome: TLabel;
    LASenha: TLabel;
    EDUsuario: TdxEdit;
    EDNome: TdxEdit;
    EDSenha: TdxEdit;

    PNLTitulo: TPanel;
    IPrincipal: TImage;
    TCadastro: TIBTransaction;
    IEEmpresa: TdxImageEdit;
    LAEmpresa: TLabel;
    QConsulta: TIBQuery;
    LATitulo: TLabel;
    CAD_USU: TIBQuery;
    SBRodape: TdxStatusBar;
    TTempo: TTimer;
    RSBLogin: TRxSpeedButton;
    RSBLogout: TRxSpeedButton;
    CAD_USUID: TIntegerField;
    CAD_USUUSU_DCAD: TDateField;
    CAD_USUUSU_DULT: TDateTimeField;
    CAD_USUUSU_CUSU: TIntegerField;
    CAD_USUUSU_DUSU: TIBStringField;
    CAD_USUUSU_NOME: TIBStringField;
    CAD_USUUSU_CDEP: TIntegerField;
    CAD_USUUSU_DIAS: TSmallintField;
    CAD_USUUSU_PASS: TIBStringField;
    CAD_USUUSU_ADM: TIBStringField;
    CAD_USUUSU_STA: TIBStringField;
    CAD_USUUSU_PPRI: TIBStringField;
    CAD_USUUSU_PSEC: TIBStringField;
    CAD_USUUSU_MENU: TIBStringField;
    CAD_USUUSU_TUSU: TSmallintField;
    CAD_USUUSU_STAV: TIBStringField;
    CAD_USUUSU_DESC: TSmallintField;
    CAD_USUUSU_RELA: TIBStringField;
    CAD_USUUSU_IDFILIAL: TIntegerField;
    CAD_USUUSU_DEFILIAL: TIBStringField;
    CAD_USUUSU_DEEP: TIBStringField;
    CAD_USUUSU_IDEP: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EDUsuarioValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure CAD_USUAfterOpen(DataSet: TDataSet);
    procedure EDSenhaValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure TTempoTimer(Sender: TObject);
    procedure EDSenhaChange(Sender: TObject);
    procedure RSBLoginClick(Sender: TObject);
    procedure RSBLogoutClick(Sender: TObject);
    procedure CAD_USUBeforeOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QConsultaAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
    procedure _PSQUsuarios;
  public
    { Public declarations }
    RECLogin: TRECUsuarios;
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  SBRodape.Panels[0].Text := oRETDataExtenso(Date)+', '+oStrZero(oRETDia(Date),2)+' de '+oRETMesExtenso(Date)+' de '+oStrZero(oRETAno(Date),4)+'.';

  Initialize(RECLogin);
  FillChar(RECLogin,SizeOf(RECLogin),0);

  oOTransact(TCadastro);
  with QConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   ID || '' - '' || PAR_FANT FROM PAR_SIS');
    SQL.Add('ORDER BY ID');
    Open;
    while not eof do
    begin
      IEEmpresa.Values.Add(fields[0].AsString);
      IEEmpresa.Descriptions.Add(fields[0].AsString);
      Next;
    end;
  end;
end;

procedure TFrmLogin.FormActivate(Sender: TObject);
begin                                                       
  OnActivate := Nil;
  Screen.Cursor := crDefault;

  oRegister_Import_Usuario(RECLogin);
  EDUsuario.Text := RECLogin.Login;

  _PSQUsuarios;
end;

procedure TFrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
          Type RECPSQSenha = record
               BRet: Boolean;
               SRet: String;
          End;
          function _PSQSenha: RECPSQSenha;
          begin
            result.BRet := False;
            if EDSenha.Text = '' then
            result.SRet := 'Senha não Informada !' else
            if Length(EDSenha.Text) > 15 then
            result.SRet := 'Senha Incorreta !'+#13+#13+
                           'Senha ultrapassa o limite máximo de caracteres permitido !'+#13+
                           '15 Caracteres (letras, números ou ambos).' else
            if EDSenha.Text <> CAD_USUUSU_PASS.AsString then
            result.SRet := 'Senha Incorreta !'+#13+#13+
                           'Atenção às teclas "Caps Lock" e "Shift".'+#13+
                           'SISTEMA diferencia letras maiúsculas de minúsculas.' else
            result.Bret := True;
          end;
begin
  if RECLogin.Selected then
  begin
    if oEmpty(EDUsuario.Text) then
       oException(EDUsuario,'Usuário não Informado !');

    if oEmpty(IEEmpresa.Text) then
       oException(IEEmpresa,'Empresa não Informada !');

    if oEmpty(EDSenha.Text) then
       oException(EDSenha,'Senha não Informada !');

    if oEmpty(CAD_USUUSU_DUSU.AsString) then
       oException(EDUsuario,'Usuário não Encontrado !');

    if CAD_USUUSU_STAV.AsString <> 'A' then
       oException(EDUsuario,'Login não Autorizado !'+#13+
                            'Usuário Inativo !');

    if not _PSQSenha.BRet then
    begin
      EDSenha.Text := '';
      oException(EDSenha,PChar(_PSQSenha.SRet));
    end;  
  end;

  RECLogin.Id    := IFThen(RECLogin.Selected,CAD_USUId.AsString             ,'');
  RECLogin.IDEP  := IFThen(RECLogin.Selected,Trim(Copy(IEEmpresa.Text,01,02)),'');
  RECLogin.DEEP  := IFThen(RECLogin.Selected,Trim(Copy(IEEmpresa.Text,05,60)),'');
  RECLogin.Login := IFThen(RECLogin.Selected,CAD_USUUSU_DUSU.AsString          ,'');
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  FrmLogin      := Nil;

  Finalize(RECLogin);
  FillChar(RECLogin,SizeOf(RECLogin),0);

  oFTransact(TCadastro);
end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: RSBLogout.Click;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure TFrmLogin.RSBLoginClick(Sender: TObject);
begin
  if not oEmpty(EDSenha.Text) then
  begin
    RECLogin.Selected := True;
    Close;
  end;
end;

procedure TFrmLogin.RSBLogoutClick(Sender: TObject);
begin
  RECLogin.Selected := False;
  Close;
end;

procedure TFrmLogin.CAD_USUAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor  := crDefault;
  TTempo.Enabled := True;

  EDNome.Text := CAD_USUUSU_NOME.AsString;

  IEEmpresa.Enabled := (CAD_USUUSU_CDEP.AsString = '99');
  IEEmpresa.Text    :=  CAD_USUUSU_IDEP.AsString + ' - ' + CAD_USUUSU_DEEP.AsString;

  EDSenha.MaxLength := Length(CAD_USUUSU_PASS.AsString);
  EDSenha.Enabled   := True;

  if oEmpty(CAD_USUUSU_NOME.AsString) then
  EDUsuario.SetFocus else
  EDSenha.SetFocus
end;

procedure TFrmLogin.CAD_USUBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor  := crAppStart;
  TTempo.Enabled := False;
end;

procedure TFrmLogin.EDUsuarioValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  _PSQUsuarios;
end;

procedure TFrmLogin.EDSenhaChange(Sender: TObject);
begin
  if Length(EDSenha.Text) = EDSenha.MaxLength then
     EDSenha.ValidateEdit;
end;

procedure TFrmLogin.EDSenhaValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  RSBLogin.Click;
end;

procedure TFrmLogin.TTempoTimer(Sender: TObject);
begin
  SBRodape.Panels[1].Text := FormatDateTime('hh:mm:ss',Now);
end;

procedure TFrmLogin._PSQUsuarios;
begin
  with CAD_USU do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.*,EP.ID AS USU_IDEP,EP.PAR_FANT AS USU_DEEP');
    SQL.Add('FROM   CAD_USU AS PK');
    SQL.Add('JOIN   PAR_SIS AS EP ON (EP.ID = PK.USU_CDEP)');
    SQL.Add('WHERE  PK.USU_DUSU = ''' + EDUsuario.Text + '''');
    Open;
  end;
end;

procedure TFrmLogin.QConsultaAfterClose(DataSet: TDataSet);
begin
  QConsulta.Tag := 99;
end;

end.

