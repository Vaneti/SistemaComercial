unit UFRM_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ToolWin, System.ImageList, Vcl.ImgList, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFRM_Modelo = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    ac_imprimir: TAction;
    ac_consultar: TAction;
    ac_excluir: TAction;
    ac_alterar: TAction;
    ac_incluir: TAction;
    ac_gravar: TAction;
    ac_cancelar: TAction;
    ac_Fechar: TAction;
    imcadastro: TImageList;
    ToolBar1: TToolBar;
    manuteno1: TMenuItem;
    Incluir1: TMenuItem;
    E1: TMenuItem;
    Alterar1: TMenuItem;
    Consultar1: TMenuItem;
    acimprimir1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Fechar2: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    PageControl1: TPageControl;
    tbCadatro: TTabSheet;
    tbConuslta: TTabSheet;
    Panel1: TPanel;
    cbxField: TComboBox;
    edtValor: TEdit;
    btnPesquisar: TBitBtn;
    DBGrid1: TDBGrid;
    lblCampo: TLabel;
    lblvalor: TLabel;
    ds: TDataSource;
    procedure ac_incluirExecute(Sender: TObject);
    procedure ac_excluirExecute(Sender: TObject);
    procedure ac_alterarExecute(Sender: TObject);
    procedure ac_consultarExecute(Sender: TObject);
    procedure ac_imprimirExecute(Sender: TObject);
    procedure ac_gravarExecute(Sender: TObject);
    procedure ac_cancelarExecute(Sender: TObject);
    procedure ac_FecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Modelo: TFRM_Modelo;

implementation

{$R *.dfm}

procedure TFRM_Modelo.ac_alterarExecute(Sender: TObject);
begin
  PageControl1.ActivePage := tbCadatro;
  ds.DataSet.Edit;
end;

procedure TFRM_Modelo.ac_cancelarExecute(Sender: TObject);
begin
  ds.DataSet.Cancel;
  PageControl1.ActivePage := tbConuslta;
end;

procedure TFRM_Modelo.ac_consultarExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = tbConuslta then
    PageControl1.ActivePage := tbCadatro
  else
    PageControl1.ActivePage := tbConuslta;

end;

procedure TFRM_Modelo.ac_excluirExecute(Sender: TObject);
begin
  ds.DataSet.Delete;
end;

procedure TFRM_Modelo.ac_FecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFRM_Modelo.ac_gravarExecute(Sender: TObject);
begin
  ds.DataSet.Post;
  PageControl1.ActivePage := tbConuslta;
end;

procedure TFRM_Modelo.ac_imprimirExecute(Sender: TObject);
begin
  ShowMessage('implementação futura');
end;

procedure TFRM_Modelo.ac_incluirExecute(Sender: TObject);
begin
  PageControl1.ActivePage := tbCadatro;
  if not ds.DataSet.Active then
    ds.DataSet.Open;
  ds.DataSet.Insert;
end;

end.
