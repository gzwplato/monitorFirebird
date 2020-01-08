object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 373
  Width = 528
  object ConectaBanco: TIBDatabase
    DatabaseName = '@'
    Params.Strings = (
      'user_name='
      'password=')
    LoginPrompt = False
    DefaultTransaction = TRSConectaBanco
    ServerType = 'IBServer'
    Left = 240
    Top = 112
  end
  object TRSConectaBanco: TIBTransaction
    DefaultDatabase = ConectaBanco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 144
    Top = 112
  end
end
