//In cac so doi xung nhi phan va thap phan tu 1 den n

program bt3;
var f:text; n:LONGINT;
const filein='bt3in.txt'; fileout='bt3out.txt';

function doixung(x:LONGINT):BOOLEAN;
var y,rem,t:LONGINT;
  begin
    y:=x; t:=0;
    repeat
      rem:=y mod 10;
      y:=y div 10;
      t:=t*10+rem;
    until y=0;
    if t=x then exit(true) else exit(false);
  end;

function binary(x:longint):BOOLEAN;
var rem,i:LONGINT; s0,s1:STRING;
  begin
    s0:='';
    REPEAT
      rem:=x mod 2;
      x:=x div 2;
      str(rem,s1);
      s0:=s1+s0;
    UNTIL (x=0);
    if length(s0)<2 then exit(false) else
      for i:=1 to length(s0) div 2 do
      if s0[i]<>s0[length(s0)-i+1] then exit(false) else exit(TRUE);
  end;

procedure fread;
BEGIN
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
END;

procedure out;
var i,count:LONGINT;
  begin
    count:=0;
    assign(f,fileout);
    rewrite(f);
    if n<1 then
      begin
        writeln(f,'n<1');
        close(f);
        exit;
      end
    else for i:=1 to n do
      begin
        if (doixung(n)) and binary(n) then
          begin
            writeln(f,i);
            inc(count);
          end;
      end;
      if count=0 then writeln(f,'Khong co');
      close(f);
  end;

  begin
    fread;
    out;
  end.
