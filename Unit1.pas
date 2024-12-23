unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, uniMultiItem, uniComboBox, UniFSCombobox,
  uniButton, uniLabel;

type
  TUniForm1 = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniEdit1: TUniEdit;
    UniEdit4: TUniEdit;
    UniFSComboBox1: TUniFSComboBox;
    UniEdit3: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniEdit2: TUniEdit;
    UniButton3: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.UniButton1Click(Sender: TObject);
begin
  unimainmodule.FDQuery1.Close;
  unimainmodule.FDQuery1.SQL.Clear;
  unimainmodule.FDQuery1.SQL.Add('select * from isr_fin_contacorrente');
  unimainmodule.FDQuery1.SQL.Add('where 1=1');
  unimainmodule.FDQuery1.SQL.Add('and id_sede = :param_id_sede and nroconta = :param_nroconta');
  unimainmodule.FDQuery1.SQL.Add('order by id_conta');
  unimainmodule.FDQuery1.parambyname('param_id_sede').AsString := unifscombobox1.Value;
  unimainmodule.FDQuery1.parambyname('param_nroconta').AsString := uniedit2.Text;
  unimainmodule.FDQuery1.Open;

  if unimainmodule.FDQuery1.Eof then
  begin
  unimainmodule.FDQuery1a.Close;
  unimainmodule.FDQuery1a.SQL.Clear;
  unimainmodule.FDQuery1a.SQL.Add('insert into isr_fin_contacorrente (id_conta, id_sede, nome_banco, nroconta, digconta, agencia)');
  unimainmodule.FDQuery1a.SQL.Add('values (id_conta_financeiro.nextval, :param_id_sede, :param_nome_banco, :param_nroconta, :param_digconta, :param_agencia)');
  unimainmodule.FDQuery1a.parambyname('param_id_sede').AsString  := unifscombobox1.Value;
  unimainmodule.FDQuery1a.parambyname('param_nome_banco').AsString := UpperCase(uniedit1.Text);
  unimainmodule.FDQuery1a.parambyname('param_nroconta').AsString := uniedit2.Text;
  unimainmodule.FDQuery1a.parambyname('param_digconta').AsString := uniedit3.Text;
  unimainmodule.FDQuery1a.parambyname('param_agencia').AsString := uniedit4.Text;
  unimainmodule.FDQuery1a.execute;
  unimainmodule.FDConnection1.Commit;
  end;

  unimainmodule.FDQuery1.Close;
  unimainmodule.FDQuery1.SQL.Clear;
  unimainmodule.FDQuery1.SQL.Add('select * from isr_fin_contacorrente order by id_conta');
  unimainmodule.FDQuery1.Open;
end;

procedure TUniForm1.UniButton2Click(Sender: TObject);
begin
   if unimainmodule.FDQuery1STATUS.AsString = 'A' then
  begin
  unimainmodule.FDQuery1a.Close;
  unimainmodule.FDQuery1a.sql.Clear;
  unimainmodule.FDQuery1a.sql.Add('UPDATE isr_fin_contacorrente SET STATUS = ''I'' WHERE id_conta = :param_id_conta');
  unimainmodule.FDQuery1a.ParamByName('param_id_conta').asfloat := unimainmodule.FDQuery1.FieldByName('id_conta').asfloat;
  unimainmodule.FDQuery1a.execute;
  unimainmodule.FDConnection1.Commit;
  end
  else
  begin
   unimainmodule.FDQuery1a.Close;
  unimainmodule.FDQuery1a.sql.Clear;
  unimainmodule.FDQuery1a.sql.Add('UPDATE isr_fin_contacorrente SET STATUS = ''A'' WHERE id_conta = :param_id_conta');
  unimainmodule.FDQuery1a.ParamByName('param_id_conta').asfloat := unimainmodule.FDQuery1.FieldByName('id_conta').AsFloat;
  unimainmodule.FDQuery1a.execute;
  unimainmodule.FDConnection1.Commit;
  end;

  unimainmodule.FDQuery1.Close;
  unimainmodule.FDQuery1.SQL.Clear;
  unimainmodule.FDQuery1.SQL.Add('select * from isr_fin_contacorrente');
  unimainmodule.FDQuery1.SQL.Add('order by id_conta');
  unimainmodule.FDQuery1.Open;
end;

procedure TUniForm1.UniButton3Click(Sender: TObject);
begin
  uniform1.close;
    unimainmodule.fdquery1.close;
   unimainmodule.fdquery2.close;
   unimainmodule.fdquery3.close;
   unimainmodule.fdquery3s.close;
   unimainmodule.fdquery4.close;
   unimainmodule.fdquery5.close;
   unimainmodule.fdquery1a.close;
   unimainmodule.fdquery1d.close;
end;

procedure TUniForm1.UniFormShow(Sender: TObject);
  begin
    UniFSComboBox1.text :='';
   unimainmodule.FDQuery1.Open;
   unimainmodule.FDQuery2.Open;
   unimainmodule.FDQuery3.Open;
   unimainmodule.FDQuery3s.Open;
   unimainmodule.FDQuery4.Open;
   unimainmodule.FDQuery5.Open;


   while not unimainmodule.FDQuery4.eof do
      begin
       UniFSComboBox1.Items.Add(unimainmodule.FDQuery4NOME_SEDE.Text);
       UniFSComboBox1.ValueList.Add(unimainmodule.FDQuery4.FieldByName('id_sede').AsString);
       unimainmodule.FDQuery4.next;
      end;
  end;

end.
