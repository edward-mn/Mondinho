unit DataModuleVendasQuantidade;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDmVendasQuantidade = class(TDataModule)
    cdsVendasQuantidade: TClientDataSet;
    cdsVendasQuantidadenome: TWideStringField;
    cdsVendasQuantidadeprodutos: TWideStringField;
    cdsVendasQuantidadequantidade: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmVendasQuantidade: TDmVendasQuantidade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
