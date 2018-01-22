unit PessoasUtils;

interface

uses
  System.SysUtils, System.DateUtils, DataModuleClientesPessoas;

var
  FiltroPessoa: String;

const
  Status1 = '';
  Status2 = '';
  Status3 = '';
  Status4 = '';
  Status5 = '';

  StatusFisica = 'Fisica';
  StatusJuridica = 'Juridica';
  StatusVendedor = 'Vendedor';
  StatusEmpresa = 'Empresa';
  StatusUsuarioDoSistema = 'Usuario do Sistema';

type

  TFuncoesPessoas = class
    class function FiltroPessoas(FiltroAtualPessoas: string;
  Status1: String; Status2: String = ''; Status3: String = '';
  Status4: String = '';Status5: String = ''): string;
    class procedure Filtrar(Status1: String; Status2: String = '';
      Status3: String = ''; Status4: String = ''; Status5: String = '');

  const
    Ou = ' or ';
    BoxFisica = 'Status = ''Fisica''';
    BoxJuridica = 'Status = ''Juridica''';
    BoxVendedor = 'Status = ''Vendedor''';
    BoxEmpresa = 'Status = ''Empresa''';
    BoxUsuarioDoSistema = 'Status = ''Usuario do Sistema''';

  public
    Clientes: TDmClientesPessoas;

  end;

implementation

{ TFuncoesPessoas }

class procedure TFuncoesPessoas.Filtrar(Status1: String; Status2: String = '';
  Status3: String = ''; Status4: String = ''; Status5: String = '');
begin
  FiltroPessoa := TFuncoesPessoas.FiltroPessoas(FiltroPessoa, Status1, Status2,
    Status3, Status4, Status5);
end;

class function TFuncoesPessoas.FiltroPessoas(FiltroAtualPessoas: string;
  Status1: String; Status2: String = ''; Status3: String = '';
  Status4: String = '';Status5: String = ''): string;

  procedure AdicionarStatus(Box: String);
  begin
    if not Result.IsEmpty then
      Result := Result + Ou;

    Result := Result + Box;
  end;

begin
  Result := FiltroAtualPessoas;

  if (Status1 = StatusFisica) or (Status2 = StatusFisica) or
    (Status3 = StatusFisica) or (Status4 = StatusFisica) or
    (Status5 = StatusFisica) then
    AdicionarStatus(BoxFisica);

  if (Status1 = StatusJuridica) or (Status2 = StatusJuridica) or
    (Status3 = StatusJuridica) or (Status4 = StatusJuridica) or
    (Status5 = StatusJuridica) then
    AdicionarStatus(BoxJuridica);

  if (Status1 = StatusVendedor) or (Status2 = StatusVendedor) or
    (Status3 = StatusVendedor) or (Status4 = StatusVendedor) or
    (Status5 = StatusVendedor) then
    AdicionarStatus(BoxVendedor);

  if (Status1 = StatusEmpresa) or (Status2 = StatusEmpresa) or
    (Status3 = StatusEmpresa) or (Status4 = StatusEmpresa) or
    (Status5 = StatusEmpresa) then
    AdicionarStatus(BoxEmpresa);

  if (Status1 = StatusUsuarioDoSistema) or (Status2 = StatusUsuarioDoSistema) or
    (Status3 = StatusUsuarioDoSistema) or (Status4 = StatusUsuarioDoSistema) or
    (Status5 = StatusUsuarioDoSistema) then
    AdicionarStatus(BoxUsuarioDoSistema);

end;

end.
