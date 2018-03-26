object DM: TDM
  OldCreateOrder = False
  Height = 691
  Width = 773
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Projeto\ProjetoProgComercial\BD_COMERCIAL.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 288
    Top = 144
  end
  object IBTransaction1: TIBTransaction
    Active = True
    Left = 360
    Top = 144
  end
  object qryCliente: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 432
    Top = 144
  end
end
