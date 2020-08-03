//Calculate the total, odd total and even total from 1 to n (File IO)

const fi='Ex1f.in';
      fo='Ex1f.txt';

var n,t,ot,et : integer;
    f : text;

procedure Import; //Function for importing files?
begin
    writeln('Reading input file Ex1f.in...');
    assign(f,fi);
    reset(f);
    readln(f,n);
    close(f);
end;


procedure Process; //Usual processing stuff
var i: integer;
begin
    writeln('Calculating...');
    t:=0;
    ot:=0;
    et:=0;
    for i:=1 to n do begin
                       t:=t+i;
                       if i mod 2 = 0 then ot:=ot+i
                       else et:=et+i;
                     end;
end;

procedure Export; //Function for exporting files?
begin
   writeln('Writing output to file Ex1f.txt...');
   assign(f,fo);
   rewrite(f);
   writeln(f,'Odd total = ',ot);
   writeln(f,'Even total = ',et);
   writeln(f,'Total = ',t);
   close(f);
end;

begin
    Import;
    Process;
    Export;
    writeln('All done.');
end.

