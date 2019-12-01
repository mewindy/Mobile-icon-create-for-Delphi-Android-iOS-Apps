unit Uniticons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ExtDlgs,pngimage;

type
  TFormresize = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    RadioGroup1: TRadioGroup;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Formresize: TFormresize;
   sizex,sizey:integer;
   pic_empty, pic_stamp, pic_result :TPicture;
   r:TRect;
   png : TPNGObject;
   location:string;

implementation

{$R *.dfm}
procedure doit;
begin
  r.Left := 0;
  r.Top := 0;
  r.Right := r.Left + sizex;
  r.Bottom := r.Top + sizey;

  pic_result := tpicture.Create;
  pic_result.Bitmap.Assign(pic_empty.Graphic);
  pic_result.Graphic.Transparent := True;
  pic_result.Bitmap.Canvas.StretchDraw(r,pic_stamp.Graphic);
  pic_result.Bitmap.Width :=sizex;
  pic_result.Bitmap.Height:=sizey;

  png := TPNGObject.Create;
  png.Assign(pic_result.Bitmap);
  if Formresize.RadioGroup1.ItemIndex=0  //android
   then
 begin
  png.SaveToFile(location+'androidlogo'+inttostr(sizex)+'x'+inttostr(sizey)+'.png');
  Formresize.label1.caption:=location+'androidlogo'+inttostr(sizex)+'x'+inttostr(sizey)+'.png';
  Formresize.label1.Update;
 end
  else
begin
  png.SaveToFile(location+'iOSlogo'+inttostr(sizex)+'x'+inttostr(sizey)+'.png');
  Formresize.label1.caption:=location+'iOSlogo'+inttostr(sizex)+'x'+inttostr(sizey)+'.png';
  Formresize.label1.Update;

end;



  png.Free;
  pic_result.Free;
end;

procedure TFormresize.Button1Click(Sender: TObject);

begin
if opendialog1.Execute then
begin


  image1.Picture.LoadFromFile(opendialog1.filename);
end;
end;

procedure TFormresize.Button2Click(Sender: TObject);
var tempstr,tempstr2:string;
i,ii:integer;

begin
 label2.Caption:='---';
tempstr:=opendialog1.filename;
for i:=1 to length(tempstr)
do
begin
  if copy(tempstr,i,1)='\' then
  ii:=i;
end;
location:=copy(tempstr,1,ii);

   if RadioGroup1.ItemIndex=0  //android
   then
     begin


 try
  pic_stamp := TPicture.Create;
  pic_stamp.assign(image1.picture);
  pic_stamp.Graphic.Transparent := True;

  pic_empty := TPicture.Create;

  pic_empty.assign(image2.Picture);

  pic_empty.Bitmap.Width :=2732;
  pic_empty.Bitmap.Height:=2732;


  sizex:=24;
  sizey:=24;
  doit;

  sizex:=36;
  sizey:=36;
  doit;

  sizex:=48;
  sizey:=48;
  doit;

  sizex:=72;
  sizey:=72;
  doit;

  sizex:=96;
  sizey:=96;
  doit;

  sizex:=144;
  sizey:=144;
  doit;

  sizex:=426;
  sizey:=320;
  doit;

  sizex:=470;
  sizey:=320;
  doit;

  sizex:=640;
  sizey:=480;
  doit;

  sizex:=960;
  sizey:=720;
  doit;


 finally
  pic_empty.Free;
  pic_stamp.free;
 end;






     end
     else
     begin

 try
  pic_stamp := TPicture.Create;
  pic_stamp.assign(image1.picture);
  pic_stamp.Graphic.Transparent := True;

  pic_empty := TPicture.Create;
  pic_empty.assign(image2.Picture);

 pic_empty.Bitmap.Width :=2732;
 pic_empty.Bitmap.Height:=2732;


  sizex:=72;
  sizey:=72;
  doit;

  sizex:=76;
  sizey:=76;
  doit;

  sizex:=144;
  sizey:=144;
  doit;

  sizex:=152;
  sizey:=152;
  doit;

  sizex:=167;
  sizey:=167;
  doit;

  sizex:=768;
  sizey:=1004;
  doit;

  sizex:=768;
  sizey:=1024;
  doit;

  sizex:=1024;
  sizey:=768;
  doit;

  sizex:=1024;
  sizey:=748;
  doit;

  sizex:=1536;
  sizey:=2048;
  doit;

  sizex:=2048;
  sizey:=1536;
  doit;

  sizex:=2048;
  sizey:=1496;
  doit;

  sizex:=1668;
  sizey:=2224;
  doit;

  sizex:=1668;
  sizey:=2388;
  doit;

  sizex:=2388;
  sizey:=1668;
  doit;

  sizex:=2048;
  sizey:=2732;
  doit;

  sizex:=2732;
  sizey:=2048;
  doit;

  sizex:=40;
  sizey:=40;
  doit;

  sizex:=50;
  sizey:=50;
  doit;

  sizex:=80;
  sizey:=80;
  doit;

  sizex:=100;
  sizey:=100;
  doit;

  sizex:=29;
  sizey:=29;
  doit;

  sizex:=58;
  sizey:=58;
  doit;

  sizex:=57;
  sizey:=57;
  doit;

  sizex:=60;
  sizey:=60;
  doit;

  sizex:=87;
  sizey:=87;
  doit;

  sizex:=114;
  sizey:=114;
  doit;

  sizex:=120;
  sizey:=120;
  doit;

  sizex:=180;
  sizey:=180;
  doit;

  sizex:=320;
  sizey:=480;
  doit;

  sizex:=640;
  sizey:=960;
  doit;

  sizex:=640;
  sizey:=1136;
  doit;

  sizex:=1136;
  sizey:=640;
  doit;

  sizex:=750;
  sizey:=1334;
  doit;

  sizex:=1334;
  sizey:=750;
  doit;

  sizex:=828;
  sizey:=1792;
  doit;

  sizex:=1792;
  sizey:=828;
  doit;

  sizex:=1125;
  sizey:=2436;
  doit;

  sizex:=2436;
  sizey:=1125;
  doit;

  sizex:=1242;
  sizey:=2208;
  doit;

  sizex:=2208;
  sizey:=1242;
  doit;

  sizex:=1242;
  sizey:=2688;
  doit;

  sizex:=2688;
  sizey:=1242;
  doit;


  sizex:=1536;
  sizey:=2008;
  doit;

  sizex:=2224;
  sizey:=1668;
  doit;

  sizex:=29;
  sizey:=29;
  doit;

  sizex:=40;
  sizey:=40;
  doit;

  sizex:=58;
  sizey:=58;
  doit;

  sizex:=80;
  sizey:=80;
  doit;

  sizex:=120;
  sizey:=120;
  doit;

 finally
  pic_empty.Free;
  pic_stamp.free;
 end;


     end;
label2.Caption:='complete!';
end;

end.
