unit UFRM_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ActnCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnMenus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.Menus, Vcl.CustomizeDlg,
  Vcl.ActnColorMaps, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Acoes: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    ac_cadastro_Cliente: TAction;
    ac_cadastro_Produto: TAction;
    ac_cadastro_Usuario: TAction;
    ac_cadastro_Sair: TAction;
    ac_ajuda_Hep: TAction;
    ac_ajuda_InfSis: TAction;
    ac_consulta_Movimento: TAction;
    Ac_vendas_pdv: TAction;
    ac_relatorios_lista_clientes: TAction;
    ac_relatorios_venda_dia: TAction;
    ac_ultilitarios_bloco_de_notas: TAction;
    ac_ultilitarios_Calculadora: TAction;
    ac_ultilitarios_Calendario: TAction;
    ac_ultilitarios_internet: TAction;
    ac_seguranca_Logoff: TAction;
    ac_seguranca_perfil: TAction;
    barrapadrao: TActionToolBar;
    PopupMenu1: TPopupMenu;
    CustomizeDlg1: TCustomizeDlg;
    Personalizar1: TMenuItem;
    XPColorMap1: TXPColorMap;
    Button1: TButton;
    procedure Personalizar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UFRM_Modelo;

procedure TForm1.Button1Click(Sender: TObject);
begin
 FRM_Modelo.Show;
end;

procedure TForm1.Personalizar1Click(Sender: TObject);
begin  //Puxa o o op��o para customiza��o do menu
  CustomizeDlg1.Show;
end;

end.
