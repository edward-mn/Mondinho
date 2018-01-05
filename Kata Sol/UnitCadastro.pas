unit UnitCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.DBCtrls, DataModuleClientesCadastro, DataModuleConexao, Vcl.Mask,
  DataModuleCadastro, UnitToDo, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

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
    Image1: TImage;
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cadastrar;
  private
    procedure DefinirDataSet;

  public
  ClientesCadastro :TDmClientesCadastro;
  Conexao : TdmConexao;
  procedure LimparCampos;
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}


procedure TFormCadastro.btnCadastrarClick(Sender: TObject);
begin
  Cadastrar;
end;

procedure TFormCadastro.Cadastrar;
begin
  if DBEdtSenha.Text <> edtSenhaNovamente.Text then
    ShowMessage('A senha n�o pode ser diferente nos dois campos!')
 else
    begin
      Conexao.sqlQueryCadastro.Close;
      ClientesCadastro.cdsCadastro.ApplyUpdates(0);
      ShowMessage('Cadastro Concluido!');
      LimparCampos;
    end;
end;

procedure TFormCadastro.FormShow(Sender: TObject);
begin
  DefinirDataSet;
end;

procedure TFormCadastro.LimparCampos;
begin
  DBEdtUsuario.Text := '';
  DBEdtSenha.Text := '';
  edtSenhaNovamente.Text := '';
end;

procedure TFormCadastro.DefinirDataSet;
begin
  ClientesCadastro.cdsCadastro.SetProvider(Conexao.sqlProviderCadastro);
  Conexao.sqlQueryCadastro.Open;
  ClientesCadastro.cdsCadastro.Open;
  dsCadastro.DataSet := ClientesCadastro.cdsCadastro;
  ClientesCadastro.cdsCadastro.Insert;
end;

end.
