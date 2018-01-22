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
  Esperado: string;

implementation

{ TTestVendas }


procedure TTestVendas.TelaVendas_FiltroStatus_Aberta;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusAberta);

  Esperado := 'Status = ''Aberta''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaECancelada;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusAberta,StatusCancelada);

  Esperado := 'Status = ''Aberta'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEExcluida;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusAberta,StatusExcluida);

  Esperado := 'Status = ''Aberta'' or Status = ''Excluida''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEFinalizada;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusAberta,StatusFinalizada);

  Esperado := 'Status = ''Aberta'' or Status = ''Finalizada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEFinalizadaECancelada;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusAberta,StatusFinalizada,StatusCancelada);

  Esperado := 'Status = ''Aberta'' or Status = ''Finalizada'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEFinalizadaEExcluida;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusFinalizada,StatusExcluida);

  Esperado := 'Status = ''Finalizada'' or Status = ''Excluida''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_AbertaEFinalizadaEExcluidaECancelada;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusAberta,StatusFinalizada,StatusExcluida,StatusCancelada);

  Esperado := 'Status = ''Aberta'' or Status = ''Finalizada'' or Status = ''Excluida'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_Canceladada;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusCancelada);

  Esperado := 'Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_Excluida;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusExcluida);

  Esperado := 'Status = ''Excluida''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_ExcluidaECancelada;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusExcluida,StatusCancelada);

  Esperado := 'Status = ''Excluida'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_Finalizada;
begin
  FiltroVenda := '';

  TFuncoesVendas.Filtrar(StatusFinalizada);

  Esperado := 'Status = ''Finalizada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_FinalizadaECancelada;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusFinalizada,StatusCancelada);

  Esperado := 'Status = ''Finalizada'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_FinalizadaEExcluida;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusFinalizada,StatusExcluida);

  Esperado := 'Status = ''Finalizada'' or Status = ''Excluida''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

procedure TTestVendas.TelaVendas_FiltroStatus_FinalizadaEExcluidaECancelada;
begin
  FiltroVenda := '';
  TFuncoesVendas.Filtrar(StatusFinalizada,StatusExcluida,StatusCancelada);

  Esperado := 'Status = ''Finalizada'' or Status = ''Excluida'' or Status = ''Cancelada''';

  CheckEqualsString(Esperado, FiltroVenda);
end;

initialization
  TestFramework.RegisterTest(TTestVendas.Suite);

end.

