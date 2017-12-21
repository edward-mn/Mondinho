program FormToDo;

uses
  Vcl.Forms,
  UnitToDo in 'UnitToDo.pas' {FormView},
  DataModuleConexao in 'DataModuleConexao.pas' {dmConexao: TDataModule},
  DataModuleClientes in 'DataModuleClientes.pas' {DmClientes: TDataModule},
  UnitCriacaoEdicao in 'UnitCriacaoEdicao.pas' {FormCriacaoEdicao},
  UnitTarefas in 'UnitTarefas.pas' {FormTarefas},
  UnitPessoas in 'UnitPessoas.pas' {FormPessoas},
  UnitCriacaoEdicaoPessoas in 'UnitCriacaoEdicaoPessoas.pas' {FormCriacaoEdicaoPessoas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormView, FormView);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TDmClientes, DmClientes);
  Application.Run;
end.
