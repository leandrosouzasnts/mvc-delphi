program ConexaoMVC;

uses
  Vcl.Forms,
  View.Main in 'View\View.Main.pas' {Form1},
  ConexaoMVC.Model.Connections.FireDac in 'Model\ConexaoMVC.Model.Connections.FireDac.pas',
  ConexaoMVC.Model.Interfaces.Connections in 'Model\ConexaoMVC.Model.Interfaces.Connections.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
