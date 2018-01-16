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
  object dbGridEditarVendas: TDBGrid
    Left = 0
    Top = 223
    Width = 900
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
      FocusControl = edtPreco
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
    object edtPreco: TDBEdit
      Left = 219
      Top = 111
      Width = 110
      Height = 21
      DataField = 'valor_produto'
      DataSource = dsEditarVendas
      TabOrder = 2
    end
    object DBEdit16: TDBEdit
      Left = 353
      Top = 111
      Width = 110
      Height = 21
      DataField = 'quantidade'
      DataSource = dsEditarVendas
      TabOrder = 3
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 486
      Top = 111
      DataBinding.DataField = 'data'
      DataBinding.DataSource = dsEditarVendas
      TabOrder = 4
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
      TabOrder = 5
    end
    object cbVendedores: TcxDBLookupComboBox
      Left = 24
      Top = 60
      DataBinding.DataField = 'id_vendedor'
      DataBinding.DataSource = dsEditarVendas
      Properties.KeyFieldNames = 'id_vendedor'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListSource = dsVendedores
      TabOrder = 6
      Width = 145
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
    Left = 402
    Top = 284
  end
  object dsVendedores: TDataSource
    Left = 304
    Top = 280
  end
end
