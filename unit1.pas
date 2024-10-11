unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

uses
  unit2, unit3;

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  Num1, Num2, Num3, Num4, Media: Double;
begin
  // Verifica se os campos estão preenchidos
  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') then
  begin
    ShowMessage('Por favor, preencha todos os campos.');
    Exit;
  end;

  // Converte os textos para números
  Num1 := StrToFloat(Edit1.Text);
  Num2 := StrToFloat(Edit2.Text);
  Num3 := StrToFloat(Edit3.Text);
  Num4 := StrToFloat(Edit4.Text);

  // Calcula a média
  Media := (Num1 + Num2 + Num3 + Num4) / 4;

  // Verifica a média e envia para o formulário correspondente
  if Media < 5.9 then
  begin
    Form2.Show;
    Form1.Hide; // Supondo que Form2 é o formulário atual
  end
  else
  begin
    Form3.Show;
    Form1.Hide; // Supondo que Form2 é o formulário atual
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Self.Position := poScreenCenter;
end;

end.

