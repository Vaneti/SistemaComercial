unit UFRM_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TFRM_Modelo = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    ac_incluir: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Modelo: TFRM_Modelo;

implementation

{$R *.dfm}

end.
