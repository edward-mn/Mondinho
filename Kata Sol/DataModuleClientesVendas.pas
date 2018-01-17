unit DataModuleClientesVendas;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB,
  Datasnap.DBClient;


type
  EValidationError = class(Exception)
  public
    FieldName: string;
    constructor Create(const msg :string; FieldName : string); overload;
end;

  TAoValidar = reference to procedure (const msg, FieldName : string);

  TDmClienteVendas = class(TDataModule)
    frxDBDatasetVendas: TfrxDBDataset;
    frxReportVendas: TfrxReport;
    cdsVendas: TClientDataSet;
    cdsVendasid_produtos: TIntegerField;
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
    procedure cdsVendasBeforePost(DataSet: TDataSet);
  private
    FAoValidar : TAoValidar;
//   procedure SetAoValidar(const Value: TAoValidar);
  public
//    property AoValidar: TAoValidar read FAoValidar write SetAoValidar;
end;

var
  DmClienteVendas: TDmClienteVendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TDmClienteVendas.cdsVendasBeforePost(DataSet: TDataSet);
begin
   if (cdsVendasstatus.Value.IsEmpty) then
    raise EValidationError.Create('Status é obrigatório.', cdsVendasstatus.FieldName);
  if (cdsVendasid_vendedor.IsNull) then
    raise EValidationError.Create('Vendedor é obrigatório.', cdsVendasid_vendedor.FieldName);
  if (cdsVendasfornecedores.Value.IsEmpty) then
    raise EValidationError.Create('Fornecedor é obrigatório.', cdsVendasfornecedores.FieldName);
  if (cdsVendasprodutos.Value.IsEmpty) then
    raise EValidationError.Create('Produto é obrigatório.', cdsVendasprodutos.FieldName);
   if (cdsVendasvalor_produto.IsNull) or (cdsVendasvalor_produto.Value <= 0) then
    raise EValidationError.Create('Valor do produto inválido.', cdsVendasvalor_produto.FieldName);
   if (cdsVendasquantidade.IsNull) or (cdsVendasquantidade.Value <= 0) then
    raise EValidationError.Create('Quantidade do produto inválida.', cdsVendasdata.FieldName);
 if (cdsVendasdata.IsNull) then
    raise EValidationError.Create('Data é obrigatória.', cdsVendasdata.FieldName);
end;


{ EValidationError }

constructor EValidationError.Create(const msg: string; FieldName: string);
begin
  inherited Create(Msg);
  Self.FieldName := FieldName;
end;

//procedure TDmClienteVendas.SetAoValidar(const Value: TAoValidar);
//begin
//  if Assigned(FAoValidar) then
//    raise
//
//  FAoValidar := Value;
//end;

end.
