unit TestVendas;


interface

uses
  TestFramework, System.SysUtils, VendasUtils, UnitVendas;

type
  TTestVendas = class(TTestCase)
  published

  procedure TelaVendas_FiltroStatus_Aberta;
  procedure TelaVendas_FiltroStatus_Finalizada;
  procedure TelaVendas_FiltroStatus_Excluida;
  procedure TelaVendas_FiltroStatus_Canceladada;

  procedure TelaVendas_FiltroStatus_AbertaEFinalizada;
  procedure TelaVendas_FiltroStatus_AbertaEExcluida;
  procedure TelaVendas_FiltroStatus_AbertaECancelada;

  procedure TelaVendas_FiltroStatus_AbertaEFinalizadaEExcluida;
  procedure TelaVendas_FiltroStatus_AbertaEFinalizadaECancelada;

  procedure TelaVendas_FiltroStatus_FinalizadaEExcluida;
  procedure TelaVendas_FiltroStatus_FinalizadaECancelada;
  procedure TelaVendas_FiltroStatus_ExcluidaECancelada;

  procedure TelaVendas_FiltroStatus_FinalizadaEExcluidaECancelada;

  procedure TelaVendas_FiltroStatus_AbertaEFinalizadaEExcluidaECancelada;

  end;
  var
  FiltroVendas, Esperado: string;

implementation

{ TTestVendas }

procedure TTestVendas.TelaVendas_FiltroStatus_Aberta;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusAberta);

  Esperado := 'Status = ''Aberta''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaECancelada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusAberta);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusCancelada);

  Esperado := 'Status = ''Aberta'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEExcluida;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusAberta);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusExcluida);

  Esperado := 'Status = ''Aberta'' or Status = ''Excluida''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEFinalizada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusAberta);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);

  Esperado := 'Status = ''Aberta'' or Status = ''Finalizada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEFinalizadaECancelada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusAberta);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusCancelada);

  Esperado := 'Status = ''Aberta'' or Status = ''Finalizada'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEFinalizadaEExcluida;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusExcluida);

  Esperado := 'Status = ''Finalizada'' or Status = ''Excluida''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEFinalizadaEExcluidaECancelada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusAberta);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusExcluida);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusCancelada);
  Esperado := 'Status = ''Aberta'' or Status = ''Finalizada'' or Status = ''Excluida'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_Canceladada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusCancelada);

  Esperado := 'Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_Excluida;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusExcluida);

  Esperado := 'Status = ''Excluida''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_ExcluidaECancelada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusExcluida);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusCancelada);

  Esperado := 'Status = ''Excluida'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_Finalizada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);

  Esperado := 'Status = ''Finalizada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_FinalizadaECancelada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusCancelada);

  Esperado := 'Status = ''Finalizada'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_FinalizadaEExcluida;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusExcluida);

  Esperado := 'Status = ''Finalizada'' or Status = ''Excluida''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_FinalizadaEExcluidaECancelada;
begin
  FiltroVendas := '';
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusFinalizada);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusExcluida);
  FiltroVendas := TFuncoesVendas.FiltroVendas(FiltroVendas, StatusCancelada);

  Esperado := 'Status = ''Finalizada'' or Status = ''Excluida'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVendas);
end;

initialization
  TestFramework.RegisterTest(TTestVendas.Suite);

end.

