program lptv;

uses
  Forms,
  main in '..\source\main.pas' {Form1},
  lptv_type in '..\source\lptv_type.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
