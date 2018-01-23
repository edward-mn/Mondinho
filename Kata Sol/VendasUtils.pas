unit VendasUtils;

interface

uses
  System.SysUtils, System.DateUtils, DataModuleClientesVendas;

var
  FiltroVenda: string;

const
  Status1 = '';
  Status2 = '';
  Status3 = '';
  Status4 = '';

  StatusAberta = 'Aberta';
  StatusFinalizada = 'Finalizada';
  StatusExcluida = 'Excluida';
  StatusCancelada = 'Cancelada';

type

  TFuncoesVendas = class
    class function FiltroVendas(FiltroAtualVendas: string;
  Status1: String; Status2: String = ''; Status3: String = '';
  Status4: String = ''): string;
    class procedure Filtrar(Status1: String; Status2: String = '';
      Status3: String = '';Status4: String = '');

  const
    Ou = ' or ';
    BoxAberta = 'Status = ''Aberta''';
    BoxFinalizada = 'Status = ''Finalizada''';
    BoxExcluida = 'Status = ''Excluida''';
    BoxCancelada = 'Status = ''Cancelada''';

  public
    Clientes: TDmClienteVendas;
  end;

implementation

{ TFuncoesPessoas }

class procedure TFuncoesVendas.Filtrar(Status1: String; Status2: String = '';Status3: String = '';Status4: String = '');
begin
  FiltroVenda := TFuncoesVendas.FiltroVendas(FiltroVenda,Status1,Status2,Status3,Status4);
end;

class function TFuncoesVendas.FiltroVendas(FiltroAtualVendas: string;
  Status1: String; Status2: String = ''; Status3: String = '';
  Status4: String = ''): string;

  procedure AdicionarStatus(Box: String);
  begin
    if not Result.IsEmpty then
      Result := Result + Ou;

    Result := Result + Box;
  end;

begin
  Result := FiltroAtualVendas;

  if (Status1 = StatusAberta) or (Status2 = StatusAberta) or
    (Status3 = StatusAberta) or (Status4 = StatusAberta) then
    AdicionarStatus(BoxAberta);

    if (Status1 = StatusFinalizada) or (Status2 = StatusFinalizada) or
    (Status3 = StatusFinalizada) or (Status4 = StatusFinalizada) then
    AdicionarStatus(BoxFinalizada);

    if  (Status1 = StatusExcluida) or (Status2 = StatusExcluida) or
    (Status3 = StatusExcluida) or (Status4 = StatusExcluida) then
    AdicionarStatus(BoxExcluida);

    if  (Status1 = StatusCancelada) or (Status2 = StatusCancelada) or
    (Status3 = StatusCancelada) or (Status4 = StatusCancelada) then
    AdicionarStatus(BoxCancelada);

  end;

  end.
