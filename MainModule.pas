unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TUniMainModule = class(TUniGUIMainModule)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDConnection1: TFDConnection;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    FDQuery1a: TFDQuery;
    FMTBCDField1: TFMTBCDField;
    BCDField1: TBCDField;
    StringField1: TStringField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    StringField2: TStringField;
    FDQuery3: TFDQuery;
    DataSource3: TDataSource;
    FDQuery3s: TFDQuery;
    DataSource3s: TDataSource;
    FDQuery4: TFDQuery;
    DataSource4: TDataSource;
    FDQuery5: TFDQuery;
    DataSource5: TDataSource;
    FDQuery4ID_SEDE: TFMTBCDField;
    FDQuery4NOME_SEDE: TStringField;
    FDQuery5NROFILIAL: TFMTBCDField;
    FDQuery5RAZAO_SOCIAL: TStringField;
    FDQuery5ID_SEDE: TFMTBCDField;
    FDQuery1ID_CONTA: TFMTBCDField;
    FDQuery1ID_SEDE: TBCDField;
    FDQuery1NOME_BANCO: TStringField;
    FDQuery1NROCONTA: TBCDField;
    FDQuery1DIGCONTA: TBCDField;
    FDQuery1STATUS: TStringField;
    FDQuery1AGENCIA: TBCDField;
    FDQuery3sID_CONTA: TFMTBCDField;
    FDQuery3sID_SEDE: TBCDField;
    FDQuery3sNOME_BANCO: TStringField;
    FDQuery3sNROCONTA: TBCDField;
    FDQuery3sDIGCONTA: TBCDField;
    FDQuery3sSTATUS: TStringField;
    FDQuery3sAGENCIA: TBCDField;
    FDQuery2RAZAOSOCIAL: TStringField;
    FDQuery2s: TFDQuery;
    DataSource6: TDataSource;
    FDQuery2sNROEMPRESA: TBCDField;
    FDQuery2sFANTASIA: TStringField;
    FDQuery2sRAZAOSOCIAL: TStringField;
    FDQuery2sNOMEREDUZIDO: TStringField;
    FDQuery1d: TFDQuery;
    FDQuery3ID_CONTA: TFMTBCDField;
    FDQuery3DATA_LANCAMENTO: TDateTimeField;
    FDQuery3SALDONUM: TBCDField;
    FDQuery3SALDO: TStringField;
    FDQuery3d: TFDQuery;
    DataSource3d: TDataSource;
    FDQuery3dID_CONTA: TFMTBCDField;
    FDQuery3dDATA_LANCAMENTO: TDateTimeField;
    FDQuery3dSALDO: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
