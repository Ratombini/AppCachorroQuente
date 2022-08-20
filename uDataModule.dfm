object dm: Tdm
  OldCreateOrder = False
  Height = 376
  Width = 419
  object Connection: TFDConnection
    Params.Strings = (
      'Database=C:\projetodogao\DataBase\data.db'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = ConnectionAfterConnect
    BeforeConnect = ConnectionBeforeConnect
    Left = 24
    Top = 8
  end
  object FDQUsuario: TFDQuery
    IndexesActive = False
    Connection = Connection
    SQL.Strings = (
      'select * from usuario')
    Left = 96
    Top = 8
    object FDQUsuarioidusuario: TFDAutoIncField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQUsuariousuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 40
    end
    object FDQUsuariosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 40
    end
  end
  object FDQPessoa: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from pessoa')
    Left = 232
    Top = 8
    object FDQPessoaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQPessoanome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object FDQPessoacpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 11
    end
    object FDQPessoacelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Size = 13
    end
    object FDQPessoacep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object FDQPessoaendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object FDQPessoacidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 60
    end
    object FDQPessoauf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object FDQPessoabairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 60
    end
    object FDQPessoaemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDQPessoasenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 40
    end
    object FDQPessoaimg_usuario: TBlobField
      FieldName = 'img_usuario'
      Origin = 'img_usuario'
    end
  end
  object FDQProduto: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from produto')
    Left = 160
    Top = 8
    object FDQProdutoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQProdutonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
    end
    object FDQProdutodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
    object FDQProdutovalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 14
      Size = 2
    end
    object FDQProdutoquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object FDQProdutoimg_produto: TBlobField
      FieldName = 'img_produto'
      Origin = 'img_produto'
    end
  end
end
