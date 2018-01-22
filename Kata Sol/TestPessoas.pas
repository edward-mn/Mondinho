unit TestPessoas;


interface

uses
  TestFramework, System.SysUtils, PessoasUtils;

type
  TestTFuncoesPessoas = class(TTestCase)
  published

  procedure TelaPessoas_FiltroStatus_Fisica;
  procedure TelaPessoas_FiltroStatus_Juridica;
  procedure TelaPessoas_FiltroStatus_Vendedor;
  procedure TelaPessoas_FiltroStatus_Empresa;
  procedure TelaPessoas_FiltroStatus_UsuarioDoSistema;

  procedure TelaPessoas_FiltroStatus_FisicaEJuridica;
  procedure TelaPessoas_FiltroStatus_FisicaEVendedor;
  procedure TelaPessoas_FiltroStatus_FisicaEEmpresa;
  procedure TelaPessoas_FiltroStatus_FisicaEUsuarioDoSistema;

  procedure TelaPessoas_FiltroStatus_FisicaEJuridicaEVendedor;
  procedure TelaPessoas_FiltroStatus_FisicaEJuridicaEEmpresa;
  procedure TelaPessoas_FiltroStatus_FisicaEJuridicaEUsuarioDoSistema;

  procedure TelaPessoas_FiltroStatus_JuridicaEVendedor;
  procedure TelaPessoas_FiltroStatus_JuridicaEEmpresa;
  procedure TelaPessoas_FiltroStatus_JuridicaEUsuarioDoSistema;

  procedure TelaPessoas_FiltroStatus_JuridicaEVendedorEEmpresa;
  procedure TelaPessoas_FiltroStatus_JuridicaEVendedorEUsuarioDoSistema;

  procedure TelaPessoas_FiltroStatus_VendedorEEmpresa;
  procedure TelaPessoas_FiltroStatus_VendedorEUsuarioDoSistema;


  end;
  var
  Esperado: string;

implementation

{ TestTFuncoesPessoas }


procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_Empresa;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusEmpresa);

  Esperado := 'Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_Fisica;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica);

  Esperado := 'Status = ''Fisica''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEEmpresa;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica,StatusEmpresa);

  Esperado := 'Status = ''Fisica'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEJuridica;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica,StatusJuridica);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEJuridicaEEmpresa;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica,StatusJuridica,StatusEmpresa);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEJuridicaEUsuarioDoSistema;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica,StatusJuridica,StatusUsuarioDoSistema);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEJuridicaEVendedor;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica,StatusJuridica,StatusVendedor);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Vendedor''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEUsuarioDoSistema;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica,StatusJuridica,StatusUsuarioDoSistema);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEVendedor;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica,StatusVendedor);

  Esperado := 'Status = ''Fisica'' or Status = ''Vendedor''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_Juridica;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusJuridica);

  Esperado := 'Status = ''Juridica''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEEmpresa;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusJuridica,StatusEmpresa);

  Esperado := 'Status = ''Juridica'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEUsuarioDoSistema;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusJuridica,StatusUsuarioDoSistema);

  Esperado := 'Status = ''Juridica'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEVendedor;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusJuridica,StatusVendedor);

  Esperado := 'Status = ''Juridica'' or Status = ''Vendedor''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEVendedorEEmpresa;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusFisica,StatusJuridica,StatusEmpresa);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEVendedorEUsuarioDoSistema;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusJuridica,StatusVendedor,StatusUsuarioDoSistema);

  Esperado := 'Status = ''Juridica'' or Status = ''Vendedor'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_UsuarioDoSistema;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusUsuarioDoSistema);

  Esperado := 'Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_Vendedor;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusVendedor);

  Esperado := 'Status = ''Vendedor''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_VendedorEEmpresa;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusVendedor,StatusEmpresa);

  Esperado := 'Status = ''Vendedor'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_VendedorEUsuarioDoSistema;
begin
  FiltroPessoa := '';
  TFuncoesPessoas.Filtrar(StatusVendedor,StatusUsuarioDoSistema);

  Esperado := 'Status = ''Vendedor'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoa);
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTFuncoesPessoas.Suite);
end.

