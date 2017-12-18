unit DataModuleClientes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDmClientes = class(TDataModule)
    cdsClientes: TClientDataSet;
    cdsClientesid_todo: TIntegerField;
    cdsClientesnomes: TWideStringField;
    cdsClientestarefas: TWideStringField;
    cdsClientesstatus: TWideStringField;
    cdsClientesdata: TDateField;
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
