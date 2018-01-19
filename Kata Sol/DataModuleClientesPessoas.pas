unit DataModuleClientesPessoas;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB,
  Datasnap.DBClient;

type
  EvalidationError = Class(exception)
public
  FieldName : String;
  constructor Create(const Msg: String; FieldName: String); overload;
 end;

  TDmClientesPessoas = class(TDataModule)
    frxDBDatasetPessoas: TfrxDBDataset;
    frxReportPessoas: TfrxReport;
    cdsPessoas: TClientDataSet;
    cdsPessoasid_pessoas: TIntegerField;
    cdsPessoaspessoas: TWideStringField;
    cdsPessoasendereco: TWideStringField;
    cdsPessoastelefone: TWideStringField;
    cdsPessoascelular: TWideStringField;
    cdsPessoasstatus: TWideStringField;
    cdsPessoascpf_cnpj: TWideStringField;
    cdsPessoasdata: TDateField;
    cdsPessoasid_cadastro: TIntegerField;
    procedure cdsPessoasBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmClientesPessoas: TDmClientesPessoas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ EvalidationError }

constructor EvalidationError.Create(const Msg: String; FieldName: String);
begin
  inherited Create(Msg);
  Self.FieldName := FieldName;
end;

procedure TDmClientesPessoas.cdsPessoasBeforePost(DataSet: TDataSet);
begin
  if (cdsPessoasstatus.Value.IsEmpty) then
    raise EvalidationError.Create('Campo status é obrigatório', cdsPessoasstatus.FieldName);
  if (cdsPessoaspessoas.Value.IsEmpty) then
    raise EvalidationError.Create('Campo nome é obrigatório', cdsPessoaspessoas.FieldName);
  if (cdsPessoasendereco.Value.IsEmpty) then
    raise EvalidationError.Create('Campo endereço é obrigatório', cdsPessoasendereco.FieldName);
  if (cdsPessoastelefone.Value.IsEmpty) then
    raise EvalidationError.Create('Campo telefone é obrigatório', cdsPessoastelefone.FieldName);
  if (cdsPessoascelular.Value.IsEmpty) then
    raise EvalidationError.Create('Campo celular é obrigatório', cdsPessoascelular.FieldName);
  if (cdsPessoascpf_cnpj.Value.IsEmpty) then
    raise EvalidationError.Create('Campo CPF/CNPJ é obrigatório', cdsPessoascpf_cnpj.FieldName);
  if (cdsPessoasdata.IsNull) then
    raise EvalidationError.Create('Campo data é obrigatório', cdsPessoasdata.FieldName);
end;

end.
