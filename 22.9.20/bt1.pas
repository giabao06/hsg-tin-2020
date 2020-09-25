//Nhap s vua chu vua so

program bt1;
const filein='bt1in.txt'; fileout='bt1out.txt';
var f:text; s0:string;

function dx(x:longint):boolean;
var y,tmp,z:longint;
begin
 y:=x; tmp:=0;
 repeat
  z:=y mod 10;
  y:=y div 10;
  tmp:=tmp*10+z;
 until y=0;
 if tmp <> x then exit(false) else exit(true);
end;

function inv(x:longint):longint;
var y,tmp,z:longint;
begin
 y:=x; tmp:=0;
 repeat
  z:=y mod 10;
  y:=y div 10;
  tmp:=tmp*10+z;
 until y=0;
 inv:=tmp;
end;

procedure fread;
begin
 s0:='';
 assign(f,filein);
 reset(f);
 readln(f,s0);
 close(f);
end;

procedure out;
var i,x,code:longint; s1,st:string;
begin
 s1:='';
 assign(f,fileout);
 rewrite(f);
 for i:=1 to length(s0) do
 if s0[i] in ['0' .. '9'] then
 s1:=s1+s0[i];
 val(s1,x,code);
 if dx(x) then
 begin
  writeln(f,x);
  writeln(f,'Doi xung');
 end
 else
 begin
  writeln(f,x);
  writeln(f,inv(x));
 end;
 close(f);
end;

begin
 fread;
 out;
end.
