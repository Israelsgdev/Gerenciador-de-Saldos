program SGSB;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Unit2 in 'Unit2.pas' {UniForm2: TUniForm},
  Unit3 in 'Unit3.pas' {UniForm3: TUniForm},
  Unit4 in 'Unit4.pas' {UniForm4: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
