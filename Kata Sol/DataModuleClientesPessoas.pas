unit DataModuleClientesPessoas;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB,
  Datasnap.DBClient;

type
  TDmClientesPessoas = class(TDataModule)
    cdsPessoas: TClientDataSet;
    cdsPessoasid_pessoas: TIntegerField;
    cdsPessoaspessoas: TWideStringField;
    cdsPessoascpf: TFMTBCDField;
    cdsPessoasendereco: TWideStringField;
    cdsPessoastelefone: TFMTBCDField;
    cdsPessoascelular: TFMTBCDField;
    cdsPessoasstatus: TWideStringField;
    cdsPessoasdata: TDateField;
    cdsPessoasid_cadastro: TIntegerField;
    frxDBDatasetPessoas: TfrxDBDataset;
    frxReportPessoas: TfrxReport;
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
