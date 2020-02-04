unit DiceRoller;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    ImageList1: TImageList;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  bmp : TBitMap;
begin
  bmp := TBitMap.Create;
  ImageList1.GetBitMap(0, bmp);
  Image1.Picture.Assign(bmp);
  bmp.Free;

end;

end.

