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
    procedure AtrasarTarefas;
  end;

var
  DmClientesTarefas: TDmClientesTarefas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmClientesTarefas }

procedure TDmClientesTarefas.AtrasarTarefas;
var
  BookMarkAtrazar: TBookmark;
begin
  try
    BookMarkAtrazar := cdsToDodata.DataSet.GetBookmark;

    cdsToDostatus.DataSet.First;
    while not cdsToDostatus.DataSet.Eof do
    begin
      cdsToDo.Edit;
      if (Now > cdsToDodata.Value) and (cdsToDostatus.text <> 'Finalizada') then
        cdsToDostatus.text := 'Atrasada';
     cdsToDostatus.DataSet.Next;
    end;
   cdsToDo.ApplyUpdates(0);
  finally
    cdsToDostatus.DataSet.GotoBookmark(BookMarkAtrazar);
  end;

end;
end.
