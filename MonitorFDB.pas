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
    lblBuffers_v: TLabel;
    lblCurrentMemory_v: TLabel;
    lblEscritaForcada_v: TLabel;
    lblPaginacao_v: TLabel;
    lblODS_v: TLabel;
    tabBanco: TTabSheet;
    DBGrid3: TDBGrid;
    queryBanco: TIBQuery;
    dtsourceBanco: TDataSource;
    lblDataCriacao_v: TDBText;
    lblDataCriacao: TLabel;
    edtDellConexao: TEdit;
    btnDellConexao: TButton;
    btnCancelDellConexao: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText4: TDBText;
    tabSQL: TTabSheet;
    dtsourceSQL: TDataSource;
    DBGrid4: TDBGrid;
    querySQL: TIBQuery;
    Button1: TButton;
    tabScripts: TTabSheet;
    DBGrid5: TDBGrid;
    IBConfigService1: TIBConfigService;
    DBText5: TDBText;
    DBText6: TDBText;
    lblNomePc_v: TLabel;
    grpInfoBanco: TGroupBox;
    grpConBanco: TGroupBox;
    procedure FormCreate(Sender: TObject);
    procedure btnAtualizarGridsClick(Sender: TObject);
    procedure btnDellConexaoClick(Sender: TObject);
    procedure btnCancelDellConexaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonitor: TfrmMonitor;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmMonitor.btnAtualizarGridsClick(Sender: TObject);
  begin
  UDM.DataModule2.TRSConectaBanco.Rollback;
  queryConexoes.Active:=False;
  queryConexoes.Active:=True;
  queryTransacoes.Active:=False;
  queryTransacoes.Active:=True;
  queryBanco.Active:=False;
  queryBanco.Active:=True;
  end;

procedure TfrmMonitor.btnDellConexaoClick(Sender: TObject);
  begin
  queryTransacoes.SQL.Text :='delete from mon$attachments where mon$attachments.mon$attachment_id=:id_tran';
  queryTransacoes.ParamByName('id_tran').Value := StrToInt(edtDellConexao.Text);
  queryTransacoes.ExecSQL;
  end;

procedure TfrmMonitor.Button1Click(Sender: TObject);
  begin
  IBConfigService1.SweepDatabase;
  end;

procedure TfrmMonitor.btnCancelDellConexaoClick(Sender: TObject);
  begin
  edtDellConexao.Text := '';
  end;

procedure TfrmMonitor.FormCreate(Sender: TObject);

  begin
   lblFirebird_v.Caption := IBDatabaseInfo1.Version;
   //lblBanco_v.Caption := IBDatabaseInfo1.DBFileName;
   lblPaginacao_v.Caption := IntToStr(IBDatabaseInfo1.PageSize);
   lblODS_v.Caption := FloatToStr(IBDatabaseInfo1.FullODS);
   lblNomePc_v.Caption := IBDatabaseInfo1.DBSiteName;
   lblEscritaForcada_v.Caption := IntToStr(IBDatabaseInfo1.ForcedWrites);
   lblCurrentMemory_v.Caption := FloatToStr(IBDatabaseInfo1.CurrentMemory);
  //lblSweep_v.Caption := IntToStr(IBDatabaseInfo1.SweepInterval);
   lblBuffers_v.Caption := IntToStr(IBDatabaseInfo1.NumBuffers);
  end;

end.
