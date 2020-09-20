//Kiem tra n co phai so du thua khong

program bt2;
const fileout='bt2out.txt';
var f:text; i,count:LONGINT;

function tonguoc(x:LONGINT):LONGINT;
var i:LONGINT;
  begin
    tonguoc:=0;
    for i:=1 to x div 2 do
      if x mod i = 0 then tonguoc:=tonguoc+i;
  end;

BEGIN
  assign(f,fileout);
  rewrite(f);
  count:=0;
  for i:=10 to 1000 do
    begin
      if tonguoc(i)>i then BEGIN
        writeln(f,i);
        inc(count);
      END;
      if count=10 then break;
    end;
  close(f);
END.
