program FormToDo;

uses
  Vcl.Forms,
  UnitToDo in 'UnitToDo.pas' {FormView},
  DataModuleConexao in 'DataModuleConexao.pas' {dmConexao: TDataModule},
  DataModuleClientes in 'DataModuleClientes.pas' {DmClientes: TDataModule},
  UnitCriacaoEdicao in 'UnitCriacaoEdicao.pas' {FormCriacaoEdicao},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitCadastro in 'UnitCadastro.pas' {FormCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmClientes, DmClientes);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormView, FormView);
  Application.Run;
end.
