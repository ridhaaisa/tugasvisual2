unit diagram;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TPieSeries;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure charadd;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.charadd;
var i : integer;
begin
 Chart1.Series[0].Clear;
 
 for i := 1 to StringGrid1.RowCount-1 do
 begin
 Chart1.Series[0].Add(strtofloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
 end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount := 4;
StringGrid1.Cells[0,0] := 'NO';
StringGrid1.Cells[1,0] := 'JUMLAH TERDAFTAR';
StringGrid1.Cells[2,0] := 'FAKULTAS';
StringGrid1.Cells[3,0] := 'TAHUN ANGKATAN';

StringGrid1.ColWidths[0] := 20;
StringGrid1.ColWidths[1] := 170;
StringGrid1.ColWidths[2] := 80;
StringGrid1.ColWidths[3] := 150;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := edit1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := ComboBox2.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := ComboBox1.Text;
charadd;


end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b : integer;
begin
a:= StringGrid1.Selection.Bottom - StringGrid1.Selection.Top+1;
for b := StringGrid1.Selection.Bottom +1 to StringGrid1.RowCount-1 do
StringGrid1.Rows[b-a]:= StringGrid1.Rows[b];
StringGrid1.RowCount := StringGrid1.RowCount-1;
charadd;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount := 4;
StringGrid1.Cells[0,0] := 'NO';
StringGrid1.Cells[1,0] := 'JUMLAH TERDAFTAR';
StringGrid1.Cells[2,0] := 'FAKULTAS';
StringGrid1.Cells[3,0] := 'TAHUN ANGKATAN';

StringGrid1.ColWidths[0] := 20;
StringGrid1.ColWidths[1] := 170;
StringGrid1.ColWidths[2] := 100;
StringGrid1.ColWidths[3] := 150;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
StringGrid1.RowCount:= StringGrid1.RowCount-MAX_PATH;
charadd;
end;



end.
