unit UnitToDoFuncoes;

interface

uses
  System.SysUtils, System.DateUtils, UnitToDo, UnitEditarTarefas, UnitTarefas,
  DataModuleClientes;

type

  TFuncoesToDo = class
    class function OpcoesDeTarefas(Opcao : String) : String;
    class function StatusToDo(Status : String) : String;
    class function Calendario(Dia : TDateTime) : String;
    class function Tarefas(Tarefa : String) : String;
    class function FiltroStatus(StatusDoFiltro: String): Variant;
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

class function TFuncoesToDo.FiltroStatus(StatusDoFiltro: String): Variant;
  procedure AdicionarStatus(Box: String);
  begin
    if not Filtro.IsEmpty then
      Filtro := Filtro + Ou;
    Filtro := Filtro + Box;
  end;

begin
  if StatusDoFiltro = 'Tudo' then
  begin
    AdicionarStatus(BoxAdiada + Ou + BoxAgendada + Ou + BoxFinalizada + Ou +
      BoxAtrasada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'Atrasada' then
  begin
    AdicionarStatus(BoxAtrasada);
    Result := Filtro;

  end;
  if StatusDoFiltro = 'Agendada' then
  begin
    AdicionarStatus(BoxAgendada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'Adiada' then
  begin
    AdicionarStatus(BoxAdiada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'Finalizada' then
  begin
    AdicionarStatus(BoxFinalizada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'FinalizadaEAdiada' then
  begin
    AdicionarStatus(BoxFinalizada + Ou + BoxAdiada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'FinalizadaEAtrasada' then
  begin
    AdicionarStatus(BoxFinalizada + Ou + BoxAdiada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'FinalizadaEAgendada' then
  begin
    AdicionarStatus(BoxFinalizada + Ou + BoxAgendada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'FinalizadaEAdiadaEAtrasada' then
  begin
    AdicionarStatus(BoxFinalizada + Ou + BoxAdiada + Ou + BoxAtrasada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'FinalizadaEAdiadaEAgendada' then
  begin
    AdicionarStatus(BoxFinalizada + Ou + BoxAdiada + Ou + BoxAgendada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'FinalizadaEAtrasadaEAgendada' then
  begin
    AdicionarStatus(BoxFinalizada + Ou + BoxAtrasada + Ou + BoxAgendada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'AdiadaEAtrasada' then
  begin
    AdicionarStatus(BoxAdiada + Ou + BoxAtrasada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'AdiadaEAgendada' then
  begin
    AdicionarStatus(BoxAdiada + Ou + BoxAgendada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'AdiadaEAtrasadaEAgendada' then
  begin
    AdicionarStatus(BoxAdiada + Ou + BoxAtrasada + Ou + BoxAgendada);
    Result := Filtro;
  end;

  if StatusDoFiltro = 'AgendadaEAtrasada' then
  begin
    AdicionarStatus(BoxAgendada + Ou + BoxAtrasada);
    Result := Filtro;
  end;

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
