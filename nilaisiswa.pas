unit nilaisiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edttotal: TEdit;
    Edtgrade: TEdit;
    Edtket: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var
nil1, nil2, nil3, nil4, nil5, hasil : real;
b1, b2, b3, b4, b5 : real;
grade, ket : string;
begin
//untuk pengambilan nilai
nil1 := strtofloat(edit1.Text);
nil2 := strtofloat(edit2.Text);
nil3 := strtofloat(edit3.Text);
nil4 := strtofloat(edit4.Text);
nil5 := strtofloat(edit5.Text);

//untuk pengambilan bobot
b1 := strtofloat(edit6.Text)/100;
b2 := strtofloat(edit7.Text)/100;
b3 := strtofloat(edit8.Text)/100;
b4 := strtofloat(edit9.Text)/100;
b5 := strtofloat(edit10.Text)/100;

//untuk menghitung nilai akhir
hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;

//mencari grade
if(hasil >= 80) then
grade := 'A'
else
if(hasil >= 70) then
grade := 'B'
else
if(hasil >= 60) then
grade := 'C'
else
if(hasil >= 50) then
grade := 'D'
else
grade := 'E';

//mencari keterangan
if ((grade = 'A')or(grade='B')or(grade='C'))then
ket :='LULUS'
else
ket :='TIDAK LULUS';

edttotal.Text := floattostr(hasil);
edtgrade.Text := grade;
edtket.Text := ket;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.Text := '';
edit2.Text := '';
edit3.Text := '';
edit4.Text := '';
edit5.Text := '';
edit6.Text := '';
edit7.Text := '';
edit8.Text := '';
edit9.Text := '';
edit10.Text := '';

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
