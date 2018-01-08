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

   procedure TelaInicial_FiltroStatus_FinalizadaEAdiada;
   procedure TelaInicial_FiltroStatus_FinalizadaEAtrasada;
   procedure TelaInicial_FiltroStatus_FinalizadaEAgendada;
   procedure TelaInicial_FiltroStatus_FinalizadaEAdiadaEAtrasada;
   procedure TelaInicial_FiltroStatus_FinalizadaEAdiadaEAgendada;
   procedure TelaInicial_FiltroStatus_FinalizadaEAtrasadaEAgendada;

   procedure TelaInicial_FiltroStatus_AdiadaEAtrasada;
   procedure TelaInicial_FiltroStatus_AdiadaEAgendada;
   procedure TelaInicial_FiltroStatus_AdiadaEAtrasadaEAgendada;

   procedure TelaInicial_FiltroStatus_AgendadaEAtrasada;
  end;
var
  Filtro, Esperado: string;

implementation

uses
  TarefaUtils, System.DateUtils;

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
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);

  Esperado := 'Status = ''Adiada''';

  CheckEqualsString(Esperado, Filtro);
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Atrasada;
begin
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);

  Esperado := 'Status = ''Atrasada''';

  CheckEqualsString(Esperado, Filtro);
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Finalizada;
begin
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);

  Esperado := 'Status = ''Finalizada''';

  CheckEqualsString(Esperado, Filtro);
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Agendada;
begin
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);

  Esperado := 'Status = ''Agendada''';

  CheckEqualsString(Esperado, Filtro);
end;

procedure TTestToDo.TelaInicial_FiltroStatus_FinalizadaEAdiadaEAtrasada;
begin
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);

  Esperado := 'Status = ''Finalizada'' or Status = ''Adiada'' or Status = ''Atrasada''';

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_AdiadaEAgendada;
begin
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);

  Esperado := 'Status = ''Adiada'' or Status = ''Agendada''';

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_AdiadaEAtrasada;
begin
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);

  Esperado := 'Status = ''Adiada'' or Status = ''Atrasada''';

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_AdiadaEAtrasadaEAgendada;
begin
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);

  Esperado := 'Status = ''Adiada'' or Status = ''Atrasada'' or Status = ''Agendada''';

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_FinalizadaEAdiada;
begin
  Filtro := '';
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);

  Esperado :='Status = ''Agendada'' or Status = ''Finalizada''';

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_FinalizadaEAdiadaEAgendada;
begin
  Filtro := '';

  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);

  Esperado := 'Status = ''Finalizada'' or Status = ''Adiada'' or Status = ''Agendada''';

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_FinalizadaEAgendada;
begin
  Filtro := '';

  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);

  Esperado := 'Status = ''Finalizada'' or Status = ''Agendada''';

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_FinalizadaEAtrasada;
begin
  Filtro := '';

  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);

  Esperado := 'Status = ''Finalizada'' or Status = ''Atrasada''';

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_FinalizadaEAtrasadaEAgendada;
begin
  Filtro := '';

  Esperado := 'Status = ''Finalizada'' or Status = ''Atrasada'' or Status = ''Agendada''';

  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_AgendadaEAtrasada;
begin
  Filtro := '';

  Esperado := 'Status = ''Agendada'' or Status = ''Atrasada''';

  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);

  CheckEqualsString(Esperado, Filtro)
end;

procedure TTestToDo.TelaInicial_FiltroStatus_Todos;
begin
  Filtro := '';

  Esperado := 'Status = ''Agendada'' or Status = ''Atrasada'' or Status = ''Finalizada'' or Status = ''Adiada''';

  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);
  Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);

  CheckEqualsString(Esperado, Filtro)
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

