unit UnitCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.DBCtrls, DataModuleClientesCadastro, DataModuleConexao, Vcl.Mask,
  DataModuleCadastro, UnitToDo, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  dxGDIPlusClasses;

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
    function UsuarioJaCadastrado: Boolean;
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cadastrar;
  private
    FCadastro: TDmClientesCadastro;
    procedure DefinirDataSet;
  public
    procedure LimparCampos;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormCadastro: TFormCadastro;


implementation

{$R *.dfm}


procedure TFormCadastro.btnCadastrarClick(Sender: TObject);
begin
  UsuarioJaCadastrado;
  Cadastrar;
end;

procedure TFormCadastro.Cadastrar;
begin
  if DBEdtSenha.Text <> edtSenhaNovamente.Text then
    raise Exception.Create('A senha não pode ser diferente nos dois campos!');

  if UsuarioJaCadastrado then
    raise Exception.Create('Usuario já Existente.');

  FCadastro.cdsCadastro.ApplyUpdates(0);
  ShowMessage('Cadastro Concluido!');
  LimparCampos;
end;

constructor TFormCadastro.Create(AOwner: TComponent);
begin
  inherited;
  FCadastro := TDmClientesCadastro.Create(Self);
end;

procedure TFormCadastro.FormShow(Sender: TObject);
begin
  DefinirDataSet;
end;

function TFormCadastro.UsuarioJaCadastrado: Boolean;
begin
  Result := Conexao.Usuario.Logar(DBEdtUsuario.Text, DBEdtSenha.Text);
end;

procedure TFormCadastro.LimparCampos;
begin
  DBEdtUsuario.Text := '';
  DBEdtSenha.Text := '';
  edtSenhaNovamente.Text := '';
end;

procedure TFormCadastro.DefinirDataSet;
begin
  FCadastro.cdsCadastro.Open;
  dsCadastro.DataSet := FCadastro.cdsCadastro;
  FCadastro.cdsCadastro.Insert;
end;

end.
