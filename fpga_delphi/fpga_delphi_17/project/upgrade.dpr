program upgrade;

uses
  Forms,
  Windows,
  Dialogs,
  mainframe in '..\source\mainframe.pas' {Form1};

{$R *.res}

begin
  g_form_mutex:=CreateMutex(nil,True,'fpga_upgrade_anywavecom');     //防止运行多个实例
  if GetLastError<>ERROR_ALREADY_EXISTS then
  begin
    Application.Initialize;
    Application.CreateForm(TForm1, Form1);
    Application.Run;
  end  
  else
  begin
    messagedlg('The program is already running!',mtInformation,[mbok],0);
  end;
end.
