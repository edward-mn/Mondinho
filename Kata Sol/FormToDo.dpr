program FormToDo;

uses
  Vcl.Forms,
  UnitToDo in 'UnitToDo.pas' {FormView},
  DataModuleConexao in 'DataModuleConexao.pas' {DmConexao: TDataModule},
  DataModuleClientes in 'DataModuleClientes.pas' {DmClientes: TDataModule},
  UnitCriacaoEdicao in 'UnitCriacaoEdicao.pas' {FormCriacaoEdicao},
  UnitTarefas in 'UnitTarefas.pas' {FormTarefas};
  UnitEditarTarefas in 'UnitEditarTarefas.pas' {FormEditarTarefas},
  UnitVendas in 'UnitVendas.pas' {FormVendas},
  UnitEditarVendas in 'UnitEditarVendas.pas' {FormEditarVendas};
  UnitPessoas in 'UnitPessoas.pas' {FormPessoas},
  UnitCriacaoEdicaoPessoas in 'UnitCriacaoEdicaoPessoas.pas' {FormCriacaoEdicaoPessoas};


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormView, FormView);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmClientes, DmClientes);
  Application.CreateForm(TFormEditarVendas, FormEditarVendas);
  Application.Run;
end.
