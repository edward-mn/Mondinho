unit DataModuleClientes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDmClientes = class(TDataModule)
    cdsToDo: TClientDataSet;
    cdsToDoid_todo: TIntegerField;
    cdsToDonomes: TWideStringField;
    cdsToDotarefas: TWideStringField;
    cdsToDostatus: TWideStringField;
    cdsToDodata: TDateField;
    cdsPessoas: TClientDataSet;
    cdsPessoasid_pessoas: TIntegerField;
    cdsPessoaspessoas: TWideStringField;
    cdsPessoascpf: TFMTBCDField;
    cdsPessoasendereco: TWideStringField;
    cdsPessoastelefone: TFMTBCDField;
    cdsPessoascelular: TFMTBCDField;
    cdsPessoasstatus: TWideStringField;
    cdsPessoasdata: TDateField;
    cdsCadastro: TClientDataSet;
    cdsCadastroid: TIntegerField;
    cdsCadastronome_usuario: TWideStringField;
    cdsCadastrosenha: TWideStringField;
    cdsVendas: TClientDataSet;
    cdsVendasid_produtos: TIntegerField;
    cdsVendasvendedores: TWideStringField;
    cdsVendasstatus: TWideStringField;
    cdsVendasprodutos: TWideStringField;
    cdsVendasvalor_produto: TFMTBCDField;
    cdsVendasquantidade: TIntegerField;
    cdsVendasvalor_total: TFMTBCDField;
    cdsVendasdata: TDateField;
    cdsVendasfornecedores: TWideStringField;
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
