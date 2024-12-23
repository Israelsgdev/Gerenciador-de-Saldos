unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Vcl.Menus, uniMainMenu,
  uniGUIBaseClasses, uniTreeView, uniTreeMenu, Vcl.Imaging.jpeg, uniImage;

type
  TMainForm = class(TUniForm)
    UniTreeMenu1: TUniTreeMenu;
    UniMenuItems1: TUniMenuItems;
    EnviarSaldos1: TUniMenuItem;
    Saldo1: TUniMenuItem;
    UniImage1: TUniImage;
    MapaFluxodeCaixa1: TUniMenuItem;
    N1: TUniMenuItem;
    CadastroSedeFilial1: TUniMenuItem;
    procedure EnviarSaldos1Click(Sender: TObject);
    procedure Saldo1Click(Sender: TObject);
    procedure CadastroSedeFilial1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1, Unit2, Unit3;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.CadastroSedeFilial1Click(Sender: TObject);
begin
  uniform3.showmodal;
end;

procedure TMainForm.EnviarSaldos1Click(Sender: TObject);
begin
    uniform1.showmodal;
end;

procedure TMainForm.Saldo1Click(Sender: TObject);
begin
   uniform2.showmodal;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
