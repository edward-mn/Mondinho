unit DataModuleVendasValorTotal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDmVendasValorTotal = class(TDataModule)
    cdsVendasValorTotal: TClientDataSet;
    cdsVendasValorTotalnome: TWideStringField;
    cdsVendasValorTotalprodutos: TWideStringField;
    cdsVendasValorTotalvalor_total: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmVendasValorTotal: TDmVendasValorTotal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
