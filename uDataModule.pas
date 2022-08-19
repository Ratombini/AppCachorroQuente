unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm = class(TDataModule)
    Connection: TFDConnection;
    FDQUsuario: TFDQuery;
    FDQUsuarioidusuario: TFDAutoIncField;
    FDQUsuariousuario: TStringField;
    FDQUsuariosenha: TStringField;
    FDQPessoa: TFDQuery;
    FDQProduto: TFDQuery;
    FDQPessoaid: TFDAutoIncField;
    FDQPessoanome: TStringField;
    FDQPessoacpf: TStringField;
    FDQPessoacelular: TStringField;
    FDQPessoacep: TStringField;
    FDQPessoaendereco: TStringField;
    FDQPessoacidade: TStringField;
    FDQPessoauf: TStringField;
    FDQPessoabairro: TStringField;
    FDQPessoaemail: TStringField;
    FDQPessoasenha: TStringField;
    FDQPessoaimg_usuario: TBlobField;
    FDQProdutoid: TFDAutoIncField;
    FDQProdutonome: TStringField;
    FDQProdutodescricao: TStringField;
    FDQProdutovalor: TBCDField;
    FDQProdutoquantidade: TIntegerField;
    FDQProdutoimg_produto: TBlobField;
    procedure ConnectionBeforeConnect(Sender: TObject);
    procedure ConnectionAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure Tdm.ConnectionAfterConnect(Sender: TObject);
var
  strSQL: string;
begin
  strSQL := 'create table IF NOT EXISTS pessoa(              '+//
            'id integer not null primary key autoincrement,  '+//
            'nome varchar(40),                               '+//
            'cpf varchar(11),                                '+//
            'celular varchar(13),                            '+//
            'cep varchar(10),                                '+//
            'endereco varchar(60),                           '+//
            'cidade varchar(60),                             '+//
            'uf char(2),                                     '+//
            'bairro varchar(60),                             '+//
            'email varchar(60),                              '+//
            'senha varchar(40),                              '+//
            'img_usuario blob)';
  Connection.ExecSQL(strSQL);

  strSQL := EmptyStr;
  strSQL := 'create table IF NOT EXISTS produto( '+//
            'id integer not null primary key autoincrement, '+//
            'nome varchar(20), '+//
            'descricao varchar(200), '+//
            'valor numeric(14,2), '+//
            'quantidade integer, '+//
            'img_produto blob) ';

  Connection.ExecSQL(strSQL);

  FDQPessoa.Active := true;
  FDQProduto.Active := true;
end;

procedure Tdm.ConnectionBeforeConnect(Sender: TObject);
var
  strPath: string;
begin
{$IF DEFINED(IOS) or DEFINED(ANDROID)}
  strPath := Sytem.IOUtils.TPath.Combine
  (System.IOUtils.tPath.GetDocumetsPath,
  'bancoDados.db');
  {$ENDIF}
  Connection.Params.Values['UseUnicode'] :='False';
  Connection.Params.Values['DATABASE'] := strPath;
end;

end.
