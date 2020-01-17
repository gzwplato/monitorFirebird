object frmMonitor: TfrmMonitor
  Left = 0
  Top = 0
  Caption = 'Monitor de Banco Firebird'
  ClientHeight = 534
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 8
    Top = 193
    Width = 794
    Height = 334
    ActivePage = tabSQL
    TabOrder = 0
    object tabBanco: TTabSheet
      Caption = 'Banco'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 780
        Height = 300
        Align = alClient
        DataSource = dtsourceBanco
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabConexoes: TTabSheet
      Caption = 'Conex'#245'es'
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 780
        Height = 300
        Align = alClient
        DataSource = dtsourceConexoes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabTransacoes: TTabSheet
      Caption = 'Transa'#231#245'es'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 780
        Height = 300
        Align = alClient
        DataSource = dtsourceTransacoes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabSQL: TTabSheet
      Caption = 'SQL'
      ImageIndex = 3
      object DBGrid4: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 780
        Height = 300
        Align = alClient
        DataSource = dtsourceSQL
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabScripts: TTabSheet
      Caption = 'Scripts'
      ImageIndex = 4
      object DBGrid5: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 780
        Height = 300
        Align = alClient
        DataSource = dtsourceScripts
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object btnAtualizarGrids: TButton
    Left = 343
    Top = 175
    Width = 82
    Height = 25
    Caption = 'Atualizar Abas'
    TabOrder = 1
    OnClick = btnAtualizarGridsClick
  end
  object Button1: TButton
    Left = 431
    Top = 175
    Width = 105
    Height = 25
    Caption = 'Executar Sweep'
    TabOrder = 2
    OnClick = Button1Click
  end
  object grpInfoBanco: TGroupBox
    Left = 8
    Top = 8
    Width = 417
    Height = 161
    Caption = 'Informa'#231#245'es do Banco'
    TabOrder = 3
    object dbtBanco: TDBText
      Left = 42
      Top = 22
      Width = 295
      Height = 12
      DataField = 'MON$DATABASE_NAME'
      DataSource = dtsourceBanco
    end
    object lblBanco: TLabel
      Left = 3
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Banco:'
    end
    object lblBuffers: TLabel
      Left = 227
      Top = 96
      Width = 66
      Height = 13
      Caption = 'Page buffers:'
    end
    object lblCurrentMemory: TLabel
      Left = 3
      Top = 115
      Width = 82
      Height = 13
      Caption = 'Current memory:'
    end
    object lblCurrentMemory_v: TLabel
      Left = 91
      Top = 115
      Width = 67
      Height = 13
      Caption = 'valor memoria'
    end
    object lblDataCriacao: TLabel
      Left = 3
      Top = 39
      Width = 66
      Height = 13
      Caption = 'Data Cria'#231#227'o:'
    end
    object dbtDataCriacao: TDBText
      Left = 75
      Top = 40
      Width = 105
      Height = 12
      DataField = 'MON$CREATION_DATE'
      DataSource = dtsourceBanco
    end
    object lblEscritaForcada: TLabel
      Left = 227
      Top = 115
      Width = 78
      Height = 13
      Caption = 'Escrita For'#231'ada:'
    end
    object lblFirebird: TLabel
      Left = 3
      Top = 77
      Width = 40
      Height = 13
      Caption = 'Firebird:'
    end
    object lblFirebird_v: TLabel
      Left = 49
      Top = 77
      Width = 61
      Height = 13
      Caption = 'valor firebird'
    end
    object lblNomePc: TLabel
      Left = 3
      Top = 58
      Width = 47
      Height = 13
      Caption = 'Nome PC:'
    end
    object lblNomePc_v: TLabel
      Left = 56
      Top = 58
      Width = 67
      Height = 13
      Caption = 'valor nome pc'
    end
    object lblODS: TLabel
      Left = 227
      Top = 77
      Width = 25
      Height = 13
      Caption = 'ODS:'
    end
    object lblPaginacao: TLabel
      Left = 3
      Top = 96
      Width = 50
      Height = 13
      Caption = 'Page Size:'
    end
    object lblSweep: TLabel
      Left = 3
      Top = 134
      Width = 93
      Height = 13
      Caption = 'Sweep Autom'#225'tico:'
    end
    object lblShutdown: TLabel
      Left = 227
      Top = 134
      Width = 52
      Height = 13
      Caption = 'Shutdown:'
    end
    object dbtShutdown: TDBText
      Left = 281
      Top = 134
      Width = 105
      Height = 12
      DataField = 'MON$SHUTDOWN_MODE'
      DataSource = dtsourceBanco
    end
    object dbtVlrBuffer: TDBText
      Left = 299
      Top = 96
      Width = 65
      Height = 17
      DataField = 'MON$PAGE_BUFFERS'
      DataSource = dtsourceBanco
    end
    object dbtForceWrites: TDBText
      Left = 311
      Top = 115
      Width = 65
      Height = 17
      DataField = 'MON$FORCED_WRITES'
      DataSource = dtsourceBanco
    end
    object dbtODS: TDBText
      Left = 258
      Top = 77
      Width = 65
      Height = 17
      DataField = 'MON$ODS_MAJOR'
      DataSource = dtsourceBanco
    end
    object dbtPageSize: TDBText
      Left = 59
      Top = 96
      Width = 65
      Height = 17
      DataField = 'MON$PAGE_SIZE'
      DataSource = dtsourceBanco
    end
    object dbtSweep: TDBText
      Left = 102
      Top = 134
      Width = 65
      Height = 17
      DataField = 'MON$SWEEP_INTERVAL'
      DataSource = dtsourceBanco
    end
  end
  object grpConBanco: TGroupBox
    Left = 431
    Top = 8
    Width = 367
    Height = 161
    Caption = 'Conex'#245'es e Transa'#231#245'es do banco'
    TabOrder = 4
    object dbtNextTrans: TDBText
      Left = 99
      Top = 21
      Width = 105
      Height = 11
      DataField = 'MON$NEXT_TRANSACTION'
      DataSource = dtsourceBanco
    end
    object dbtOldActive: TDBText
      Left = 99
      Top = 38
      Width = 105
      Height = 12
      DataField = 'MON$OLDEST_ACTIVE'
      DataSource = dtsourceBanco
    end
    object dbtOldTrans: TDBText
      Left = 99
      Top = 56
      Width = 64
      Height = 11
      DataField = 'MON$OLDEST_TRANSACTION'
      DataSource = dtsourceBanco
    end
    object Label2: TLabel
      Left = 3
      Top = 40
      Width = 64
      Height = 13
      Caption = 'Oldest Active'
    end
    object Label3: TLabel
      Left = 3
      Top = 56
      Width = 90
      Height = 13
      Caption = 'Oldest Transaction'
    end
    object Label4: TLabel
      Left = 3
      Top = 21
      Width = 82
      Height = 13
      Caption = 'Next Transaction'
    end
    object dbtCalcSweep: TDBText
      Left = 280
      Top = 39
      Width = 65
      Height = 17
      DataField = 'GC'
      DataSource = dtsourceSweep
    end
    object dbtCalcGC: TDBText
      Left = 280
      Top = 56
      Width = 65
      Height = 17
      DataField = 'GC'
      DataSource = dtsourceSweep
    end
    object dbtTopTrans: TDBText
      Left = 99
      Top = 73
      Width = 65
      Height = 17
      DataField = 'MON$TOP_TRANSACTION'
      DataSource = dtsourceSweep
    end
    object lblTopTrans: TLabel
      Left = 3
      Top = 75
      Width = 77
      Height = 13
      Caption = 'Top Transaction'
    end
    object lblCalcSweep: TLabel
      Left = 194
      Top = 38
      Width = 32
      Height = 13
      Caption = 'Sweep'
    end
    object lblGC: TLabel
      Left = 194
      Top = 56
      Width = 14
      Height = 13
      Caption = 'GC'
    end
    object dbtTotalConex: TDBText
      Left = 280
      Top = 21
      Width = 65
      Height = 17
      DataField = 'TOTAL_CONEXOES'
      DataSource = dtsourceConex
    end
    object lblTotalConex: TLabel
      Left = 191
      Top = 21
      Width = 75
      Height = 13
      Caption = 'Total Conex'#245'es'
    end
    object edtDellConexao: TEdit
      Left = 3
      Top = 131
      Width = 121
      Height = 21
      TabOrder = 0
      TextHint = 'Insira o id da conexao'
    end
    object btnDellConexao: TButton
      Left = 130
      Top = 129
      Width = 57
      Height = 25
      Caption = 'Deletar'
      TabOrder = 1
      OnClick = btnDellConexaoClick
    end
    object btnCancelDellConexao: TButton
      Left = 193
      Top = 129
      Width = 57
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelDellConexaoClick
    end
  end
  object IBDatabaseInfo1: TIBDatabaseInfo
    Database = DataModule2.ConectaBanco
    Left = 432
    Top = 256
  end
  object queryConexoes: TIBQuery
    Database = DataModule2.ConectaBanco
    Transaction = DataModule2.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from mon$attachments')
    Left = 432
    Top = 464
    object queryConexoesMONATTACHMENT_ID: TLargeintField
      FieldName = 'MON$ATTACHMENT_ID'
      Origin = '"MON$ATTACHMENTS"."MON$ATTACHMENT_ID"'
    end
    object queryConexoesMONSERVER_PID: TIntegerField
      FieldName = 'MON$SERVER_PID'
      Origin = '"MON$ATTACHMENTS"."MON$SERVER_PID"'
    end
    object queryConexoesMONSTATE: TSmallintField
      FieldName = 'MON$STATE'
      Origin = '"MON$ATTACHMENTS"."MON$STATE"'
    end
    object queryConexoesMONATTACHMENT_NAME: TIBStringField
      FieldName = 'MON$ATTACHMENT_NAME'
      Origin = '"MON$ATTACHMENTS"."MON$ATTACHMENT_NAME"'
      Size = 80
    end
    object queryConexoesMONUSER: TIBStringField
      FieldName = 'MON$USER'
      Origin = '"MON$ATTACHMENTS"."MON$USER"'
      FixedChar = True
      Size = 31
    end
    object queryConexoesMONROLE: TIBStringField
      FieldName = 'MON$ROLE'
      Origin = '"MON$ATTACHMENTS"."MON$ROLE"'
      FixedChar = True
      Size = 31
    end
    object queryConexoesMONREMOTE_PROTOCOL: TIBStringField
      FieldName = 'MON$REMOTE_PROTOCOL'
      Origin = '"MON$ATTACHMENTS"."MON$REMOTE_PROTOCOL"'
      Size = 10
    end
    object queryConexoesMONREMOTE_ADDRESS: TIBStringField
      FieldName = 'MON$REMOTE_ADDRESS'
      Origin = '"MON$ATTACHMENTS"."MON$REMOTE_ADDRESS"'
      Size = 255
    end
    object queryConexoesMONREMOTE_PID: TIntegerField
      FieldName = 'MON$REMOTE_PID'
      Origin = '"MON$ATTACHMENTS"."MON$REMOTE_PID"'
    end
    object queryConexoesMONCHARACTER_SET_ID: TSmallintField
      FieldName = 'MON$CHARACTER_SET_ID'
      Origin = '"MON$ATTACHMENTS"."MON$CHARACTER_SET_ID"'
    end
    object queryConexoesMONTIMESTAMP: TDateTimeField
      FieldName = 'MON$TIMESTAMP'
      Origin = '"MON$ATTACHMENTS"."MON$TIMESTAMP"'
    end
    object queryConexoesMONGARBAGE_COLLECTION: TSmallintField
      FieldName = 'MON$GARBAGE_COLLECTION'
      Origin = '"MON$ATTACHMENTS"."MON$GARBAGE_COLLECTION"'
    end
    object queryConexoesMONREMOTE_PROCESS: TIBStringField
      FieldName = 'MON$REMOTE_PROCESS'
      Origin = '"MON$ATTACHMENTS"."MON$REMOTE_PROCESS"'
      Size = 255
    end
    object queryConexoesMONSTAT_ID: TIntegerField
      FieldName = 'MON$STAT_ID'
      Origin = '"MON$ATTACHMENTS"."MON$STAT_ID"'
    end
    object queryConexoesMONCLIENT_VERSION: TIBStringField
      FieldName = 'MON$CLIENT_VERSION'
      Origin = '"MON$ATTACHMENTS"."MON$CLIENT_VERSION"'
      Size = 255
    end
    object queryConexoesMONREMOTE_VERSION: TIBStringField
      FieldName = 'MON$REMOTE_VERSION'
      Origin = '"MON$ATTACHMENTS"."MON$REMOTE_VERSION"'
      Size = 255
    end
    object queryConexoesMONREMOTE_HOST: TIBStringField
      FieldName = 'MON$REMOTE_HOST'
      Origin = '"MON$ATTACHMENTS"."MON$REMOTE_HOST"'
      Size = 255
    end
    object queryConexoesMONREMOTE_OS_USER: TIBStringField
      FieldName = 'MON$REMOTE_OS_USER'
      Origin = '"MON$ATTACHMENTS"."MON$REMOTE_OS_USER"'
      Size = 255
    end
    object queryConexoesMONAUTH_METHOD: TIBStringField
      FieldName = 'MON$AUTH_METHOD'
      Origin = '"MON$ATTACHMENTS"."MON$AUTH_METHOD"'
      Size = 255
    end
    object queryConexoesMONSYSTEM_FLAG: TSmallintField
      FieldName = 'MON$SYSTEM_FLAG'
      Origin = '"MON$ATTACHMENTS"."MON$SYSTEM_FLAG"'
      Required = True
    end
  end
  object dtsourceConexoes: TDataSource
    DataSet = queryConexoes
    Left = 520
    Top = 464
  end
  object dtsourceTransacoes: TDataSource
    DataSet = queryTransacoes
    Left = 528
    Top = 360
  end
  object queryTransacoes: TIBQuery
    Database = DataModule2.ConectaBanco
    Transaction = DataModule2.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from mon$transactions')
    Left = 432
    Top = 360
  end
  object queryBanco: TIBQuery
    Database = DataModule2.ConectaBanco
    Transaction = DataModule2.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *'
      ' from mon$database')
    Left = 436
    Top = 308
  end
  object dtsourceBanco: TDataSource
    DataSet = queryBanco
    Left = 524
    Top = 308
  end
  object dtsourceSQL: TDataSource
    DataSet = querySQL
    Left = 526
    Top = 408
  end
  object querySQL: TIBQuery
    Database = DataModule2.ConectaBanco
    Transaction = DataModule2.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from mon$statements')
    Left = 436
    Top = 409
  end
  object IBConfigService1: TIBConfigService
    TraceFlags = []
    ServerType = 'IBServer'
    Database = DataModule2.ConectaBanco
    Left = 524
    Top = 249
  end
  object queryScripts: TIBQuery
    Database = DataModule2.ConectaBanco
    Transaction = DataModule2.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '(select max(seq) from tbsghscr where tipo='#39'A'#39')AIH,'
      '(select max(seq) from tbsghscr where tipo='#39'B'#39')Ambulatorio,'
      '(select max(seq) from tbsghscr where tipo='#39'C'#39')Contabilidade,'
      '(select max(seq) from tbsghscr where tipo='#39'D'#39')Alteracao,'
      '(select max(seq) from tbsghscr where tipo='#39'E'#39')Plano,'
      '(select max(seq) from tbsghscr where tipo='#39'F'#39')FolhaPagamento,'
      '(select max(seq) from tbsghscr where tipo='#39'G'#39')PEP,'
      '(select max(seq) from tbsghscr where tipo='#39'H'#39')Hemoterapia,'
      '(select max(seq) from tbsghscr where tipo='#39'I'#39')Agendamento,'
      '(select max(seq) from tbsghscr where tipo='#39'J'#39')Esocial'
      'from rdb$database')
    Left = 628
    Top = 313
  end
  object dtsourceScripts: TDataSource
    DataSet = queryScripts
    Left = 700
    Top = 313
  end
  object querySweep: TIBQuery
    Database = DataModule2.ConectaBanco
    Transaction = DataModule2.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'x.mon$top_transaction,'
      'x.mon$oldest_active-x.mon$oldest_transaction as sweep,'
      
        '(select first 1 yy.mon$next_transaction from MON$DATABASE yy)-(s' +
        'elect first 1 yy.mon$oldest_active from MON$DATABASE yy) gc'
      'from mon$transactions x')
    Left = 624
    Top = 368
  end
  object dtsourceSweep: TDataSource
    DataSet = querySweep
    Left = 704
    Top = 368
  end
  object queryConex: TIBQuery
    Database = DataModule2.ConectaBanco
    Transaction = DataModule2.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select count(MON$STATE) as total_conexoes from MON$ATTACHMENTS')
    Left = 624
    Top = 424
  end
  object dtsourceConex: TDataSource
    DataSet = queryConex
    Left = 704
    Top = 416
  end
end
