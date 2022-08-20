program DogaoProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmLogin in 'uFrmLogin.pas' {Form1},
  uDataModule in 'uDataModule.pas' {dm: TDataModule},
  ULista in 'ULista.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
