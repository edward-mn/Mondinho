unit DataModuleClientes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, frxClass,
  frxDBSet;

type
  TDmClientes = class(TDataModule)
    cdsCadastro: TClientDataSet;
    cdsCadastroid: TIntegerField;
    cdsCadastronome_usuario: TWideStringField;
    cdsCadastrosenha: TWideStringField;
    cdsToDo: TClientDataSet;
    cdsToDoid_todo: TIntegerField;
    cdsToDonomes: TWideStringField;
    cdsToDotarefas: TWideStringField;
    cdsToDostatus: TWideStringField;
    cdsToDodata: TDateField;
    cdsToDoid_cadastro: TIntegerField;
    cdsVendas: TClientDataSet;
    cdsVendasid_produtos: TIntegerField;
    cdsVendasvendedores: TWideStringField;
    cdsVendasfornecedores: TWideStringField;
    cdsVendasstatus: TWideStringField;
    cdsVendasprodutos: TWideStringField;
    cdsVendasvalor_produto: TFMTBCDField;
    cdsVendasquantidade: TIntegerField;
    cdsVendasvalor_total: TFMTBCDField;
    cdsVendasdata: TDateField;
    cdsVendasid_cadastro: TIntegerField;
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
    frxDBDatasetVendas: TfrxDBDataset;
    frxDBDatasetToDo: TfrxDBDataset;
    frxDBDatasetPessoas: TfrxDBDataset;
    frxDBDatasetCadastro: TfrxDBDataset;
    frxReportCadastro: TfrxReport;
    frxReportVendas: TfrxReport;
    frxReportToDo: TfrxReport;
    frxReportPessoas: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmClientes: TDmClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
