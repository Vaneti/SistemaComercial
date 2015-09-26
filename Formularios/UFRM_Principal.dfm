object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sistema Comercial'
  ClientHeight = 608
  ClientWidth = 842
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 842
    Height = 27
    UseSystemFont = False
    ActionManager = Acoes
    Caption = 'ActionMainMenuBar1'
    Color = clBtnShadow
    ColorMap = XPColorMap1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object barrapadrao: TActionToolBar
    Left = 0
    Top = 27
    Width = 842
    Height = 29
    ActionManager = Acoes
    Caption = 'barrapadrao'
    Color = clBtnShadow
    ColorMap = XPColorMap1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    Spacing = 0
  end
  object Button1: TButton
    Left = 368
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Teste'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Acoes: TActionManager
    FileName = 'menu.xxx'
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = ac_cadastro_Cliente
                Caption = '&Clientes'
              end
              item
                Action = ac_cadastro_Produto
                Caption = '&Produtos'
              end
              item
                Action = ac_cadastro_Usuario
                Caption = '&Usuarios'
              end
              item
                Action = ac_cadastro_Sair
                Caption = '&Sair'
              end>
            Caption = '&Cadastro'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = Ac_vendas_pdv
                Caption = '&PDV'
              end>
            Caption = '&Vendas'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ac_consulta_Movimento
                Caption = '&Movimento Diario'
              end>
            Caption = 'C&onsulta'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ac_relatorios_lista_clientes
                Caption = '&Lista de Clientes'
              end
              item
                Action = ac_relatorios_venda_dia
                Caption = '&Venda por Dia'
              end>
            Caption = '&Relatorios'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ac_ultilitarios_bloco_de_notas
                Caption = '&Bloco de Notas'
              end
              item
                Action = ac_ultilitarios_Calculadora
                Caption = '&Calculadora'
              end
              item
                Action = ac_ultilitarios_Calendario
                Caption = 'C&alendario'
              end
              item
                Action = ac_ultilitarios_internet
                Caption = '&Internet'
              end>
            Caption = '&Ultilit'#225'rios'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ac_seguranca_Logoff
                Caption = '&Logoff'
              end
              item
                Action = ac_seguranca_perfil
                Caption = '&Perfil'
              end>
            Caption = '&Seguran'#231'a'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ac_ajuda_Hep
                Caption = '&Ajuda'
              end
              item
                Action = ac_ajuda_InfSis
                Caption = '&Sobre o sistema'
              end>
            Caption = '&Ajuda'
          end>
        ActionBar = ActionMainMenuBar1
      end
      item
        Items.CaptionOptions = coNone
        Items = <>
        ActionBar = barrapadrao
      end>
    Left = 752
    Top = 112
    StyleName = 'Platform Default'
    object ac_cadastro_Cliente: TAction
      Category = 'Cadastro'
      Caption = 'Clientes'
    end
    object ac_cadastro_Produto: TAction
      Category = 'Cadastro'
      Caption = 'Produtos'
    end
    object ac_cadastro_Usuario: TAction
      Category = 'Cadastro'
      Caption = 'Usuarios'
    end
    object ac_cadastro_Sair: TAction
      Category = 'Cadastro'
      Caption = 'Sair'
    end
    object ac_ajuda_Hep: TAction
      Category = 'Ajuda'
      Caption = 'Ajuda'
    end
    object ac_ajuda_InfSis: TAction
      Category = 'Ajuda'
      Caption = 'Sobre o sistema'
    end
    object ac_consulta_Movimento: TAction
      Category = 'Consulta'
      Caption = 'Movimento Diario'
    end
    object Ac_vendas_pdv: TAction
      Category = 'Vendas'
      Caption = 'PDV'
    end
    object ac_relatorios_lista_clientes: TAction
      Category = 'Relatorios'
      Caption = 'Lista de Clientes'
    end
    object ac_relatorios_venda_dia: TAction
      Category = 'Relatorios'
      Caption = 'Venda por Dia'
    end
    object ac_ultilitarios_bloco_de_notas: TAction
      Category = 'Ultilit'#225'rios'
      Caption = 'Bloco de Notas'
    end
    object ac_ultilitarios_Calculadora: TAction
      Category = 'Ultilit'#225'rios'
      Caption = 'Calculadora'
    end
    object ac_ultilitarios_Calendario: TAction
      Category = 'Ultilit'#225'rios'
      Caption = 'Calendario'
    end
    object ac_ultilitarios_internet: TAction
      Category = 'Ultilit'#225'rios'
      Caption = 'Internet'
    end
    object ac_seguranca_Logoff: TAction
      Category = 'Seguran'#231'a'
      Caption = 'Logoff'
    end
    object ac_seguranca_perfil: TAction
      Category = 'Seguran'#231'a'
      Caption = 'Perfil'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 752
    Top = 184
    object Personalizar1: TMenuItem
      Caption = 'Personalizar'
      OnClick = Personalizar1Click
    end
  end
  object CustomizeDlg1: TCustomizeDlg
    ActionManager = Acoes
    StayOnTop = False
    Left = 752
    Top = 248
  end
  object XPColorMap1: TXPColorMap
    Color = clBtnShadow
    HighlightColor = clWhite
    FrameBottomRightInner = clSilver
    BtnSelectedColor = clBtnFace
    UnusedColor = clWhite
    Left = 752
    Top = 336
  end
end
