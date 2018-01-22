unit TarefaUtils;

interface

uses
  System.SysUtils, System.DateUtils, UnitToDo, UnitEditarTarefas, UnitTarefas,
  DataModuleClientesTarefas;

const
  Status1 = '';
  Status2 = '';
  Status3 = '';
  Status4 = '';

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
    class function FiltroStatus(FiltroAtual: string;
  Status1: String; Status2: String = ''; Status3: String = '';
  Status4: String = ''): string;
    class procedure Filtrar(Status1: String; Status2: String = '';
    Status3: String = '';Status4: String = '');
  public
    Clientes: TDmClientesTarefas;

  end;

var
  FiltroTarefa: String;
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

class procedure TFuncoesToDo.Filtrar(Status1: String; Status2: String = '';Status3: String = '';Status4: String = '');
begin
  FiltroTarefa := TFuncoesToDo.FiltroStatus(FiltroTarefa,Status1,Status2,Status3,Status4);
end;

class function TFuncoesToDo.FiltroStatus(FiltroAtual: string;
  Status1: String; Status2: String = ''; Status3: String = '';
  Status4: String = ''): string;

  procedure AdicionarStatus(Box: String);
  begin
    if not Result.IsEmpty then
      Result := Result + Ou;

    Result := Result + Box;
  end;

begin
  Result := FiltroAtual;

  if (Status1 = StatusAtrasada) or (Status2 = StatusAtrasada) or
    (Status3 = StatusAtrasada) or (Status4 = StatusAtrasada) then
    AdicionarStatus(BoxAtrasada);

  if (Status1 = StatusAgendada) or (Status2 = StatusAgendada) or
    (Status3 = StatusAgendada) or (Status4 = StatusAgendada) then
    AdicionarStatus(BoxAgendada);

  if (Status1 = StatusAdiada) or (Status2 = StatusAdiada) or
    (Status3 = StatusAdiada) or (Status4 = StatusAdiada) then
    AdicionarStatus(BoxAdiada);

  if (Status1 = StatusFinalizada) or (Status2 = StatusFinalizada) or
    (Status3 = StatusFinalizada) or (Status4 = StatusFinalizada) then
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
