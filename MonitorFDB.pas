unit MonitorFDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabaseInfo, Data.DB,
  Vcl.StdCtrls, IBX.IBSQLMonitor, IBX.IBDatabase, Vcl.Grids, Vcl.DBGrids,
  IBX.IBCSMonitor, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, IBX.IBExtract, IBX.IBServices;

type
  TfrmMonitor = class(TForm)
    IBDatabaseInfo1: TIBDatabaseInfo;
    lblFirebird: TLabel;
    lblBanco: TLabel;
    lblPaginacao: TLabel;
    lblODS: TLabel;
    lblNomePc: TLabel;
    lblCurrentMemory: TLabel;
    lblSweep: TLabel;
    lblBuffers: TLabel;
    queryConexoes: TIBQuery;
    dtsourceConexoes: TDataSource;
    DBGrid1: TDBGrid;
    queryConexoesMONATTACHMENT_ID: TLargeintField;
    queryConexoesMONSERVER_PID: TIntegerField;
    queryConexoesMONSTATE: TSmallintField;
    queryConexoesMONATTACHMENT_NAME: TIBStringField;
    queryConexoesMONUSER: TIBStringField;
    queryConexoesMONROLE: TIBStringField;
    queryConexoesMONREMOTE_PROTOCOL: TIBStringField;
    queryConexoesMONREMOTE_ADDRESS: TIBStringField;
    queryConexoesMONREMOTE_PID: TIntegerField;
    queryConexoesMONCHARACTER_SET_ID: TSmallintField;
    queryConexoesMONTIMESTAMP: TDateTimeField;
    queryConexoesMONGARBAGE_COLLECTION: TSmallintField;
    queryConexoesMONREMOTE_PROCESS: TIBStringField;
    queryConexoesMONSTAT_ID: TIntegerField;
    queryConexoesMONCLIENT_VERSION: TIBStringField;
    queryConexoesMONREMOTE_VERSION: TIBStringField;
    queryConexoesMONREMOTE_HOST: TIBStringField;
    queryConexoesMONREMOTE_OS_USER: TIBStringField;
    queryConexoesMONAUTH_METHOD: TIBStringField;
    queryConexoesMONSYSTEM_FLAG: TSmallintField;
    PageControl1: TPageControl;
    tabConexoes: TTabSheet;
    tabTransacoes: TTabSheet;
    dtsourceTransacoes: TDataSource;
    DBGrid2: TDBGrid;
    queryTransacoes: TIBQuery;
    btnAtualizarGrids: TButton;
    lblEscritaForcada: TLabel;
    lblFirebird_v: TLabel;
    lblCurrentMemory_v: TLabel;
    tabBanco: TTabSheet;
    DBGrid3: TDBGrid;
    queryBanco: TIBQuery;
    dtsourceBanco: TDataSource;
    dbtDataCriacao: TDBText;
    lblDataCriacao: TLabel;
    edtDellConexao: TEdit;
    btnDellConexao: TButton;
    btnCancelDellConexao: TButton;
    dbtShutdown: TDBText;
    dbtOldActive: TDBText;
    dbtOldTrans: TDBText;
    lblShutdown: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbtNextTrans: TDBText;
    tabSQL: TTabSheet;
    dtsourceSQL: TDataSource;
    DBGrid4: TDBGrid;
    querySQL: TIBQuery;
    Button1: TButton;
    tabScripts: TTabSheet;
    DBGrid5: TDBGrid;
    IBConfigService1: TIBConfigService;
    dbtBanco: TDBText;
    lblNomePc_v: TLabel;
    grpInfoBanco: TGroupBox;
    grpConBanco: TGroupBox;
    queryScripts: TIBQuery;
    dtsourceScripts: TDataSource;
    dbtVlrBuffer: TDBText;
    dbtForceWrites: TDBText;
    dbtODS: TDBText;
    dbtPageSize: TDBText;
    dbtSweep: TDBText;
    dbtCalcSweep: TDBText;
    querySweep: TIBQuery;
    dtsourceSweep: TDataSource;
    dbtCalcGC: TDBText;
    dbtTopTrans: TDBText;
    lblTopTrans: TLabel;
    lblCalcSweep: TLabel;
    lblGC: TLabel;
    queryConex: TIBQuery;
    dtsourceConex: TDataSource;
    dbtTotalConex: TDBText;
    lblTotalConex: TLabel;
    procedure btnAtualizarGridsClick(Sender: TObject);
    procedure btnDellConexaoClick(Sender: TObject);
    procedure btnCancelDellConexaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonitor: TfrmMonitor;

implementation

{$R *.dfm}

uses UDM, Login;

procedure TfrmMonitor.btnAtualizarGridsClick(Sender: TObject);
  begin
    UDM.DataModule2.TRSConectaBanco.Rollback;
    queryConexoes.Active:=False;
    queryConexoes.Active:=True;
    queryTransacoes.Active:=False;
    queryTransacoes.Active:=True;
    queryBanco.Active:=False;
    queryBanco.Active:=True;
    querySweep.Active:=False;
    querySweep.Active:=True;
    queryConex.Active:=False;
    queryConex.Active:=True;
    querySQL.Active:=False;
    querySQL.Active:=True;
    queryScripts.Active:=False;
    queryScripts.Active:=True;
  end;

procedure TfrmMonitor.btnDellConexaoClick(Sender: TObject);
  begin
    queryTransacoes.SQL.Text :='delete from mon$attachments where mon$attachments.mon$attachment_id=:id_tran';
    queryTransacoes.ParamByName('id_tran').Value := StrToInt(edtDellConexao.Text);
    queryTransacoes.ExecSQL;
  end;

procedure TfrmMonitor.Button1Click(Sender: TObject);
  begin
    IBConfigService1.Active := True;
    IBConfigService1.SweepDatabase;
  end;

procedure TfrmMonitor.btnCancelDellConexaoClick(Sender: TObject);
  begin
    edtDellConexao.Text := '';
  end;

procedure TfrmMonitor.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    frmLogin.Close;
  end;

procedure TfrmMonitor.FormShow(Sender: TObject);
  begin
    queryConexoes.Active:=True;
    queryTransacoes.Active:=True;
    queryBanco.Active:=True;
    querySQL.Active:=True;
    queryScripts.Active:=True;
    querySweep.Active:=True;
    queryConex.Active:=True;


    lblFirebird_v.Caption :=IBDatabaseInfo1.Version;
    lblNomePc_v.Caption := IBDatabaseInfo1.DBSiteName;
    lblCurrentMemory_v.Caption :=FloatToStr(IBDatabaseInfo1.CurrentMemory);
  end;

end.
