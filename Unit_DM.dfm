object DM: TDM
  OldCreateOrder = False
  Height = 336
  Width = 422
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'E:\Prog_Comercial\BD_COMERCIAL.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 64
    Top = 56
  end
  object IBTransaction1: TIBTransaction
    Left = 136
    Top = 56
  end
  object qryCliente: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 64
    Top = 112
  end
  object qryCommit: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 136
    Top = 112
  end
  object qryAux: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 200
    Top = 112
  end
  object qryEmpresa: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 64
    Top = 168
  end
  object qryProduto: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 136
    Top = 176
  end
  object qryGrupoProd: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 208
    Top = 176
  end
  object qrySubGrupoProd: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 296
    Top = 176
  end
end
