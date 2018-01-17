object FormEditarVendas: TFormEditarVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Criar Vendas'
  ClientHeight = 390
  ClientWidth = 810
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
  object dbGridEditarVendas: TDBGrid
    Left = 0
    Top = 192
    Width = 810
    Height = 198
    Align = alBottom
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSalvar: TButton
    Left = 21
    Top = 95
    Width = 105
    Height = 26
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object btnNovo: TButton
    Left = 21
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Novo'
    TabOrder = 1
    OnClick = btnNovoClick
  end
  object btnCancelar: TButton
    Left = 21
    Top = 66
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object GBVendas: TGroupBox
    Left = 165
    Top = 8
    Width = 628
    Height = 177
    Caption = 'Formulario'
    Enabled = False
    TabOrder = 0
    object Label2: TLabel
      Left = 152
      Top = 34
      Width = 66
      Height = 13
      Caption = '* Vendedores'
      FocusControl = edtVendedores
    end
    object Label3: TLabel
      Left = 408
      Top = 37
      Width = 75
      Height = 13
      Caption = '* Fornecedores'
    end
    object Label4: TLabel
      Left = 23
      Top = 37
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
    end
    object Label6: TLabel
      Left = 208
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
    end
    object Label9: TLabel
      Left = 486
      Top = 93
      Width = 32
      Height = 13
      Caption = '* Data'
    end
    object edtVendedores: TDBEdit
      Left = 152
      Top = 53
      Width = 228
      Height = 21
      DataField = 'vendedores'
      DataSource = dsEditarVendas
      TabOrder = 0
    end
    object cbDBData: TcxDBDateEdit
      Left = 486
      Top = 111
      DataBinding.DataField = 'data'
      DataBinding.DataSource = dsEditarVendas
      TabOrder = 1
      Width = 123
    end
    object edtDBPreco: TcxDBCurrencyEdit
      Left = 208
      Top = 111
      DataBinding.DataField = 'valor_produto'
      DataBinding.DataSource = dsEditarVendas
      TabOrder = 2
      Width = 121
    end
    object edtDBProdutos: TcxDBTextEdit
      Left = 23
      Top = 112
      DataBinding.DataField = 'produtos'
      DataBinding.DataSource = dsEditarVendas
      TabOrder = 3
      Width = 170
    end
    object SpDBQuantidade: TcxDBSpinEdit
      Left = 353
      Top = 112
      DataBinding.DataField = 'quantidade'
      DataBinding.DataSource = dsEditarVendas
      TabOrder = 4
      Width = 110
    end
    object cbDBStatusVendas: TcxDBComboBox
      Left = 23
      Top = 56
      DataBinding.DataField = 'status'
      DataBinding.DataSource = dsEditarVendas
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Aberta'
        'Finalizada'
        'Excluida'
        'Cancelada')
      TabOrder = 5
      Width = 112
    end
    object edtDBFornecedores: TcxDBTextEdit
      Left = 408
      Top = 53
      DataBinding.DataField = 'fornecedores'
      DataBinding.DataSource = dsEditarVendas
      TabOrder = 6
      Width = 201
    end
  end
  object btnEditar: TButton
    Left = 21
    Top = 38
    Width = 105
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object btnDeletar: TButton
    Left = 21
    Top = 127
    Width = 105
    Height = 25
    Caption = 'Deletar'
    TabOrder = 6
    OnClick = btnDeletarClick
  end
  object btnFinalizarVenda: TButton
    Left = 21
    Top = 157
    Width = 105
    Height = 25
    Caption = 'Finalizar Venda'
    TabOrder = 7
    OnClick = btnFinalizarVendaClick
  end
  object dsEditarVendas: TDataSource
    Left = 354
    Top = 332
  end
end
