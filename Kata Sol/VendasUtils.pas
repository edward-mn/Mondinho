unit VendasUtils;

interface

uses
  System.SysUtils, System.DateUtils, DataModuleClientes;

const
  StatusAberta = 'Aberta';
  StatusFinalizada = 'Finalizada';
  StatusExcluida = 'Excluida';

type

  TFuncoesVendas = class
    class function FiltroVendas(const FiltroAtualVendas: string;
      StatusDoFiltroVendas: String): string;

  const
    Ou = ' or ';
    BoxAberta = 'Status = ''Aberta''';
    BoxFinalizada = 'Status = ''Finalizada''';
    BoxExcluida = 'Status = ''Excluida''';

  public
    Clientes: TDMClientes;

  end;

implementation

{ TFuncoesPessoas }

class function TFuncoesVendas.FiltroVendas(const FiltroAtualVendas: string;
  StatusDoFiltroVendas: String): string;

  procedure AdicionarStatus(Box: String);
  begin
    if not Result.IsEmpty then
      Result := Result + Ou;

    Result := Result + Box;
  end;

begin
  Result := FiltroAtualVendas;

  if StatusDoFiltroVendas = StatusAberta then
    AdicionarStatus(BoxAberta);

  if StatusDoFiltroVendas = StatusFinalizada then
    AdicionarStatus(BoxFinalizada);

  if StatusDoFiltroVendas = StatusExcluida then
    AdicionarStatus(BoxExcluida);

end;

end.
