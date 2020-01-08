unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IBX.IBDatabaseINI;

type
  TfrmLogin = class(TForm)
    btnConectar: TButton;
    lblBanco: TLabel;
    lblPass: TLabel;
    lblUser: TLabel;
    btnCancelar: TButton;
    edtCaminhoBanco: TEdit;
    edtUser: TEdit;
    edtPassword: TEdit;
    procedure btnConectarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses MonitorFDB, UDM;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
  begin
  edtCaminhoBanco.Text :='';
  edtUser.Text :='';
  edtPassword.Text :='';
  end;

procedure TfrmLogin.btnConectarClick(Sender: TObject);
begin

  UDM.DataModule2.ConectaBanco.DatabaseName := edtCaminhoBanco.Text;
  UDM.DataModule2.ConectaBanco.Params.Values['user_name'] := edtUser.Text;
  udm.DataModule2.ConectaBanco.Params.Values['password'] := edtPassword.Text;
  udm.DataModule2.ConectaBanco.LoginPrompt := False;
  UDM.DataModule2.ConectaBanco.Connected := True;
  udm.DataModule2.TRSConectaBanco.Active := True;
  frmMonitor.ShowModal;
end;

end.
