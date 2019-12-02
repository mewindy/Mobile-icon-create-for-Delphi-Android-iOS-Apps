program Projecticons;

uses
  Vcl.Forms,
  Uniticons in 'Uniticons.pas' {Formresize};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormresize, Formresize);
  Application.Run;
end.
