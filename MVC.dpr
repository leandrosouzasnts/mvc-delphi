program MVC;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {Form1},
  Model.Services.Boletos in 'src\Model\Services\Model.Services.Boletos.pas',
  Model.Services.Interfaces in 'src\Model\Services\Model.Services.Interfaces.pas',
  Model.Services.NFe in 'src\Model\Services\Model.Services.NFe.pas',
  Model.Integrations.MercadoPago in 'src\Model\Integrations\Model.Integrations.MercadoPago.pas',
  Model.Integrations.Interfaces in 'src\Model\Integrations\Model.Integrations.Interfaces.pas',
  Model.Integrations.SiteMercado in 'src\Model\Integrations\Model.Integrations.SiteMercado.pas',
  Model.Services in 'src\Model\Services\Model.Services.pas',
  Model.Integrations in 'src\Model\Integrations\Model.Integrations.pas',
  Model.Interfaces in 'src\Model\Model.Interfaces.pas',
  Model in 'src\Model\Model.pas',
  Controller.Interfaces in 'src\Controller\Controller.Interfaces.pas',
  Controller in 'src\Controller\Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
