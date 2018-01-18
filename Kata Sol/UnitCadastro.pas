unit UnitCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.DBCtrls, DataModuleClientesCadastro, DataModuleConexao, Vcl.Mask,
  DataModuleCadastro, UnitToDo, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  dxGDIPlusClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControlAdapters, cxClasses,
  dxLayoutControl;

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
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
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

  if UsuarioJaCadastrado then
    raise Exception.Create('Usuario já Existente.');

  if (DBEdtUsuario.Text = '') then
    raise Exception.Create('Campo Usuario em Branco.');

  if (DBEdtSenha.Text = '') then
    raise Exception.Create('Campo Senha em Branco.');

  if (DBEdtUsuario.Text = '') or (DBEdtSenha.Text = '') then
    raise Exception.Create('Campos Usuario e Senha em Branco.');

  if edtSenhaNovamente.Text = '' then
    raise Exception.Create('É Necessario Digitar a senha novamente Senha.');

  if DBEdtSenha.Text <> edtSenhaNovamente.Text then
    raise Exception.Create('A Senha não pode ser Diferente nos dois campos!');

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
