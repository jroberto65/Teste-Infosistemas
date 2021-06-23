object fDataAcesso: TfDataAcesso
  OldCreateOrder = False
  Height = 221
  Width = 228
  object SQLDataSet1: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = fDataModulo.Conexao
    Left = 48
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspclientes'
    Left = 48
    Top = 104
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUMERO'
    end
    object StringField3: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField4: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'FONE'
      Size = 15
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 48
    Top = 56
  end
end
