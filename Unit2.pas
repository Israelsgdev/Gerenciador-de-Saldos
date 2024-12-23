unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniEdit, uniLabel, uniBasicGrid,
  uniDBGrid, uniGUIBaseClasses, uniPanel, uniButton;

type
  TUniForm2 = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniDBGrid2: TUniDBGrid;
    UniLabel4: TUniLabel;
    UniButton1: TUniButton;
    UniLabel5: TUniLabel;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGrid1BodyClick(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm2: TUniForm2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit4;

function UniForm2: TUniForm2;
begin
  Result := TUniForm2(UniMainModule.GetFormInstance(TUniForm2));
end;

procedure TUniForm2.UniButton1Click(Sender: TObject);
  begin



  unimainmodule.fdquery3.Close;
  unimainmodule.FDQuery3.SQL.Clear;
  unimainmodule.FDQuery3.SQL.Add('select id_conta, data_lancamento,saldo saldonum, ''R$ '' || round(saldo,2) as SALDO from isr_fin_contasaldo');
  unimainmodule.FDQuery3.SQL.Add('where 1=1');
  unimainmodule.FDQuery3.SQL.Add('and id_conta = :param_id_conta and data_lancamento = :param_data_lancamento  order by data_lancamento desc');
  unimainmodule.FDQuery3.ParamByName('param_id_conta').AsFloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
  unimainmodule.FDQuery3.ParamByName('param_data_lancamento').AsDate := unidatetimepicker1.DateTime;
  //unimainmodule.FDQuery3.ParamByName('param_saldo').asfloat := strtofloat(uniedit1.Text);
  unimainmodule.FDQuery3.Open;

  if unimainmodule.fdquery3.eof then
  begin
    unimainmodule.FDQuery1a.Close;
    unimainmodule.FDQuery1a.SQL.Clear;
    unimainmodule.FDQuery1a.sql.Add('insert into isr_fin_contasaldo (id_conta,data_lancamento,saldo)');
    unimainmodule.FDQuery1a.sql.Add('values (:param_id_conta,:param_data_lancamento,:param_saldo)');
    unimainmodule.FDQuery1a.ParamByName('param_id_conta').AsFloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
    unimainmodule.FDQuery1a.ParamByName('param_data_lancamento').AsDate := unidatetimepicker1.DateTime;
    unimainmodule.FDQuery1a.ParamByName('param_saldo').asfloat := strtofloat(uniedit1.Text);
    unimainmodule.FDQuery1a.Execute;
    unimainmodule.FDConnection1.Commit;
  end;

    unimainmodule.fdquery3.Close;
    unimainmodule.FDQuery3.SQL.Clear;
    unimainmodule.FDQuery3.SQL.Add('select id_conta, data_lancamento,saldo saldonum, ''R$ '' || round(saldo,2) as SALDO from isr_fin_contasaldo');
    unimainmodule.FDQuery3.SQL.Add('where id_conta = :param_id_conta');
    unimainmodule.FDQuery3.SQL.Add('order by data_lancamento desc');
    unimainmodule.FDQuery3.ParamByName('param_id_conta').asfloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
    unimainmodule.FDQuery3.Open;

end;

procedure TUniForm2.UniButton2Click(Sender: TObject);
begin

    unimainmodule.fdquery1a.Close;
    unimainmodule.FDQuery1a.SQL.Clear;
    unimainmodule.FDQuery1a.SQL.Add('UPDATE isr_fin_contasaldo SET SALDO = :param_saldo WHERE id_conta = :param_id_conta and data_lancamento = :param_data_lancamento');
    unimainmodule.FDQuery1a.ParamByName('param_id_conta').asfloat := unimainmodule.FDQuery3.FieldByName('id_conta').asfloat;
    unimainmodule.FDQuery1a.ParamByName('param_data_lancamento').AsDate := StrToDate(unimainmodule.FDQuery3.FieldByName('data_lancamento').Text);
    unimainmodule.FDQuery1a.ParamByName('param_saldo').asfloat := strtofloat(uniedit1.text);
    unimainmodule.FDQuery1a.Execute;
    unimainmodule.FDConnection1.Commit;


     unimainmodule.fdquery3.Close;
    unimainmodule.FDQuery3.SQL.Clear;
    unimainmodule.FDQuery3.SQL.Add('select id_conta, data_lancamento,saldo saldonum, ''R$ '' || round(saldo,2) as SALDO from isr_fin_contasaldo');
    unimainmodule.FDQuery3.SQL.Add('where id_conta = :param_id_conta');
    unimainmodule.FDQuery3.SQL.Add('order by data_lancamento desc');
    unimainmodule.FDQuery3.ParamByName('param_id_conta').asfloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
    unimainmodule.FDQuery3.Open;

end;

procedure TUniForm2.UniButton3Click(Sender: TObject);
begin



      unimainmodule.FDQuery1a.Close;
      unimainmodule.FDQuery1a.SQL.Clear;
      unimainmodule.FDQuery1a.SQL.Add('delete from isr_fin_contasaldo where id_conta = :param_id_conta and data_lancamento = :param_data_lancamento and saldo = :param_saldo');
      unimainmodule.FDQuery1a.ParamByName('param_id_conta').AsFloat := unimainmodule.FDQuery3.FieldByName('id_conta').AsFloat;
      unimainmodule.FDQuery1a.ParamByName('param_data_lancamento').AsDateTime := unimainmodule.FDQuery3DATA_LANCAMENTO.AsDateTime;
      unimainmodule.FDQuery1a.ParamByName('param_saldo').AsFloat := unimainmodule.FDQuery3.FieldByName('saldonum').AsFloat;
      unimainmodule.FDQuery1a.Execute;
     unimainmodule.FDConnection1.Commit;


    unimainmodule.fdquery3.Close;
    unimainmodule.FDQuery3.SQL.Clear;
    unimainmodule.FDQuery3.SQL.Add('select id_conta, data_lancamento,saldo saldonum, ''R$ '' || round(saldo,2) as SALDO from isr_fin_contasaldo');
    unimainmodule.FDQuery3.SQL.Add('where id_conta = :param_id_conta');
    unimainmodule.FDQuery3.SQL.Add('order by data_lancamento desc');
    unimainmodule.FDQuery3.ParamByName('param_id_conta').asfloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
    unimainmodule.FDQuery3.Open;

end;


procedure TUniForm2.UniButton4Click(Sender: TObject);
begin
  uniform2.Close;
    unimainmodule.fdquery1.close;
   unimainmodule.fdquery2.close;
   unimainmodule.fdquery3.close;
   unimainmodule.fdquery3s.close;
   unimainmodule.fdquery4.close;
   unimainmodule.fdquery5.close;
   unimainmodule.fdquery1a.close;
   unimainmodule.fdquery1d.close;
end;

procedure TUniForm2.UniButton5Click(Sender: TObject);
begin
  uniform4.showmodal;

end;

procedure TUniForm2.UniDBGrid1BodyClick(Sender: TObject);
begin
    unimainmodule.fdquery3.Close;
    unimainmodule.FDQuery3.SQL.Clear;
    unimainmodule.FDQuery3.SQL.Add('select id_conta, data_lancamento,saldo saldonum, ''R$ '' || round(saldo,2) as SALDO from isr_fin_contasaldo');
    unimainmodule.FDQuery3.SQL.Add('where id_conta = :param_id_conta');
    unimainmodule.FDQuery3.SQL.Add('order by data_lancamento desc');
    unimainmodule.FDQuery3.ParamByName('param_id_conta').asfloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
    unimainmodule.FDQuery3.Open;



end;

procedure TUniForm2.UniFormShow(Sender: TObject);
begin
   unimainmodule.FDQuery1.Open;
   unimainmodule.FDQuery2.Open;
   unimainmodule.FDQuery3.Open;
   unimainmodule.FDQuery3s.Open;
   unimainmodule.FDQuery4.Open;
   unimainmodule.FDQuery5.Open;
    unimainmodule.fdquery3.Close;
    unimainmodule.FDQuery3.SQL.Clear;
    unimainmodule.FDQuery3.SQL.Add('select id_conta, data_lancamento,saldo saldonum, ''R$ '' || round(saldo,2) as SALDO from isr_fin_contasaldo');
    unimainmodule.FDQuery3.SQL.Add('where id_conta = :param_id_conta');
    unimainmodule.FDQuery3.SQL.Add('order by data_lancamento desc');
    unimainmodule.FDQuery3.ParamByName('param_id_conta').asfloat := unimainmodule.FDQuery3sID_CONTA.AsFloat;
    unimainmodule.FDQuery3.Open;

end;

end.
