object DM: TDM
  OldCreateOrder = False
  Height = 336
  Width = 422
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'E:\git\ProjetoProgComercial\BD_COMERCIAL.FDB'
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
  object qryProd_Venda: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 288
    Top = 112
  end
  object qryFornecedor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 64
    Top = 256
  end
  object qryContasReceber: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 152
    Top = 256
  end
  object IBTCliente: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    TableName = 'CLIENTE'
    Left = 232
    Top = 248
    object IBTClienteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object IBTClienteCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Size = 200
    end
    object IBTClienteCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Size = 150
    end
    object IBTClienteCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
    end
    object IBTClienteCLI_TELEFONE: TIBStringField
      FieldName = 'CLI_TELEFONE'
    end
    object IBTClienteCLI_CELULAR: TIBStringField
      FieldName = 'CLI_CELULAR'
      Size = 100
    end
    object IBTClienteCLI_TIME: TIBStringField
      FieldName = 'CLI_TIME'
      Size = 100
    end
    object IBTClienteCLI_RELIGIAO: TIBStringField
      FieldName = 'CLI_RELIGIAO'
      Size = 100
    end
    object IBTClienteCLI_SEXO: TIntegerField
      FieldName = 'CLI_SEXO'
    end
    object IBTClienteCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object IBTClienteCLI_ESTCIVIL: TIntegerField
      FieldName = 'CLI_ESTCIVIL'
    end
    object IBTClienteCLI_DATANASC: TDateField
      FieldName = 'CLI_DATANASC'
    end
  end
  object IBTProduto: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    TableName = 'PRODUTO'
    Left = 296
    Top = 248
  end
  object IBTVenda: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    FieldDefs = <
      item
        Name = 'VEN_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'VEN_DATA'
        DataType = ftDate
      end
      item
        Name = 'VEN_TOTAL'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'VENDA'
    Left = 368
    Top = 248
    object IBTVendaVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object IBTVendaVEN_DATA: TDateField
      FieldName = 'VEN_DATA'
    end
    object IBTVendaVEN_TOTAL: TFloatField
      FieldName = 'VEN_TOTAL'
    end
  end
  object IBTContasReceber: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    TableName = 'CONTASRECEBER'
    Left = 224
    Top = 56
    object IBTContasReceberCONTREC_COD: TIntegerField
      FieldName = 'CONTREC_COD'
    end
    object IBTContasReceberCONTREC_NPARC: TIntegerField
      FieldName = 'CONTREC_NPARC'
    end
    object IBTContasReceberCONTRECVEN_COD: TIntegerField
      FieldName = 'CONTRECVEN_COD'
    end
    object IBTContasReceberCONTREC_VALOR: TFloatField
      FieldName = 'CONTREC_VALOR'
    end
    object IBTContasReceberCONTREC_STATUS: TIntegerField
      FieldName = 'CONTREC_STATUS'
    end
    object IBTContasReceberCONTREC_DATAVENC: TDateField
      FieldName = 'CONTREC_DATAVENC'
    end
    object IBTContasReceberCONTREC_DATAPAG: TDateField
      FieldName = 'CONTREC_DATAPAG'
    end
    object IBTContasReceberCONTREC_CODCLIENTE: TIntegerField
      FieldName = 'CONTREC_CODCLIENTE'
    end
  end
end
