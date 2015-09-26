unit UDM_Principal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  Vcl.Controls, FireDAC.Comp.DataSet, FireDAC.Comp.UI, FireDAC.Phys.ODBCBase;

type
  TDm = class(TDataModule)
    con: TFDConnection;
    link: TFDPhysMSSQLDriverLink;
    cursor: TFDGUIxWaitCursor;
    qryLogin: TFDQuery;
    LoginIdUsuario: TIntegerField;
    ilcadastro: TImageList;
    traTransacoes: TFDTransaction;
    qryCliente: TFDQuery;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    qryProduto: TFDQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    qryUsuario: TFDQuery;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    qryPerfil: TFDQuery;
    dspPerfil: TDataSetProvider;
    cdsPerfil: TClientDataSet;
    qryVendas: TFDQuery;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    procedure cdsClienteAfterPost(DataSet: TDataSet);
    procedure cdsProdutoAfterPost(DataSet: TDataSet);
    procedure cdsUsuarioAfterPost(DataSet: TDataSet);
    procedure cdsPerfilAfterPost(DataSet: TDataSet);
    procedure cdsVendasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

uses
  Vcl.Dialogs;

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TDm.cdsClienteAfterPost(DataSet: TDataSet);
begin
  try
    cdsCliente.ApplyUpdates(0);
    cdsCliente.Refresh;
    MessageDlg('Cadastro com sucesso!', TMsgDlgType.mtConfirmation, [mbOK], 0);
  except
    MessageDlg('Erro ao fazer o o cadastro!', TMsgDlgType.mtError, [mbOK], 0);

  end;

end;

procedure TDm.cdsPerfilAfterPost(DataSet: TDataSet);
begin
  try
    cdsPerfil.ApplyUpdates(0);
    cdsPerfil.Refresh;
    MessageDlg('Cadastro com sucesso!', TMsgDlgType.mtConfirmation, [mbOK], 0);
  except
    MessageDlg('Erro ao fazer o o cadastro!', TMsgDlgType.mtError, [mbOK], 0);

  end;

end;

procedure TDm.cdsProdutoAfterPost(DataSet: TDataSet);
begin
  try
    cdsProduto.ApplyUpdates(0);
    cdsProduto.Refresh;
    MessageDlg('Cadastro com sucesso!', TMsgDlgType.mtConfirmation, [mbOK], 0);
  except
    MessageDlg('Erro ao fazer o o cadastro!', TMsgDlgType.mtError, [mbOK], 0);

  end;

end;

procedure TDm.cdsUsuarioAfterPost(DataSet: TDataSet);
begin
  try
    cdsUsuario.ApplyUpdates(0);
    cdsUsuario.Refresh;
    MessageDlg('Cadastro com sucesso!', TMsgDlgType.mtConfirmation, [mbOK], 0);
  except
    MessageDlg('Erro ao fazer o o cadastro!', TMsgDlgType.mtError, [mbOK], 0);

  end;

end;

procedure TDm.cdsVendasAfterPost(DataSet: TDataSet);
begin
  try
    cdsVendas.ApplyUpdates(0);
    cdsVendas.Refresh;
    MessageDlg('Cadastro com sucesso!', TMsgDlgType.mtConfirmation, [mbOK], 0);
  except
    MessageDlg('Erro ao fazer o o cadastro!', TMsgDlgType.mtError, [mbOK], 0);

  end;

end;

end.
