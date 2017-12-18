unit UnitToDoFuncoes;

interface

uses
  System.SysUtils, System.DateUtils;

type

  TFuncoesToDo = class
  class function OpcoesDeTarefas(Opcao : String) : String;
  class function StatusToDo(Status : String) : String;
  class function Calendario(Dia : TDateTime) : String;


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

end.
