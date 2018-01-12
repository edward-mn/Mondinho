unit DataModuleClientesVendas;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB,
  Datasnap.DBClient;

type
  TDmClienteVendas = class(TDataModule)
    frxDBDatasetVendas: TfrxDBDataset;
    frxReportVendas: TfrxReport;
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
    cdsVendasid_vendedor: TIntegerField;
    cdsVendasvendedor: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmClienteVendas: TDmClienteVendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
