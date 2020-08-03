// Calculate the total, odd total and even total from 1 to n (Console IO)

uses crt;
var n,tc,tl,t,i : integer;

begin
   clrscr;
   write('n= ');
   readln(n);
   t:=0; tc:=0; tl:=0;
   for i:=1 to n do
     begin
         t:=t+i;
         if i mod 2 = 0 then tc:=tc+i
         else tl:=tl+i;
     end;
   writeln('tc = ',tc);
   writeln('tl = ',tl);
   writeln('t = ',t);
   readln;
end.
