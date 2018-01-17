object FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Pessoas'
  ClientHeight = 432
  ClientWidth = 791
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
  object btnNovaPessoa: TButton
    Left = 11
    Top = 21
    Width = 105
    Height = 25
    Caption = 'Novo'
    TabOrder = 3
    OnClick = btnNovaPessoaClick
  end
  object btnCancelarPessoas: TButton
    Left = 11
    Top = 82
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarPessoasClick
  end
  object btnSalvarPessoas: TButton
    Left = 11
    Top = 113
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = btnSalvarPessoasClick
  end
  object gbFormulario: TGroupBox
    Left = 135
    Top = 21
    Width = 602
    Height = 140
    Caption = 'Formul'#225'rio'
    Enabled = False
    TabOrder = 0
    object Label7: TLabel
      Left = 433
      Top = 78
      Width = 32
      Height = 13
      Caption = '* Data'
    end
    object Label4: TLabel
      Left = 8
      Top = 79
      Width = 42
      Height = 13
      Align = alCustom
      Caption = 'Telefone'
    end
    object Label2: TLabel
      Left = 286
      Top = 80
      Width = 28
      Height = 13
      Align = alCustom
      Caption = '* CPF'
    end
    object Label5: TLabel
      Left = 142
      Top = 81
      Width = 36
      Height = 13
      Align = alCustom
      Caption = ' Celular'
    end
    object Label6: TLabel
      Left = 8
      Top = 27
      Width = 40
      Height = 13
      Align = alCustom
      Caption = '* Status'
    end
    object Label3: TLabel
      Left = 382
      Top = 27
      Width = 54
      Height = 13
      Align = alCustom
      Caption = '* Endere'#231'o'
    end
    object Label1: TLabel
      Left = 168
      Top = 24
      Width = 33
      Height = 13
      Caption = '*Nome'
    end
    object cxDBCelular: TcxDBMaskEdit
      Left = 142
      Top = 100
      DataBinding.DataField = 'celular'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Properties.EditMask = '!\(99\)000000000;1;_'
      TabOrder = 0
      Width = 121
    end
    object cxDBTelefone: TcxDBMaskEdit
      Left = 3
      Top = 98
      DataBinding.DataField = 'telefone'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Properties.EditMask = '!\(99\)00000000;1;_'
      TabOrder = 1
      Width = 121
    end
    object cxDBEndereco: TcxDBTextEdit
      Left = 382
      Top = 46
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 2
      Width = 182
    end
    object cxDBNome: TcxDBTextEdit
      Left = 169
      Top = 43
      DataBinding.DataField = 'pessoas'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 3
      Width = 148
    end
    object cxDBstatusPessoas: TcxDBComboBox
      Left = 8
      Top = 46
      DataBinding.DataField = 'status'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Properties.Items.Strings = (
        'Fisica'
        'Juridica'
        'Vendedor'
        'Empresa'
        'Usuario do Sistema')
      TabOrder = 4
      Width = 121
    end
    object maskEdtCpf: TcxDBMaskEdit
      Left = 286
      Top = 99
      DataBinding.DataField = 'cpf_cnpj'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 5
      Width = 121
    end
    object cbData: TcxDBDateEdit
      Left = 433
      Top = 97
      DataBinding.DataField = 'data'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      TabOrder = 6
      Width = 147
    end
  end
  object btnEditar: TcxButton
    Left = 11
    Top = 52
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object btnDeletarCadastro: TcxButton
    Left = 11
    Top = 144
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 5
    OnClick = btnDeletarCadastroClick
  end
  object dbGridCriacaoEdicaoPessoas: TcxGrid
    Left = 0
    Top = 232
    Width = 791
    Height = 200
    Align = alBottom
    TabOrder = 6
    ExplicitLeft = -19
    ExplicitTop = 190
    ExplicitWidth = 810
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
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1cpf_cnpj: TcxGridDBColumn
        DataBinding.FieldName = 'cpf_cnpj'
      end
      object dbGridCriacaoEdicaoPessoasDBTableView1endereco: TcxGridDBColumn
        DataBinding.FieldName = 'endereco'
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
  object dsCriacaoEdicaoPessoas: TDataSource
    DataSet = DmConexao.sqlQueryPessoas
    Left = 184
    Top = 296
  end
end
