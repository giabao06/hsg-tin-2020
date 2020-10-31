program bt1;
const filein='bt1in.txt'; fileout='bt1out.txt';
var m,n:longint; a0:array[1..100] of longint; f:text;

procedure fread;
var i:longint;
begin
 assign(f,filein);
 reset(f);
 readln(f,m,n);
 for i:=1 to m do read(f,a0[i]);
 close(f);
 //for i:=1 to m do write(a0[i],#32);
end;

procedure out;
var iback,jback,t,i,j,large:longint;
begin
 large:=0; t:=0;
 assign(f,fileout);
 rewrite(f);
 for i:=1 to (m-n)+1 do
 begin
  t:=a0[i];
  for j:=i+1 to (n+i-1) do
  begin
   t:=t+a0[j];
  end;
  if large<t then
  begin
   large:=t;
   iback:=i;
   jback:=j;
  end;
 end;
 for i:=iback to jback do write (f,a0[i],#32);
 writeln(f);
 write(f,large);
 close(f);
end;

begin
 fread;
 out;
end.
