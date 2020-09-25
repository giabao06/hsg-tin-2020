//Cho 1 so in ket qua duoi dang doi xung sau khi xoa so le

program bt2;
const filein='bt2in.txt'; fileout='bt2out.txt';
var f:text; n,y:longint; s0,s1:shortstring;

procedure fread;
begin
 assign(f,filein);
 reset(f);
 readln(f,n);
 close(f);
end;

procedure xoale;
var i,tmp,x,code:longint;
begin

 str(n,s0);
 i:=1;
 while i<=length(s0) do
 begin
  val(s0[i],x,code);
  if x mod 2 <> 0 then delete(s0,i,1) else inc(i);
 end;
 val(s0,y,code);
end;

procedure out;
var i,tmp,sd,z,code:longint;  s2:shortstring;
begin
 assign(f,fileout);
 rewrite(f);
 z:=y;
 repeat
  tmp:=z mod 10;
  z:=z div 10;
  sd:=sd*10+tmp;
 until z=0;
 str(sd,s1);
 s2:=s0+s1;
 writeln(f,s2);
 close(f);
end;

begin
 fread;
 xoale;
 out;
end.