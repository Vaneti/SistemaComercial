program SisComercio;

uses
  Vcl.Forms,
  UFRM_Principal in 'Formularios\UFRM_Principal.pas' {Form1},
  UDM_Principal in 'DataModulos\UDM_Principal.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
