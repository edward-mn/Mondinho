object FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Pessoas'
  ClientHeight = 421
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbFormulario: TGroupBox
    Left = 142
    Top = 34
    Width = 544
    Height = 169
    Caption = 'Formul'#225'rio'
    Enabled = False
    TabOrder = 0
    object Label7: TLabel
      Left = 6
      Top = 110
      Width = 32
      Height = 13
      Caption = '* Data'
    end
    object Label4: TLabel
      Left = 6
      Top = 64
      Width = 42
      Height = 13
      Align = alCustom
      Caption = 'Telefone'
    end
    object Label2: TLabel
      Left = 177
      Top = 18
      Width = 28
      Height = 13
      Align = alCustom
      Caption = '* CPF'
      FocusControl = edtCpf
    end
    object Label5: TLabel
      Left = 177
      Top = 64
      Width = 42
      Height = 13
      Align = alCustom
      Caption = '* Celular'
    end
    object Label6: TLabel
      Left = 369
      Top = 64
      Width = 40
      Height = 13
      Align = alCustom
      Caption = '* Status'
    end
    object Label3: TLabel
      Left = 323
      Top = 18
      Width = 54
      Height = 13
      Align = alCustom
      Caption = '* Endere'#231'o'
    end
    object Label1: TLabel
      Left = 6
      Top = 18
      Width = 39
      Height = 13
      Caption = ' * Nome'
    end
    object edtCpf: TDBEdit
      Left = 177
      Top = 32
      Width = 105
      Height = 21
      Align = alCustom
      DataField = 'cpf'
      DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 0
    end
    object cxDBCelular: TcxDBMaskEdit
      Left = 177
      Top = 83
      DataBinding.DataField = 'celular'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Properties.EditMask = '!\(99\)000000000;1;_'
      TabOrder = 1
      Width = 121
    end
    object cxDBTelefone: TcxDBMaskEdit
      Left = 6
      Top = 79
      DataBinding.DataField = 'celular'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Properties.EditMask = '!\(99\)00000000;1;_'
      TabOrder = 2
      Width = 121
    end
    object cxDBEndereco: TcxDBTextEdit
      Left = 323
      Top = 32
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 3
      Width = 182
    end
    object cxDBNome: TcxDBTextEdit
      Left = 5
      Top = 32
      DataBinding.DataField = 'pessoas'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 4
      Width = 148
    end
  end
  object cbData: TcxDBDateEdit
    Left = 148
    Top = 158
    DataBinding.DataField = 'data'
    DataBinding.DataSource = dsCriacaoEdicaoPessoas
    TabOrder = 1
    Width = 147
  end
  object dbGridCriacaoEdicaoPessoas: TcxGrid
    Left = 0
    Top = 221
    Width = 900
    Height = 200
    Align = alBottom
    TabOrder = 2
    object dbGridCriacaoEdicaoPessoasDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCriacaoEdicaoPessoas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbWhenSelected
      object dbGridCriacaoEdicaoPessoasDBTableView1id_pessoas: TcxGridDBColumn
        DataBinding.FieldName = 'id_pessoas'
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1pessoas: TcxGridDBColumn
        DataBinding.FieldName = 'pessoas'
        Width = 170
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1cpf: TcxGridDBColumn
        DataBinding.FieldName = 'cpf'
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1endereco: TcxGridDBColumn
        DataBinding.FieldName = 'endereco'
        Width = 147
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1telefone: TcxGridDBColumn
        DataBinding.FieldName = 'telefone'
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1celular: TcxGridDBColumn
        DataBinding.FieldName = 'celular'
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1status: TcxGridDBColumn
        DataBinding.FieldName = 'status'
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1id_cadastro: TcxGridDBColumn
        DataBinding.FieldName = 'id_cadastro'
      end
    end
    object dbGridCriacaoEdicaoPessoasLevel1: TcxGridLevel
      GridView = dbGridCriacaoEdicaoPessoasDBTableView1
    end
  end
  object cxDBstatusPessoas: TcxDBComboBox
    Left = 511
    Top = 117
    DataBinding.DataField = 'status'
    DataBinding.DataSource = dsCriacaoEdicaoPessoas
    Properties.Items.Strings = (
      'Fisica'
      'Juridica'
      'Vendedor'
      'Empresa'
      'Usuario do Sistema')
    TabOrder = 3
    Width = 121
  end
  object btnNovaPessoa: TcxButton
    Left = 11
    Top = 21
    Width = 105
    Height = 25
    Caption = 'Novo'
    TabOrder = 4
    OnClick = btnNovaPessoaClick
  end
  object btnEditar: TcxButton
    Left = 11
    Top = 52
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
    OnClick = btnEditarClick
  end
  object btnCancelarPessoas: TcxButton
    Left = 11
    Top = 82
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = btnCancelarPessoasClick
  end
  object btnSalvarPessoas: TcxButton
    Left = 11
    Top = 113
    Width = 105
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = btnSalvarPessoasClick
  end
  object btnDeletarCadastro: TcxButton
    Left = 11
    Top = 144
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 8
    OnClick = btnDeletarCadastroClick
  end
  object dsCriacaoEdicaoPessoas: TDataSource
    DataSet = DmConexao.sqlQueryPessoas
    Left = 184
    Top = 296
  end
end
