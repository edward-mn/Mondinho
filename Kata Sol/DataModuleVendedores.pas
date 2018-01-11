unit DataModuleVendedores;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDmClienteVendedores = class(TDataModule)
    cdsVendedores: TClientDataSet;
    cdsVendedoresid_vendedor: TIntegerField;
    cdsVendedoresnome: TWideStringField;
    cdsVendedorescpf: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmClienteVendedores: TDmClienteVendedores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
