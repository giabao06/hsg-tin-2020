//In xâu con là số có tổng các p tử  lớn nhất

program bt3;

const filein='bt3in.txt'; fileout='bt3out.txt';

var f:text; s0:string;

function tachtong(x:int64):int64;
 var t,rem:int64;
 begin
  t:=0;
  repeat
   rem:= x mod 10;
   x:= x div 10;
   t:=t+rem;
  until x=0;
  tachtong:=t;
 end;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,s0);
  close(f);
 end;

procedure out;
 var s1start,s1end,s1copy,Ltotal,i:longint; n:int64; code:byte; s1:string;
 begin
  assign(f,fileout);
  rewrite(f);
  i:=1; Ltotal:=0;
  while i<=length(s0) do
  begin
   if s0[i] in [#48 .. #57] then
   begin
    s1start:=i;
    while s0[i+1] in [#48 .. #57] do inc(i);
    s1end:=i;
    s1copy:=(s1end-s1start)+1;
    s1:=copy(s0,s1start,s1copy);
    val(s1,n,code);
    if Ltotal < tachtong(n) then Ltotal:=tachtong(n);
    i:=s1end+1;
   end
   else inc(i);
  end;
  writeln(f,'String = ' ,s1);
  writeln(f,'Total = ' ,Ltotal);
  close(f);
 end;

begin
 read;
 out;
end.     
