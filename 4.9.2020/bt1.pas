//In cac so tu 1-1000 co tong ^4 cac pt = chinh no

program bt1;
const filein='bt1in.txt'; fileout='bt1out.txt';
var f:text; n:LONGINT;

FUNCTION lt(x,y:longint):LONGINT;
  VAR i:LONGINT;
BEGIN
  lt:=1;
  for i:=1 to y do lt:=lt*x;
END;
procedure fread;
begin
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
end;

procedure out;
var i,j,rem,count,t:LONGINT;
begin
  assign(f,fileout);
  rewrite(f);
  count:=0; t:=0;
  if n<1000 then
    begin
      writeln(f,'n < 1000');
      close(f);
      exit;
    end
  else
    begin
      i:=1000;
      repeat
         j:=i;
         WHILE i>0 DO BEGIN
           rem:=i mod 10;
           i:=i div 10;
           t:=t+lt(rem,4);
         END;
         IF t=j THEN BEGIN
           writeln(f,j);
           inc(count);
         END;
         i:=j+1
      until i=n;
    end;
    if count=0 then writeln(f,'Khong co');
    close(f);
end;

begin
  fread;
  out;
end.
