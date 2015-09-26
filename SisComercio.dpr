program SisComercio;

uses
  Vcl.Forms,
  UFRM_Principal in 'Formularios\UFRM_Principal.pas' {Form1},
  UDM_Principal in 'DataModulos\UDM_Principal.pas' {Dm: TDataModule},
  UFRM_Modelo in 'Formularios\01-Cadastros\UFRM_Modelo.pas' {FRM_Modelo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFRM_Modelo, FRM_Modelo);
  Application.Run;
end.
