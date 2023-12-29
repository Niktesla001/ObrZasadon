program ObrZasadon;

uses
  Forms,
  form_main in 'form_main.pas' {MainForm},
  myvar in 'myvar.pas',
  form_data in 'form_data.pas' {FormData},
  form_cALC in 'form_calc.pas' {FormCalc},
  form_graph in 'form_graph.pas' {FormGraph},
  form_about in 'form_about.pas' {FormAbout},
  forrm_Splash in 'forrm_Splash.pas' {FormSplash};
{$R *.res}

begin
  Application.Initialize;
  try
    FormSplash := TFormSplash.Create (Application);
    FormSplash.Show;
    FormSplash.Update;
    Application.HelpFile := 'kurs_example.chm';
    Application.Title := 'РАсчет обратной засечки';
    Application.CreateForm (TMainForm, MainForm);
    Application.CreateForm (TFormData, FormData);
    Application.CreateForm (TFormCalc, FormCalc);
    Application.CreateForm (TFormGraph, FormGraph);
    Application.CreateForm (TFormAbout, FormAbout);
  finally
    FormSplash.Free;
  end;
  Application.Run;
end.
