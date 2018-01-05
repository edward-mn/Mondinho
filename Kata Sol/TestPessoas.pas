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
  FiltroPessoas, Esperado: string;

implementation

{ TestTFuncoesPessoas }

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_Empresa;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusEmpresa);

  Esperado := 'Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_Fisica;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);

  Esperado := 'Status = ''Fisica''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEEmpresa;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusEmpresa);

  Esperado := 'Status = ''Fisica'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEJuridica;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEJuridicaEEmpresa;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusEmpresa);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEJuridicaEUsuarioDoSistema;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusUsuarioDoSistema);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEJuridicaEVendedor;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Vendedor''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEUsuarioDoSistema;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusUsuarioDoSistema);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_FisicaEVendedor;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);


  Esperado := 'Status = ''Fisica'' or Status = ''Vendedor''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_Juridica;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);

  Esperado := 'Status = ''Juridica''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEEmpresa;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusEmpresa);

  Esperado := 'Status = ''Juridica'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEUsuarioDoSistema;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusUsuarioDoSistema);

  Esperado := 'Status = ''Juridica'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEVendedor;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);

  Esperado := 'Status = ''Juridica'' or Status = ''Vendedor''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEVendedorEEmpresa;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusEmpresa);

  Esperado := 'Status = ''Fisica'' or Status = ''Juridica'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_JuridicaEVendedorEUsuarioDoSistema;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusUsuarioDoSistema);

  Esperado := 'Status = ''Juridica'' or Status = ''Vendedor'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_UsuarioDoSistema;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusUsuarioDoSistema);

  Esperado := 'Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_Vendedor;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);

  Esperado := 'Status = ''Vendedor''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_VendedorEEmpresa;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusEmpresa);

  Esperado := 'Status = ''Vendedor'' or Status = ''Empresa''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

procedure TestTFuncoesPessoas.TelaPessoas_FiltroStatus_VendedorEUsuarioDoSistema;
begin
  FiltroPessoas := '';
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);
  FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusUsuarioDoSistema);

  Esperado := 'Status = ''Vendedor'' or Status = ''Usuario do Sistema''';

  CheckEqualsString(Esperado, FiltroPessoas);
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTFuncoesPessoas.Suite);
end.

