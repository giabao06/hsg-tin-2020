//Calculate the total, odd total and even total from 1 to n (File IO)

const fi='bai1.inp';
      fo='bai1.out';

var n,t,tc,tl : integer;
    f : text;
procedure nhap;
begin
    assign(f,fi);
    reset(f);
    readln(f,n);
    close(f);
end;


procedure xl;
var i: integer;
begin
    t:=0;
    tc:=0;
    tl:=0;
    for i:=1 to n do begin
                       t:=t+i;
                       if i mod 2 = 0 then tc:=tc+i
                       else tl:=tl+i;
                     end;
end;

procedure xuat;
begin
   assign(f,fo);
   rewrite(f);
   writeln(f,'tc = ',tc);
   writeln(f,'tl = ',tl);
   writeln(f,'t = ',t);
   close(f);
end;

begin
    nhap;
    xl;
    xuat;
end.

