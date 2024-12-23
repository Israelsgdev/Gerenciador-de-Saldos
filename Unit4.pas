unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniButton, uniEdit, uniGUIBaseClasses,
  uniDateTimePicker;

type
  TUniForm4 = class(TUniForm)
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm4: TUniForm4;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm4: TUniForm4;
begin
  Result := TUniForm4(UniMainModule.GetFormInstance(TUniForm4));
end;

procedure TUniForm4.UniButton1Click(Sender: TObject);
var
  currentDate: TDateTime;
begin
  // Fechar a consulta e configurar a query principal
  unimainmodule.fdquery3.Close;
  unimainmodule.FDQuery3.SQL.Clear;
  unimainmodule.FDQuery3.SQL.Add('select id_conta, data_lancamento, saldo saldonum, ''R$ '' || round(saldo,2) as SALDO from isr_fin_contasaldo');
  unimainmodule.FDQuery3.SQL.Add('where 1=1');
  unimainmodule.FDQuery3.SQL.Add('and id_conta = :param_id_conta and data_lancamento = :param_data_lancamento order by data_lancamento desc');
  unimainmodule.FDQuery3.ParamByName('param_id_conta').AsFloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
  unimainmodule.FDQuery3.ParamByName('param_data_lancamento').AsDate := UniDateTimePicker1.DateTime;
  unimainmodule.FDQuery3.Open;

  if unimainmodule.fdquery3.Eof then
  begin
    // Iterar sobre as datas do intervalo
    currentDate := UniDateTimePicker1.DateTime;
    while currentDate <= UniDateTimePicker2.DateTime do
    begin

      unimainmodule.FDQuery1a.Close;
      unimainmodule.FDQuery1a.SQL.Clear;
      unimainmodule.FDQuery1a.SQL.Add('insert into isr_fin_contasaldo (id_conta, data_lancamento, saldo)');
      unimainmodule.FDQuery1a.SQL.Add('values (:param_id_conta, :param_data_lancamento, :param_saldo)');
      unimainmodule.FDQuery1a.ParamByName('param_id_conta').AsFloat := 12;
      unimainmodule.FDQuery1a.ParamByName('param_data_lancamento').AsDate := currentDate;
      unimainmodule.FDQuery1a.ParamByName('param_saldo').AsFloat := StrToFloat(UniEdit1.Text);
      unimainmodule.FDQuery1a.Execute;

      // Avançar para a próxima data
      currentDate := currentDate + 1;
    end;
    unimainmodule.FDConnection1.Commit;
    uniform4.close;
  end;

  // Atualizar a consulta principal para exibir os resultados
  unimainmodule.fdquery3.Close;
  unimainmodule.FDQuery3.SQL.Clear;
  unimainmodule.FDQuery3.SQL.Add('select id_conta, data_lancamento, saldo saldonum, ''R$ '' || round(saldo,2) as SALDO from isr_fin_contasaldo');
  unimainmodule.FDQuery3.SQL.Add('where id_conta = :param_id_conta');
  unimainmodule.FDQuery3.SQL.Add('order by data_lancamento desc');
  unimainmodule.FDQuery3.ParamByName('param_id_conta').AsFloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
  unimainmodule.FDQuery3.Open;
end;


procedure TUniForm4.UniButton2Click(Sender: TObject);
begin
  uniform4.close
end;

end.
