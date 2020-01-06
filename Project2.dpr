program Project2;

uses
  Vcl.Forms,
  MonitorFDB in 'MonitorFDB.pas' {frmMonitor},
  UDM in 'UDM.pas' {DataModule2: TDataModule},
  Login in 'Login.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfrmMonitor, frmMonitor);
  Application.Run;
end.
