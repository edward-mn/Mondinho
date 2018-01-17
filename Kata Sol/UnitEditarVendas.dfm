object FormEditarVendas: TFormEditarVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Criar Vendas'
  ClientHeight = 421
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GBVendas: TGroupBox
    Left = 165
    Top = 8
    Width = 628
    Height = 177
    Caption = 'Formulario'
    Enabled = False
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 41
      Width = 66
      Height = 13
      Caption = '* Vendedores'
    end
    object Label3: TLabel
      Left = 264
      Top = 41
      Width = 75
      Height = 13
      Caption = '* Fornecedores'
      FocusControl = edtFornecedores
    end
    object Label4: TLabel
      Left = 492
      Top = 41
      Width = 40
      Height = 13
      Caption = '* Status'
    end
    object Label5: TLabel
      Left = 24
      Top = 93
      Width = 52
      Height = 13
      Caption = '* Produtos'
      FocusControl = edtProdutos
    end
    object Label6: TLabel
      Left = 219
      Top = 95
      Width = 36
      Height = 13
      Caption = '* Pre'#231'o'
    end
    object Label7: TLabel
      Left = 353
      Top = 93
      Width = 65
      Height = 13
      Caption = '* Quantidade'
      FocusControl = DBEdit16
    end
    object Label9: TLabel
      Left = 486
      Top = 93
      Width = 32
      Height = 13
      Caption = '* Data'
    end
    object edtFornecedores: TDBEdit
      Left = 264
      Top = 57
      Width = 201
      Height = 21
      DataField = 'fornecedores'
      DataSource = dsEditarVendas
      TabOrder = 0
    end
    object edtProdutos: TDBEdit
      Left = 24
      Top = 111
      Width = 161
      Height = 21
      DataField = 'produtos'
      DataSource = dsEditarVendas
      TabOrder = 1
    end
    object DBEdit16: TDBEdit
      Left = 353
      Top = 111
      Width = 110
      Height = 21
      DataField = 'quantidade'
      DataSource = dsEditarVendas
      TabOrder = 2
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 486
      Top = 111
      DataBinding.DataField = 'data'
      DataBinding.DataSource = dsEditarVendas
      TabOrder = 3
      Width = 110
    end
    object DBcbStatusVendas: TDBComboBox
      Left = 493
      Top = 57
      Width = 105
      Height = 21
      DataField = 'status'
      DataSource = dsEditarVendas
      Items.Strings = (
        'Aberta'
        'Finalizada'
        'Excluida'
        'Cancelada')
      TabOrder = 4
    end
    object cbVendedores: TcxDBLookupComboBox
      Left = 24
      Top = 57
      DataBinding.DataField = 'id_vendedor'
      DataBinding.DataSource = dsEditarVendas
      Properties.KeyFieldNames = 'id_vendedor'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListSource = dsVendedores
      TabOrder = 5
      Width = 145
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 218
      Top = 111
      DataBinding.DataField = 'valor_produto'
      DataBinding.DataSource = dsEditarVendas
      TabOrder = 6
      Width = 121
    end
  end
  object dbGridEditarVendas: TcxGrid
    Left = 0
    Top = 221
    Width = 900
    Height = 200
    Align = alBottom
    TabOrder = 1
    object dbGridEditarVendasDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEditarVendas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbWhenSelected
      object dbGridEditarVendasDBTableView1id_produtos: TcxGridDBColumn
        DataBinding.FieldName = 'id_produtos'
      end
      object dbGridEditarVendasDBTableView1fornecedores: TcxGridDBColumn
        DataBinding.FieldName = 'fornecedores'
        Width = 104
      end
      object dbGridEditarVendasDBTableView1status: TcxGridDBColumn
        DataBinding.FieldName = 'status'
        Width = 103
      end
      object dbGridEditarVendasDBTableView1produtos: TcxGridDBColumn
        DataBinding.FieldName = 'produtos'
        Width = 111
      end
      object dbGridEditarVendasDBTableView1valor_produto: TcxGridDBColumn
        DataBinding.FieldName = 'valor_produto'
      end
      object dbGridEditarVendasDBTableView1quantidade: TcxGridDBColumn
        DataBinding.FieldName = 'quantidade'
      end
      object dbGridEditarVendasDBTableView1valor_total: TcxGridDBColumn
        DataBinding.FieldName = 'valor_total'
      end
      object dbGridEditarVendasDBTableView1data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
      end
      object dbGridEditarVendasDBTableView1id_cadastro: TcxGridDBColumn
        DataBinding.FieldName = 'id_cadastro'
        Width = 43
      end
      object dbGridEditarVendasDBTableView1id_vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'id_vendedor'
        Width = 41
      end
      object dbGridEditarVendasDBTableView1vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'vendedor'
        Width = 146
      end
    end
    object dbGridEditarVendasLevel1: TcxGridLevel
      GridView = dbGridEditarVendasDBTableView1
    end
  end
  object btnFinalizarVenda: TcxButton
    Left = 21
    Top = 157
    Width = 105
    Height = 25
    Caption = 'Finalizar Venda'
    TabOrder = 2
    OnClick = btnFinalizarVendaClick
  end
  object btnDeletar: TcxButton
    Left = 21
    Top = 126
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 3
    OnClick = btnDeletarClick
  end
  object btnSalvar: TcxButton
    Left = 21
    Top = 96
    Width = 105
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object btnCancelar: TcxButton
    Left = 21
    Top = 66
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btnCancelarClick
  end
  object btnEditar: TcxButton
    Left = 21
    Top = 39
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 6
    OnClick = btnEditarClick
  end
  object btnNovo: TcxButton
    Left = 21
    Top = 13
    Width = 105
    Height = 25
    Caption = 'Novo'
    TabOrder = 7
    OnClick = btnNovoClick
  end
  object dsEditarVendas: TDataSource
    DataSet = DmClienteVendas.cdsVendas
    Left = 402
    Top = 284
  end
  object dsVendedores: TDataSource
    Left = 304
    Top = 280
  end
end
