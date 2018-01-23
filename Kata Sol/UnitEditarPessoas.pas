unit UnitEditarPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, DataModuleClientesPessoas,
  DataModuleControleDeUsuario, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, cxButtons, Vcl.ExtCtrls, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl;

type
  TFormCriacaoEdicaoPessoas = class(TForm)
    dsCriacaoEdicaoPessoas: TDataSource;
    btnNovaPessoa: TButton;
    btnCancelarPessoas: TButton;
    btnSalvarPessoas: TButton;
    btnDeletarCadastro: TcxButton;
    cxDBCelular: TcxDBMaskEdit;
    cxDBTelefone: TcxDBMaskEdit;
    cxDBEndereco: TcxDBTextEdit;
    cxDBNome: TcxDBTextEdit;
    dbGridCriacaoEdicaoPessoas: TcxGrid;
    dbGridCriacaoEdicaoPessoasDBTableView1: TcxGridDBTableView;
    dbGridCriacaoEdicaoPessoasLevel1: TcxGridLevel;
    cxDBstatusPessoas: TcxDBComboBox;
    maskEdtCpf: TcxDBMaskEdit;
    cbData: TcxDBDateEdit;
    dbGridCriacaoEdicaoPessoasDBTableView1id_pessoas: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1pessoas: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1cpf_cnpj: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1endereco: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1telefone: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1celular: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1status: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1data: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1id_cadastro: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LayoutGroupTudoSuperior: TdxLayoutGroup;
    LayoutGroupBotoes: TdxLayoutGroup;
    LayoutItemBtNovo: TdxLayoutItem;
    LayoutItemBtCancelar: TdxLayoutItem;
    LayoutItemBtSalvar: TdxLayoutItem;
    LayoutItemBtDeletar: TdxLayoutItem;
    LayoutGroupFormulario: TdxLayoutGroup;
    LayoutGroupCampos: TdxLayoutGroup;
    LayoutGroupCamposSuperior: TdxLayoutGroup;
    LayoutItemCpStatus: TdxLayoutItem;
    LayoutItemCpNome: TdxLayoutItem;
    LayoutItemCpEndereco: TdxLayoutItem;
    LayoutGroupCamposInferior: TdxLayoutGroup;
    LayoutItemCpTelefone: TdxLayoutItem;
    LayoutItemCpCelular: TdxLayoutItem;
    LayoutItemCpCPFCNPJ: TdxLayoutItem;
    LayoutItemCpData: TdxLayoutItem;
    LayoutItemGridPessoas: TdxLayoutItem;
    LayoutImageItemMiniLogo: TdxLayoutImageItem;
    procedure btnNovaPessoaClick(Sender: TObject);
    procedure btnCancelarPessoasClick(Sender: TObject);
    procedure btnDeletarCadastroClick(Sender: TObject);
    procedure btnSalvarPessoasClick(Sender: TObject);
    procedure cxDBstatusPessoasFocusChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mCalendarClick(Sender: TObject);
  private
    FClientesControle: TDmControleDeUsuario;
    procedure AdicionarCampoCNPJ;
    procedure AdicionarCampoCPF;
    procedure CadastrarNovaPessoa;
    procedure CancelarAcao;
    procedure DefinirDataSet;
    procedure DeletarPessoa;
    procedure DesabilitarBotoes;
    procedure HabilitarBotoes;
    procedure SalvarAlteracoes;
    procedure ControleDeUsuarioNovaPessoa;
    procedure ControleDeUsuarioEditarPessoa;
    procedure ControleDeUsuarioDeletarPessoa;
    procedure ProviderCdsControle;
  public
    ClientesPessoas: TDmClientesPessoas;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas;

implementation

uses
  System.StrUtils, ValidacaoUtils;

{$R *.dfm}

procedure TFormCriacaoEdicaoPessoas.btnNovaPessoaClick(Sender: TObject);
begin
  CadastrarNovaPessoa();
end;

procedure TFormCriacaoEdicaoPessoas.btnCancelarPessoasClick(Sender: TObject);
begin
  CancelarAcao();
end;

procedure TFormCriacaoEdicaoPessoas.btnDeletarCadastroClick(Sender: TObject);
begin
  if not ClientesPessoas.cdsPessoas.IsEmpty then
    DeletarPessoa();
end;

procedure TFormCriacaoEdicaoPessoas.btnSalvarPessoasClick(Sender: TObject);
begin
  SalvarAlteracoes();
end;

procedure TFormCriacaoEdicaoPessoas.CadastrarNovaPessoa;
begin
  DesabilitarBotoes;

  ClientesPessoas.cdsPessoas.Insert;
  ClientesPessoas.cdsPessoasid_cadastro.Value := Conexao.Usuario.Id;
  cxDBstatusPessoas.SetFocus;
  dbGridCriacaoEdicaoPessoas.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.CancelarAcao;
begin
  HabilitarBotoes;

  ClientesPessoas.cdsPessoas.Cancel;
  dbGridCriacaoEdicaoPessoas.Enabled := True;
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioDeletarPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(Conexao.Usuario.Id)) + ' Deletou Pessoa ' +
    (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioEditarPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(Conexao.Usuario.Id)) + ' Editou Pessoa ' +
    (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioNovaPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(Conexao.Usuario.Id)) + ' Adicionou Nova Pessoa ' +
    (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

constructor TFormCriacaoEdicaoPessoas.Create(AOwner: TComponent);
begin
  inherited;
  FClientesControle := TDmControleDeUsuario.Create(Self);
  ProviderCdsControle;
  FClientesControle.cdsControleDeUsuario.Open;
end;

procedure TFormCriacaoEdicaoPessoas.AdicionarCampoCNPJ;
begin
  maskEdtCpf.Properties.EditMask := '00.000.000/0000-00';
end;

procedure TFormCriacaoEdicaoPessoas.AdicionarCampoCPF;
begin
  maskEdtCpf.Properties.EditMask := '000.000.000-00';
end;

procedure TFormCriacaoEdicaoPessoas.cxDBstatusPessoasFocusChanged
  (Sender: TObject);
begin
  if MatchText(cxDBstatusPessoas.Text, ['Fisica', 'Vendedor',
    'Usuario Do Sistema']) then
    AdicionarCampoCPF
  else if MatchText(cxDBstatusPessoas.Text, ['Juridica', 'Empresa']) then
    AdicionarCampoCNPJ;
end;

procedure TFormCriacaoEdicaoPessoas.DefinirDataSet;
begin
  dbGridCriacaoEdicaoPessoasDBTableView1.DataController.DataSource :=
    dsCriacaoEdicaoPessoas;
  ClientesPessoas.cdsPessoasid_pessoas.Visible := False;
  dsCriacaoEdicaoPessoas.DataSet := ClientesPessoas.cdsPessoas;
end;

procedure TFormCriacaoEdicaoPessoas.DeletarPessoa;
begin
  if MessageDlg('Deseja realmente deletar essa tarefa ?', mtInformation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    ClientesPessoas.cdsPessoas.Delete;
    ClientesPessoas.cdsPessoas.ApplyUpdates(0);
    ControleDeUsuarioDeletarPessoa;
  end;
end;

procedure TFormCriacaoEdicaoPessoas.DesabilitarBotoes;
begin
  btnNovaPessoa.Enabled := False;
  btnDeletarCadastro.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ClientesPessoas.cdsPessoas.Cancel;
  ClientesPessoas.cdsPessoasid_pessoas.Visible := True;
  dbGridCriacaoEdicaoPessoas.Enabled := True;
  FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormCriacaoEdicaoPessoas.FormShow(Sender: TObject);
begin
  DefinirDataSet();
end;

procedure TFormCriacaoEdicaoPessoas.HabilitarBotoes;
begin
  btnNovaPessoa.Enabled := True;
  btnDeletarCadastro.Enabled := True;
end;

procedure TFormCriacaoEdicaoPessoas.mCalendarClick(Sender: TObject);
begin
  ClientesPessoas.cdsPessoas.Edit;
end;

procedure TFormCriacaoEdicaoPessoas.ProviderCdsControle;
begin
  FClientesControle.cdsControleDeUsuario.SetProvider(Conexao.sqlQueryControle);
end;

procedure TFormCriacaoEdicaoPessoas.SalvarAlteracoes;
begin
  if (ClientesPessoas.cdsPessoas.State = dsInsert) then
  begin
    try
      ClientesPessoas.cdsPessoas.Post;

      ControleDeUsuarioNovaPessoa;

      dbGridCriacaoEdicaoPessoas.Enabled := True;
      HabilitarBotoes;
    except
      on E: EvalidationError do
      begin
        TValidacaoUtils.FocarCampos(Self, E.FieldName);
        raise;
      end;
    end;
  end;

  if (ClientesPessoas.cdsPessoas.State = dsEdit) then
  begin
    try
      ClientesPessoas.cdsPessoas.Post;

      ControleDeUsuarioEditarPessoa;

      dbGridCriacaoEdicaoPessoas.Enabled := True;
    except
      on E: EvalidationError do
      begin
        TValidacaoUtils.FocarCampos(Self, E.FieldName);
        raise;
      end;
    end;
  end;
  ClientesPessoas.cdsPessoas.ApplyUpdates(0);
  ClientesPessoas.cdsPessoas.Refresh;
end;

end.
