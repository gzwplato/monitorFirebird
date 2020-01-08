unit UDM;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IBX.IBDatabaseINI,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    ConectaBanco: TIBDatabase;
    TRSConectaBanco: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
