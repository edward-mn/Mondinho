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
<<<<<<< HEAD
    cdsVendas: TClientDataSet;
    cdsVendasid_produtos: TIntegerField;
    cdsVendasprodutos: TWideStringField;
    cdsVendasvendedores: TWideStringField;
    cdsVendasstatus: TWideStringField;
    cdsVendasfornecedores: TWideStringField;
    cdsVendasvalor_produto: TFMTBCDField;
    cdsVendasquantidade: TIntegerField;
    cdsVendasvalor_total: TFMTBCDField;
    cdsVendasdata: TDateField;
=======
    cdsPessoas: TClientDataSet;
    cdsPessoasid_pessoas: TIntegerField;
    cdsPessoaspessoas: TWideStringField;
    cdsPessoascpf: TFMTBCDField;
    cdsPessoasendereco: TWideStringField;
    cdsPessoastelefone: TFMTBCDField;
    cdsPessoascelular: TFMTBCDField;
    cdsPessoasstatus: TWideStringField;
    cdsPessoasfornecedores: TWideStringField;
    cdsPessoasdata: TDateField;
>>>>>>> master
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
