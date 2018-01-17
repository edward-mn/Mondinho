unit DataModuleClientesPessoas;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB,
  Datasnap.DBClient;

type
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

end.
