//In so le va doi ra binary

PROGRAM btarr5;
type arr=ARRAY[1..100] OF LONGINT;
var f:text; n:LONGINT; a:arr;
const filein='btarr5in.txt'; fileout='btarr5out.txt';

FUNCTION binary(x,y:longint):longint;
  VAR
    rem,code:longint;
    s0,s1:STRING;
    num:LONGINT;
BEGIN
  s0:='';
  repeat
    rem:=x mod y;
    x:= x div y;
    str(rem,s1);
    s0:=s1+s0;
  until x=0;
  val(s0,num,code);
  binary:=num;
END;

PROCEDURE fread;
var i:LONGINT;
BEGIN
  assign(f,filein);
  reset(f);
  readln(f,n);
  for i:=1 to n do read(f,a[i]);
  close(f);
END;

procedure out;
var i,t:LONGINT;
  begin
    assign(f,fileout);
    rewrite(f);
    t:=0;
    for i:=1 to n do if a[i] mod 2 <> 0 then t:=t+a[i];
    if t=0 then writeln('Khong co so le') else writeln(f,binary(t,2));
    close(f);
  end;

BEGIN
  fread;
  out;
END.
