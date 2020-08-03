// Calculate the total, odd total and even total from 1 to n (Console IO)

uses crt;
var n,ot,et,t,i : integer;

begin
   //Uncomment the following line to clear screen
   //clrscr;
   write('n= ');
   readln(n);
   t:=0; ot:=0; et:=0;
   for i:=1 to n do
     begin
         t:=t+i;
         if i mod 2 = 0 then ot:=ot+i
         else et:=et+i;
     end;
   writeln('Odd total = ',ot);
   writeln('Even total = ',et);
   writeln('Total = ',t);
   readln;
end.
