unit UDM_principal1;

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
  TDM = class(TDataModule)
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
    cdsClienteIDcliente: TAutoIncField;
    cdsClienteNOME: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteCIDADE: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteEMAIL: TStringField;
    cdsClienteTELEFONE: TStringField;
    qryProduto: TFDQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    qryUsuario: TFDQuery;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    AutoIncField2: TAutoIncField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    qryPerfil: TFDQuery;
    dspPerfil: TDataSetProvider;
    cdsPerfil: TClientDataSet;
    AutoIncField3: TAutoIncField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    qryVendas: TFDQuery;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    AutoIncField4: TAutoIncField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    procedure cdsClienteAfterPost(DataSet: TDataSet);
    procedure cdsProdutoAfterPost(DataSet: TDataSet);
    procedure cdsUsuarioAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  Vcl.Dialogs;

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TDM.cdsClienteAfterPost(DataSet: TDataSet);
begin   //Retirar as informações da memoria e inserir no banco e aplica um atulização em seguida para verificação
  try
    cdsCliente.ApplyUpdates(0);
    cdsCliente.Refresh;
    MessageDlg('Registros cadastrados com sucesso!', TMsgDlgType.mtInformation,
      [mbOK], 0);
  Except
    MessageDlg('Erro ao cadastrar registro!', TMsgDlgType.mtError, [mbOK], 0);

  end;
end;

procedure TDM.cdsProdutoAfterPost(DataSet: TDataSet);
begin  //Retirar as informações da memoria e inserir no banco e aplica um atulização em seguida para verificação
  try
    cdsProduto.ApplyUpdates(0);
    cdsProduto.Refresh;
    MessageDlg('Registros cadastrados com sucesso!', TMsgDlgType.mtInformation,
      [mbOK], 0);
  Except
    MessageDlg('Erro ao cadastrar registro!', TMsgDlgType.mtError, [mbOK], 0);

  end;
end;

procedure TDM.cdsUsuarioAfterPost(DataSet: TDataSet);
begin    //Retirar as informações da memoria e inserir no banco e aplica um atulização em seguida para verificação
  try
    cdsUsuario.ApplyUpdates(0);
    cdsUsuario.Refresh;
    MessageDlg('Registros cadastrados com sucesso!', TMsgDlgType.mtInformation,
      [mbOK], 0);
  Except
    MessageDlg('Erro ao cadastrar registro!', TMsgDlgType.mtError, [mbOK], 0);

  end;
end;

end.
