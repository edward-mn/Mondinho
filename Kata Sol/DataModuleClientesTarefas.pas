unit DataModuleClientesTarefas;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB,
  Datasnap.DBClient;

type
  TDmClientesTarefas = class(TDataModule)
    cdsToDo: TClientDataSet;
    cdsToDoid_todo: TIntegerField;
    cdsToDonomes: TWideStringField;
    cdsToDotarefas: TWideStringField;
    cdsToDostatus: TWideStringField;
    cdsToDodata: TDateField;
    cdsToDoid_cadastro: TIntegerField;
    frxDBDatasetToDo: TfrxDBDataset;
    frxReportToDo: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmClientesTarefas: TDmClientesTarefas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
