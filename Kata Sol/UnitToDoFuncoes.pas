unit UnitToDoFuncoes;

interface

uses
  System.SysUtils, System.DateUtils, UnitToDo, UnitEditarTarefas, UnitTarefas,
  DataModuleClientes;

const
  StatusFinalizada = 'Finalizada';
  StatusAdiada = 'Adiada';
  StatusAgendada = 'Agendada';
  StatusAtrasada = 'Atrasada';

type

  TFuncoesToDo = class
    class function OpcoesDeTarefas(Opcao : String) : String;
    class function StatusToDo(Status : String) : String;
    class function Calendario(Dia : TDateTime) : String;
    class function Tarefas(Tarefa : String) : String;
    class function FiltroStatus(const FiltroAtual: string; StatusDoFiltro: String):
        string;
  public
    Clientes: TDMClientes;


  end;

var
  Filtro: String;
  TTarefas: TFormTarefas;

const
  Ou = ' or ';
  BoxAdiada = 'Status = ''Adiada''';
  BoxAgendada = 'Status = ''Agendada''';
  BoxFinalizada = 'Status = ''Finalizada''';
  BoxAtrasada = 'Status = ''Atrasada''';

implementation

{ TtesteToDo }

class function TFuncoesToDo.Calendario(Dia: TDateTime): String;
begin
  if Dia >= Now then
  begin
    if Dia = Now then
      Result := 'Hoje'
    else if Dia = Tomorrow then
      Result := 'Amanha'
  end
  else
    Result := 'DataInvalida';
end;

class function TFuncoesToDo.FiltroStatus(const FiltroAtual: string;
    StatusDoFiltro: String): string;

  procedure AdicionarStatus(Box: String);
  begin
    if not Result.IsEmpty then
      Result := Result + Ou;

    Result := Result + Box;
  end;

begin
  Result := FiltroAtual;

  if StatusDoFiltro = StatusAtrasada then
    AdicionarStatus(BoxAtrasada);

  if StatusDoFiltro = StatusAgendada then
    AdicionarStatus(BoxAgendada);

  if StatusDoFiltro = StatusAdiada then
    AdicionarStatus(BoxAdiada);

  if StatusDoFiltro = StatusFinalizada then
    AdicionarStatus(BoxFinalizada);

end;

class function TFuncoesToDo.OpcoesDeTarefas(Opcao: String): String;
begin
  if Opcao = 'Atualizar' then
    Result := 'TarefasAtualizadas'
  else if Opcao = 'Criar' then
    Result := 'TarefaCriada'
  else if Opcao = 'Deletar' then
    Result := 'TarefaDeletada';
end;

class function TFuncoesToDo.StatusToDo(Status: String): String;
begin
  if Status = 'NaoNulo' then
    Result := ''
  else if Status = 'Adiar' then
    Result := 'StatusAdiado'
  else if Status = 'Agendar' then
    Result := 'StatusAgendado'
  else if Status = 'Atrasar' then
    Result := 'StatusAtrasado'
  else if Status = 'Finalizar' then
    Result := 'StatusFinalizado'
  else if Status = 'Outro' then
    Result := 'StatusOutro';
end;

class function TFuncoesToDo.Tarefas(Tarefa: String): String;
begin
  if Tarefa = 'NaoNulo' then
    Result := ''
  else if Tarefa = '' then
    Result := 'Texto';

end;

end.
