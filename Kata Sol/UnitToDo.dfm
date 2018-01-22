object FormView: TFormView
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Mondinho'
  ClientHeight = 642
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1112
    Height = 636
    Align = alClient
    TabOrder = 0
    AutoSize = True
    object btnTarefas: TButton
      Left = 177
      Top = 10
      Width = 75
      Height = 37
      Caption = 'Tarefas'
      TabOrder = 2
      OnClick = btnTarefasClick
    end
    object btnPessoas: TButton
      Left = 96
      Top = 10
      Width = 75
      Height = 37
      Caption = 'Pessoas'
      TabOrder = 1
      OnClick = btnPessoasClick
    end
    object btnVendas: TButton
      Left = 10
      Top = 10
      Width = 80
      Height = 37
      Caption = 'Vendas'
      TabOrder = 0
      OnClick = btnVendasClick
    end
    object PanelFinal: TPanel
      Left = 10
      Top = 587
      Width = 1092
      Height = 39
      TabOrder = 6
      object lblNome: TLabel
        Left = 64
        Top = 14
        Width = 29
        Height = 13
        Caption = 'NOME'
      end
      object lblUsuario: TLabel
        Left = 15
        Top = 14
        Width = 43
        Height = 13
        Caption = 'Usu'#225'rio :'
      end
      object btnLogout: TButton
        Left = 1018
        Top = 1
        Width = 73
        Height = 37
        Align = alRight
        Caption = 'Logout'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnLogoutClick
      end
      object btnAtt: TcxButton
        Left = 944
        Top = 1
        Width = 74
        Height = 37
        Align = alRight
        Caption = 'Atualizar'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnAttClick
      end
    end
    object cxGridUsuarios: TcxGrid
      Left = 22
      Top = 433
      Width = 352
      Height = 136
      TabOrder = 3
      object cxGridUsuariosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGridUsuariosDBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
        end
        object cxGridUsuariosDBTableView1nome_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'nome_usuario'
        end
      end
      object cxGridUsuariosLevel1: TcxGridLevel
        GridView = cxGridUsuariosDBTableView1
      end
    end
    object GridValorTotal: TcxGrid
      Left = 738
      Top = 433
      Width = 352
      Height = 136
      TabOrder = 5
      object GridViewVendedoresPorValor: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsValorTotal
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Column = GridViewVendedoresPorValorvalor_total
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridViewVendedoresPorValornome: TcxGridDBColumn
          Caption = 'Nome Do Vendedor'
          DataBinding.FieldName = 'nome'
          Visible = False
          GroupIndex = 0
          Width = 130
        end
        object GridViewVendedoresPorValorprodutos: TcxGridDBColumn
          Caption = 'Produtos Vendidos'
          DataBinding.FieldName = 'produtos'
          Width = 400
        end
        object GridViewVendedoresPorValorvalor_total: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'valor_total'
          Width = 87
        end
      end
      object GridValorTotalLevel1: TcxGridLevel
        GridView = GridViewVendedoresPorValor
      end
    end
    object GridQuantidade: TcxGrid
      Left = 380
      Top = 433
      Width = 352
      Height = 136
      TabOrder = 4
      object GridQuantidadeDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsQuantidade
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Column = GridQuantidadeDBTableView1quantidade
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridQuantidadeDBTableView1nome: TcxGridDBColumn
          Caption = 'Nome Do Vendedor'
          DataBinding.FieldName = 'nome'
          Visible = False
          GroupIndex = 0
          SortIndex = 0
          SortOrder = soAscending
          Width = 130
        end
        object GridQuantidadeDBTableView1produtos: TcxGridDBColumn
          Caption = 'Produtos Vendidos'
          DataBinding.FieldName = 'produtos'
          FooterAlignmentHorz = taRightJustify
          Width = 390
        end
        object GridQuantidadeDBTableView1quantidade: TcxGridDBColumn
          Caption = 'Quatidade Vendida'
          DataBinding.FieldName = 'quantidade'
          Width = 97
        end
      end
      object GridQuantidadeLevel1: TcxGridLevel
        GridView = GridQuantidadeDBTableView1
      end
    end
    object LayoutControl: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutBotaoTarefas: TdxLayoutItem
      Parent = layoutGrupoBotoes
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnTarefas
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutBotãoPessoas: TdxLayoutItem
      Parent = layoutGrupoBotoes
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnPessoas
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutBotãoVendas: TdxLayoutItem
      Parent = layoutGrupoBotoes
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnVendas
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutBarraFim: TdxLayoutItem
      Parent = LayoutControl
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = PanelFinal
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutGrupoBotoes: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoForms: TdxLayoutGroup
      Parent = layoutGrupoPrincipal
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.CloseButtonMode = cbmActiveTab
      Index = 0
    end
    object layoutGrupoPrincipal: TdxLayoutGroup
      Parent = LayoutControl
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object layoutImagemLogoMondinho: TdxLayoutImageItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Image.SourceDPI = 96
      Image.Data = {
        89504E470D0A1A0A0000000D4948445200000029000000290806000000A86000
        F60000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        06624B4744000000000000F943BB7F000000097048597300000DD700000DD701
        42289B780000000774494D4507E2010B0B112019DB52A1000007004944415458
        C3ADD97BB055751507F0CFB9800848495C0C18211EA599A266515A4CA5F6302D
        332BCA31413B6A564E4490108DE54CE6AB482569124331C7E93579D1697C8C75
        A906A14469C6B4A64409129142510145B970FA63ADEDDDF770CEBD702FBF7FF6
        F9EDDF63BDBF6BAD7D2AFA38AAEDB5E2E79BF02D7C16BFC4F7B00E169F54E913
        8D3E9D4E060FC047F14D4C460B766315AEC43D78B52F8CF6EA64497B6FC62C9C
        8DA1F85F32371923B015B7E30778A2B75A6DE9258383310D77E2A29C2FC35938
        339FCBF2FD45B82BF70F2E09B8FF35999757300973710606E169DC809BB0B974
        A41517E0628CC6CB68C3557814B5BDD56A8FBB4A92BF3EB53113E3B103F70ABF
        7B08BBCB44F35C0BDE29FCF5141C88B5F8216EC30BF4EC02DDAE9608BD1BF3F0
        110CC8E5DFE30B58DF8C5049C0B1B81927E77C27EE1308F060BD807BC564E9F2
        11F822BE8291D8869770085EC1FDB8027FE9469385801FC240115C8370103662
        2116E5FB86C2EEF1262FEF8F1305EE4D49627F4DD3FE5B44F41969BE67F063DC
        88FF96AE3A2405FC720AB84304DA7C8C4B173856C0D5F2D4EA3274D4335AA963
        0EC6E0AB69CA37604B9AEA7AFC27F70CC6545C822392D00349E84F785F0AF8DE
        14F01FF83E7E85ED25179881F3300CCF613116E0A9B2562B75DAFB785E7E5C49
        C22BD05E96B00E27670BC8791D9EC5C3780786E345FC42E0E4E365C2259A27A7
        3B1402ADC6E5F86D41B3CCE4140111ADC9C0DDB8101B9AF94A29E3CCC265F9BB
        18AFE6BBF99A649C92B087A6BB9C9AF3CDE94E0F2C3EA9D205CC47A6DA8BF19E
        F49B097517AAB6D78AF9D0748B73EB182C989F9EE61C5A3A53CFE004CC497AC5
        188651C5A47FDDC515815D6B70B488EA0FE06AFCA6DA5E7B29F715F8374FE4ED
        03F24C0513650AC4E1E963A7A4DB3C546DAF15DC0DC2A792C1A3042CAD4E173A
        A8CC547D5AAC08073E3FB5F8148E4C532CCACB5A45C0B4E113E8C0CFD23CCBF3
        9EE539BF0DBBF2775B9E6BCD7B6E2ADDB92105AE0ABFEEE21BF59A2C187D56F8
        D21FF2F069A2883821D7DE9E671F492DB789B4571E8F0A08BA2FB5354904C499
        22A8260ABF6D2BB42C90650FE76DC4A4D2C687855F9D25A2F8B0F4A117527BD7
        8A34D76CBC2CAAA015F83ACEC1BB72ED7111F53F17D552996E97D16D159411B9
        2D4D335D00B7947C26D6F69477737D2DBE269281BC67BA30F7D69EEE68C6E46B
        A157BA60BD4E205E875D7B5BC5E4BE5D225BC97B1AE5FC86755C4B830DFD45E4
        A9ABFD7AE268804893F239A09BBD158DB3DD209D2EF8DACB7A9FDC2DF0E95A61
        9A95D5F6DAAE6694EAAA9C8B4595249F976361B5BDB6BE3BC9F28E7E385E20CA
        A8E4A3A1268BD14F20FF1D49684C373406E3F3A2F29E2DF06D433EBF91EFCFCE
        7DCDC6A1F86ED23B2DE977198D7072BB00E6E1023AEEC4E7D214B5D2BE63B144
        04D531A242BF54E4E26FE7FC985CBF257F1726AE0997989AF7CF15F8F964D2EF
        16272BA2DC9A2632C9850213170B801E9604CEC75BD2CC3BF06B8197AB73FD2A
        516BCEC1C79299E3F1AF5C3F58B41C5330446705749780B6713D99BB2232CD77
        F0492C4D137C38B55B496D8DC1DF04609F2730B5E85B6A029CCFC597F058EEFF
        609E1F2EFC76A0A8F0A7A636D7D94730AF61A500E04F8B4AE7C8D2257F4C4D77
        29C1CABFABEDB5EDE9122B0426BEBF4463BDC8EBB7A426E923982F11E0BBB1B4
        7C746A697C32D4E56C693E2E8539AAB4BC49B8D47C3CB73FC17C93CEFCBC5644
        EC4C9D3DF59082B1526F7E4EAECF12BE57A4D06D2238F719CC8BD14FF88A6E1A
        F92B45E9FF446AE846D1621C576DAFB588CAFE6661E249226A67E84C8BCDC07C
        A01E2068A728BB46E31A5108B43461F4C564E074E10A84F3B7E5BC4D7CB8825B
        73DFA23CD76594BACAC90221468914BAB31193AB04A076E88CEA4B45C5DE6CAC
        111DDEB69C8F15261E9BF3ADF89D0CAE2663A4E8AB968A326E57F2B1AA11931B
        05FE1590314A80F25251B40ED415CC8FC04F453BDB2AFA924DB9BE29E723F093
        D4E25B4BB46AA29A3F3DB57E595AF0B1A45F550AD22E5E5B32ED78D1D64E136D
        EDD6D4D809C9D0BDA2B69C9866694F5355451ABC5DF8E41CD1BF0F10FEFB4F91
        24360B583A5174995B04882F10FEDB25A0BAFB82D15FE0DA5CD1E734C2D435B8
        2E997A5E2754DD2A80FCE034FF8C14A87E7488EAFFEA7C763482A38610941B3B
        746683D98584A5B152F8EEC264B0D1781E3FCA7D7FAE5B7B32EF9D2AFCB6A319
        5E36CB38E5ACB1457CBDB85FE0DD5451E51C2EDAD91B1A08501E1344DA3C2CE7
        DB44AE9F8FBFDB8B4F80FBFA7D72A0F0A93912A292D0FC24BC40987989F0E9CF
        A4606F1335E283C2B4F7E095FDF67DB201A3046C5C20BEE28E165FD8EEC61B45
        93BF4244F8A929D8D33ADBE267CA96DAEF4CD631DB22BEF95C22CAB10305B454
        4ACF1DE29BCE35A24ADADD9B6FE6BDFE4BA0A4D52102846789A2A360F211E106
        77C806AEB7FF40F4ED0F167B7C619B2722B968F81B1511FB3CFE0F170C37F01B
        F177EB0000002574455874646174653A63726561746500323031382D30312D31
        315431313A31373A33322D30353A3030A64A5AEA000000257445587464617465
        3A6D6F6469667900323031382D30312D31315431313A31373A33322D30353A30
        30D717E2560000001974455874536F667477617265007777772E696E6B736361
        70652E6F72679BEE3C1A0000000049454E44AE426082}
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = layoutGrupoUsuarios
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ShowAccelChar = False
      CaptionOptions.Text = 'Usuarios Cadastrados'
      CaptionOptions.Layout = clTop
      Control = cxGridUsuarios
      ControlOptions.OriginalHeight = 136
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutGrupoUsuarios: TdxLayoutGroup
      Parent = LayoutControl
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = LayoutControl
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = layoutGrupoUsuarios
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Vendedores Por Valor'
      CaptionOptions.Layout = clTop
      Control = GridValorTotal
      ControlOptions.OriginalHeight = 136
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = layoutGrupoUsuarios
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Vendedores Por Quantidade'
      CaptionOptions.Layout = clTop
      Control = GridQuantidade
      ControlOptions.OriginalHeight = 136
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dsQuantidade: TDataSource
    Left = 560
    Top = 440
  end
  object dsValorTotal: TDataSource
    Left = 848
    Top = 440
  end
  object dsToDo: TDataSource
    Left = 170
    Top = 440
  end
end
