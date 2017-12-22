program FormToDo;

uses
  Vcl.Forms,
  UnitToDo in 'UnitToDo.pas' {FormView},
  DataModuleConexao in 'DataModuleConexao.pas' {DmConexao: TDataModule},
  DataModuleClientes in 'DataModuleClientes.pas' {DmClientes: TDataModule},
  UnitTarefas in 'UnitTarefas.pas' {FormTarefas},
  UnitVendas in 'UnitVendas.pas' {FormVendas},
  UnitPessoas in 'UnitPessoas.pas' {FormPessoas},
  UnitEditarVendas in 'UnitEditarVendas.pas' {FormEditarVendas},
  UnitEditarTarefas in 'UnitEditarTarefas.pas' {FormEditarTarefas},
  UnitCriacaoEdicaoPessoas in 'UnitCriacaoEdicaoPessoas.pas' {FormCriacaoEdicaoPessoas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormView, FormView);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmClientes, DmClientes);
  Application.Run;
end.
