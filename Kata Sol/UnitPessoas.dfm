object FormPessoas: TFormPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Pessoas'
  ClientHeight = 644
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbStatusPessoas: TGroupBox
    Left = 608
    Top = 0
    Width = 128
    Height = 644
    Align = alRight
    Caption = 'Status'
    TabOrder = 0
    object cbEmpresa: TCheckBox
      Left = 5
      Top = 79
      Width = 97
      Height = 17
      Caption = 'Empresa'
      TabOrder = 0
    end
    object cbVendedor: TCheckBox
      Left = 5
      Top = 58
      Width = 97
      Height = 17
      Caption = 'Vendedor'
      TabOrder = 1
    end
    object cbJuridica: TCheckBox
      Left = 5
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Jurudica'
      TabOrder = 2
    end
    object cbFisica: TCheckBox
      Left = 5
      Top = 17
      Width = 97
      Height = 17
      Caption = 'Fisica'
      TabOrder = 3
    end
    object cbUsuarioDoSistema: TCheckBox
      Left = 5
      Top = 100
      Width = 109
      Height = 17
      Caption = 'Usuario do Sistema'
      TabOrder = 4
    end
    object gbEditarPessoas: TGroupBox
      Left = 6
      Top = 153
      Width = 129
      Height = 79
      Align = alCustom
      Caption = 'Pessoas'
      TabOrder = 5
      object btnAtualizarCadastro: TcxButton
        Left = 11
        Top = 47
        Width = 97
        Height = 25
        Caption = 'Atualizar'
        TabOrder = 0
        OnClick = btnAtualizarCadastroClick
      end
      object btnCadastrarPessoa: TcxButton
        Left = 11
        Top = 16
        Width = 97
        Height = 25
        Caption = 'Editar Registros'
        TabOrder = 1
        OnClick = btnCadastrarPessoaClick
      end
    end
    object gbRelatorioPessoas: TGroupBox
      Left = 2
      Top = 518
      Width = 124
      Height = 124
      Align = alBottom
      Caption = 'Relat'#243'rio'
      TabOrder = 6
      object btnImprimir: TcxButton
        Left = 11
        Top = 63
        Width = 97
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 0
        OnClick = btnImprimirClick
      end
      object bntVisualizar: TcxButton
        Left = 11
        Top = 29
        Width = 97
        Height = 25
        Caption = 'Visualizar'
        TabOrder = 1
        OnClick = bntVisualizarClick
      end
    end
    object btnPesquisar: TcxButton
      Left = 17
      Top = 123
      Width = 97
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 7
      OnClick = btnPesquisarClick
    end
  end
  object dbGridPessoas: TcxGrid
    Left = 0
    Top = 0
    Width = 608
    Height = 644
    Align = alClient
    TabOrder = 1
    object dbGridPessoasDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPessoas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbWhenSelected
      object dbGridPessoasDBTableView1id_pessoas: TcxGridDBColumn
        DataBinding.FieldName = 'id_pessoas'
      end
      object dbGridPessoasDBTableView1pessoas: TcxGridDBColumn
        DataBinding.FieldName = 'pessoas'
      end
      object dbGridPessoasDBTableView1endereco: TcxGridDBColumn
        DataBinding.FieldName = 'endereco'
      end
      object dbGridPessoasDBTableView1telefone: TcxGridDBColumn
        DataBinding.FieldName = 'telefone'
      end
      object dbGridPessoasDBTableView1celular: TcxGridDBColumn
        DataBinding.FieldName = 'celular'
      end
      object dbGridPessoasDBTableView1status: TcxGridDBColumn
        DataBinding.FieldName = 'status'
      end
      object dbGridPessoasDBTableView1cpf_cnpj: TcxGridDBColumn
        DataBinding.FieldName = 'cpf_cnpj'
      end
      object dbGridPessoasDBTableView1data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
      end
      object dbGridPessoasDBTableView1id_cadastro: TcxGridDBColumn
        DataBinding.FieldName = 'id_cadastro'
      end
    end
    object dbGridPessoasLevel1: TcxGridLevel
      GridView = dbGridPessoasDBTableView1
    end
  end
  object dsPessoas: TDataSource
    DataSet = DmClientesPessoas.cdsPessoas
    Left = 72
    Top = 144
  end
end
