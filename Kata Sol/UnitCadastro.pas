unit UnitCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.DBCtrls, DataModuleClientes, DataModuleConexao, Vcl.Mask,
  DataModuleCadastro, UnitToDo;

type
  TFormCadastro = class(TForm)
    btnCadastrar: TButton;
    dsCadastro: TDataSource;
    Label2: TLabel;
    DBEdtUsuario: TDBEdit;
    Label3: TLabel;
    DBEdtSenha: TDBEdit;
    edtSenhaNovamente: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
  FClientes :TDmClientes;
  FConexao : TdmConexao;
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}


procedure TFormCadastro.btnCadastrarClick(Sender: TObject);
begin
  if DBEdtSenha.Text <> edtSenhaNovamente.Text then
  begin
    ShowMessage('A senha não pode ser diferente nos dois campos.');
  end;
  if DBEdtSenha.Text = edtSenhaNovamente.Text then
    begin
      FConexao.sqlQueryCadastro.Close;
      FClientes.cdsCadastro.ApplyUpdates(0);
      ShowMessage('Cadastro Concluido!');
    end;
end;


procedure TFormCadastro.FormShow(Sender: TObject);
begin
  FClientes.cdsCadastro.SetProvider(FConexao.sqlProviderCadastro);
  FConexao.sqlQueryCadastro.Open;
  FClientes.cdsCadastro.Open;
  dsCadastro.DataSet := FClientes.cdsCadastro;
  FClientes.cdsCadastro.Insert;
end;

end.
