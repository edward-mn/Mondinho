unit PessoasUtils;

interface

uses
  System.SysUtils, System.DateUtils, DataModuleClientes;

const
  StatusFisica = 'Fisica';
  StatusJuridica = 'Juridica';
  StatusVendedor = 'Vendedor';
  StatusEmpresa = 'Empresa';
  StatusUsuarioDoSistema = 'Usuario do Sistema';

type

  TFuncoesPessoas = class
    class function FiltroPessoas(const FiltroAtualPessoas: string;
      StatusDoFiltroPessoas: String): string;

  const
    Ou = ' or ';
    BoxFisica = 'Status = ''Fisica''';
    BoxJuridica = 'Status = ''Juridica''';
    BoxVendedor = 'Status = ''Vendedor''';
    BoxEmpresa = 'Status = ''Empresa''';
    BoxUsuarioDoSistema = 'Status = ''Usuario do Sistema''';

  public
    Clientes: TDMClientes;

  end;

implementation

{ TFuncoesPessoas }

class function TFuncoesPessoas.FiltroPessoas(const FiltroAtualPessoas: string;
  StatusDoFiltroPessoas: String): string;

  procedure AdicionarStatus(Box: String);
  begin
    if not Result.IsEmpty then
      Result := Result + Ou;

    Result := Result + Box;
  end;

begin
  Result := FiltroAtualPessoas;

  if StatusDoFiltroPessoas = StatusFisica then
    AdicionarStatus(BoxFisica);

  if StatusDoFiltroPessoas = StatusJuridica then
    AdicionarStatus(BoxJuridica);

  if StatusDoFiltroPessoas = StatusVendedor then
    AdicionarStatus(BoxVendedor);

  if StatusDoFiltroPessoas = StatusEmpresa then
    AdicionarStatus(BoxEmpresa);

  if StatusDoFiltroPessoas = StatusUsuarioDoSistema then
    AdicionarStatus(BoxUsuarioDoSistema);

end;

end.
