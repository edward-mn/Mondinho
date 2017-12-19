unit TestUnitToDoPrincipal;

interface

uses
  TestFramework, System.SysUtils;

type
  TTestToDo = class(TTestCase)
  published
   procedure TelaInicial_CriarTarefa_TarefaCriada;
   procedure TelaInicial_DeletarTarefa_TarefaDeletada;
   procedure TelaInicial_AtualizarTarefa_TarefasAtualizadas;

   procedure TelaInicial_StatusNulo_Null;
   procedure TelaInicial_StatusAgendado_Agendado;
   procedure TelaInicial_StatusFinalizado_Finalizado;
   procedure TelaInicial_StatusAdiado_Adiado;
   procedure TelaInicial_StatusAtrasado_Atrasado;
   procedure TelaInicial_StatusOutro_Outro;

   procedure DefinirData_DiaDeHoje_Hoje;
   procedure DefinirData_DiaDeAmanha_Amanha;
   procedure DefinirDatal_DiaInvalido_DataInvalido;

   procedure TelaCriacao_TarefaNula_Nulo;
   procedure TelaCriacao_TarefaNaoNula_Texto;

   procedure TelaInicial_FiltroStatus_Todos;
   procedure TelaInicial_FiltroStatus_Atrasada;
   procedure TelaInicial_FiltroStatus_Agendada;
   procedure TelaInicial_FiltroStatus_Adiada;
   procedure TelaInicial_FiltroStatus_Finalizada;
   procedure TelaInicial_FiltroStatus_AtrasadaOuAgendada;

  end;

implementation

uses
  UnitToDoFuncoes, System.DateUtils;

{ TestTtesteToDo }

procedure TTestToDo.TelaCriacao_TarefaNaoNula_Texto;
begin
  CheckEquals('Texto', TFuncoesToDo.Tarefas(''));
end;

procedure TTestToDo.TelaCriacao_TarefaNula_Nulo;
begin
  CheckEquals('', TFuncoesToDo.Tarefas('NaoNulo'));
end;

procedure TTestToDo.TelaInicial_AtualizarTarefa_TarefasAtualizadas;
begin
  CheckEquals('TarefasAtualizadas', TFuncoesToDo.OpcoesDeTarefas('Atualizar'));
end;

procedure TTestToDo.TelaInicial_CriarTarefa_TarefaCriada;
begin
  CheckEquals('TarefaCriada', TFuncoesToDo.OpcoesDeTarefas('Criar'));
end;

procedure TTestToDo.TelaInicial_DeletarTarefa_TarefaDeletada;
begin
  CheckEquals('TarefaDeletada', TFuncoesToDo.OpcoesDeTarefas('Deletar'));
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Adiada;
begin
  CheckEquals('Status = ''Adiada''', TFuncoesToDo.FiltroStatus('Adiada'));
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Agendada;
begin
  CheckEquals('Status = ''Agendada''', TFuncoesToDo.FiltroStatus('Agendada'));
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Atrasada;
begin
  CheckEquals('Status = ''Atrasada''', TFuncoesToDo.FiltroStatus('Atrasada'));
end;

procedure TTestToDo.TelaInicial_FiltroStatus_AtrasadaOuAgendada;
begin
  CheckEquals('Status = ''Agendada'' or ''Atrasada''', TFuncoesToDo.FiltroStatus('Agendada'  'Atrasada'));
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Finalizada;
begin
  CheckEquals('Status = ''Finalizada''', TFuncoesToDo.FiltroStatus('Finalizada'));
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Todos;
begin
  CheckEquals('Status = ''Adiada'' or Status = ''Agendada'' or Status = ''Finalizada'' or Status = ''Atrasada''',
  TFuncoesToDo.FiltroStatus('Tudo'));
end;

procedure TTestToDo.DefinirData_DiaDeAmanha_Amanha;
begin
  CheckEquals('Amanha', TFuncoesToDo.Calendario(Tomorrow));
end;

procedure TTestToDo.DefinirData_DiaDeHoje_Hoje;
begin
  CheckEquals('Hoje', TFuncoesToDo.Calendario(Now));
end;

procedure TTestToDo.DefinirDatal_DiaInvalido_DataInvalido;
begin
  CheckEquals('DataInvalida', TFuncoesToDo.Calendario(Yesterday));
end;

procedure TTestToDo.TelaInicial_StatusNulo_Null;
begin
  CheckEquals('', TFuncoesToDo.StatusToDo('NaoNulo'));
end;

procedure TTestToDo.TelaInicial_StatusAdiado_Adiado;
begin
  CheckEquals('StatusAdiado', TFuncoesToDo.StatusToDo('Adiar'));
end;

procedure TTestToDo.TelaInicial_StatusAgendado_Agendado;
begin
  CheckEquals('StatusAgendado', TFuncoesToDo.StatusToDo('Agendar'));
end;

procedure TTestToDo.TelaInicial_StatusAtrasado_Atrasado;
begin
  CheckEquals('StatusAtrasado', TFuncoesToDo.StatusToDo('Atrasar'));
end;

procedure TTestToDo.TelaInicial_StatusFinalizado_Finalizado;
begin
  CheckEquals('StatusFinalizado', TFuncoesToDo.StatusToDo('Finalizar'));
end;

procedure TTestToDo.TelaInicial_StatusOutro_Outro;
begin
  CheckEquals('StatusOutro', TFuncoesToDo.StatusToDo('Outro'));
end;

initialization
  TestFramework.RegisterTest(TTestToDo.Suite);
end.

