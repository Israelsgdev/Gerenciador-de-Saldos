unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniGUIBaseClasses,
  uniPanel, uniMultiItem, uniComboBox, UniFSCombobox, uniButton, uniLabel;

type
  TUniForm3 = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniButton1: TUniButton;
    UniFSComboBox1: TUniFSComboBox;
    UniLabel1: TUniLabel;
    UniPanel2: TUniPanel;
    UniLabel2: TUniLabel;
    UniFSComboBox2: TUniFSComboBox;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm3: TUniForm3;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm3: TUniForm3;
begin
  Result := TUniForm3(UniMainModule.GetFormInstance(TUniForm3));
end;

procedure TUniForm3.UniButton1Click(Sender: TObject);
begin
  unimainmodule.fdquery4.close;
  unimainmodule.fdquery4.SQL.Clear;
  unimainmodule.FDQuery4.SQL.Add('select * from isr_fin_sede');
  unimainmodule.FDQuery4.SQL.Add('where nome_sede = :param_nome_sede');
  unimainmodule.FDQuery4.ParamByName('param_nome_sede').AsString := unifscombobox1.Text;
  unimainmodule.FDQuery4.Open;

  if unimainmodule.FDQuery4.Eof then
  begin
     unimainmodule.FDQuery1a.Close;
    unimainmodule.FDQuery1a.SQL.Clear;
    unimainmodule.FDQuery1a.SQL.Add('insert into isr_fin_sede (id_sede,nome_sede) values (id_sede_financeiro.nextval,:param_nome_sede)');
    unimainmodule.FDQuery1a.ParamByName('param_nome_sede').AsString := unifscombobox1.Text;
    unimainmodule.FDQuery1a.execute;
    unimainmodule.FDConnection1.Commit;
    UniFSComboBox1.text :='';

  end;

  unimainmodule.fdquery2.close;
    unimainmodule.fdquery2.SQL.Clear;
    unimainmodule.FDQuery2.SQL.Add('select distinct razaosocial from ge_empresa where status = ''A'' and razaosocial not in (select nome_sede from isr_fin_sede)');
    unimainmodule.FDQuery2.Open;

    UniFSComboBox1.Items.Clear;

  while not unimainmodule.FDQuery2.eof do
      begin
       UniFSComboBox1.Items.Add(unimainmodule.FDQuery2RAZAOSOCIAL.Text);
       //UniFSComboBox1.ValueList.Add(unimainmodule.FDQuery2.FieldByName('nroempresa').AsString);
       unimainmodule.FDQuery2.next;
      end;

  unimainmodule.fdquery4.close;
  unimainmodule.fdquery4.SQL.Clear;
  unimainmodule.FDQuery4.SQL.Add('select * from isr_fin_sede order by id_sede');
  unimainmodule.FDQuery4.Open;

end;

procedure TUniForm3.UniButton2Click(Sender: TObject);
begin
  unimainmodule.fdquery5.close;
  unimainmodule.fdquery5.SQL.Clear;
  unimainmodule.FDQuery5.SQL.Add('select * from isr_fin_filial');
  unimainmodule.FDQuery5.SQL.Add('where nrofilial = :param_nrofilial');
  unimainmodule.FDQuery5.ParamByName('param_nrofilial').AsString := unifscombobox2.value;
  unimainmodule.FDQuery5.SQL.Add('order by id_sede,nrofilial');
  unimainmodule.FDQuery5.Open;

  if unimainmodule.FDQuery5.Eof then
  begin
     unimainmodule.FDQuery1a.Close;
    unimainmodule.FDQuery1a.SQL.Clear;
    unimainmodule.FDQuery1a.SQL.Add('insert into isr_fin_filial (nrofilial,razao_social,id_sede) values (:param_nrofilial,:param_razao_social,:param_id_sede)');
    unimainmodule.FDQuery1a.ParamByName('param_nrofilial').asfloat := strtofloat(unifscombobox2.Value);
    unimainmodule.FDQuery1a.ParamByName('param_razao_social').AsString := unifscombobox2.text;
    unimainmodule.FDQuery1a.ParamByName('param_id_sede').asfloat := strtofloat(unimainmodule.FDQuery4ID_SEDE.Text);
    unimainmodule.FDQuery1a.execute;
    unimainmodule.FDConnection1.Commit;
  end;

  unimainmodule.fdquery5.close;
  unimainmodule.fdquery5.SQL.Clear;
  unimainmodule.FDQuery5.SQL.Add('select * from isr_fin_filial');
  unimainmodule.FDQuery5.Open;

end;

procedure TUniForm3.UniButton3Click(Sender: TObject);
begin
  unimainmodule.FDQuery1d.close;
  unimainmodule.FDQuery1d.sql.Clear;
  unimainmodule.FDQuery1d.sql.Add('delete from isr_fin_filial where nrofilial = :param_nrofilial');
  unimainmodule.FDQuery1d.ParamByName('param_nrofilial').asfloat := unimainmodule.FDQuery5NROFILIAL.AsFloat;
  unimainmodule.FDQuery1d.Execute;
  unimainmodule.FDConnection1.Commit;

   unimainmodule.fdquery5.close;
  unimainmodule.fdquery5.SQL.Clear;
  unimainmodule.FDQuery5.SQL.Add('select * from isr_fin_filial');
  unimainmodule.FDQuery5.Open;

end;

procedure TUniForm3.UniButton4Click(Sender: TObject);
begin
    uniform3.Close;
   unimainmodule.fdquery1.close;
   unimainmodule.fdquery2.close;
   unimainmodule.fdquery3.close;
   unimainmodule.fdquery3s.close;
   unimainmodule.fdquery4.close;
   unimainmodule.fdquery5.close;
   unimainmodule.fdquery1a.close;
   unimainmodule.fdquery1d.close;
end;

procedure TUniForm3.UniFormShow(Sender: TObject);
begin
    UniFSComboBox1.text :='';
    UniFSComboBox2.text :='';
   unimainmodule.FDQuery1.Open;
   unimainmodule.FDQuery2.Open;
   unimainmodule.FDQuery3.Open;
   unimainmodule.FDQuery3s.Open;
   unimainmodule.FDQuery4.Open;
   unimainmodule.FDQuery5.Open;

   while not unimainmodule.FDQuery2.eof do
      begin
       UniFSComboBox1.Items.Add(unimainmodule.FDQuery2RAZAOSOCIAL.Text);
       //UniFSComboBox1.ValueList.Add(unimainmodule.FDQuery2.FieldByName('nroempresa').AsString);
       unimainmodule.FDQuery2.next;
      end;

   while not unimainmodule.FDQuery2s.eof do
      begin
       UniFSComboBox2.Items.Add(unimainmodule.FDQuery2sNOMEREDUZIDO.text);
       UniFSComboBox2.ValueList.Add(unimainmodule.FDQuery2s.FieldByName('nroempresa').AsString);
       unimainmodule.FDQuery2s.next;
      end;
  end;
end.
