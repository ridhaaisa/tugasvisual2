unit kalkulator;

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
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Label4: TLabel;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
begin
Edit3.Text:=IntToStr(StrToInt(Edit1.Text)+StrToInt(Edit2.Text));
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
 Edit3.Text:=IntToStr(StrToInt(Edit1.Text)-StrToInt(Edit2.Text));

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Edit3.Text:=IntToStr(StrToInt(Edit1.Text) * StrToInt(Edit2.Text));

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit3.Text:=IntToStr(StrToInt(Edit1.Text)-StrToInt(Edit2.Text));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
