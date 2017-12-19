unit UnitToDoFuncoes;

interface

uses
  System.SysUtils, System.DateUtils;

type

  TFuncoesToDo = class
  class function OpcoesDeTarefas(Opcao : String) : String;
  class function StatusToDo(Status : String) : String;
  class function Calendario(Dia : TDateTime) : String;
  class function Tarefas(Tarefa : String) : String;
  class function FiltroStatus(StatusDoFiltro : String) : String;


  end;

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

class function TFuncoesToDo.FiltroStatus(StatusDoFiltro: String): String;
var
  Filtro : String;
const
  Ou = ' or ';
  BoxAdiada = 'Status = ''Adiada''';
  BoxAgendada = 'Status = ''Agendada''';
  BoxFinalizada = 'Status = ''Finalizada''';
  BoxAtrasada = 'Status = ''Atrasada''';

procedure AdicionarStatus(Box : String);
begin
  if not Filtro.IsEmpty then
    Filtro := Filtro + Ou;
    Filtro := Filtro + Box;
end;

begin
//  if StatusDoFiltro = 'Tudo' then
//  begin
//    AdicionarStatus(BoxAgendada + BoxAdiada + BoxFinalizada + BoxAtrasada);
//    Result := Filtro;
//  end;
  if StatusDoFiltro = 'Atrasada' then
  begin
    AdicionarStatus(BoxAtrasada);
    Result := Filtro
  end ;
  if StatusDoFiltro = 'Agendada' then
  begin
    AdicionarStatus(BoxAgendada);
    Result := Filtro
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
