unit DataModuleConexao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.Provider, Data.DB,
  Data.SqlExpr, DbxDevartPostgreSQL;

type
  TdmConexao = class(TDataModule)
    sqlQuery: TSQLQuery;
    sqlConexao: TSQLConnection;
    sqlProvider: TDataSetProvider;
    sqlQueryid_todo: TIntegerField;
    sqlQuerynomes: TWideStringField;
    sqlQuerytarefas: TWideStringField;
    sqlQuerystatus: TWideStringField;
    sqlQuerydata: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
