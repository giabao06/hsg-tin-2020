//Check if a number is a square num
program sqnum;

const infile='sqnumin.txt';
      outfile='sqnumout.txt';

var n:int64; f:text;

procedure fileread;
 begin
  writeln('Reading from file sqnumin.txt...');
  assign(f,infile);
  reset(f);
  readln(f,n);
  close(f);
 end;

function check(x:int64):boolean;
 begin
  if x<0 then exit(false);
  if sqrt(trunc(sqrt(x)))=n then exit(true)
  else exit(false);
 end;

procedure calcnsave;
 begin
  writeln('Calculating and outting to file sqnumout.txt');
  assign(f,outfile);
  rewrite(f);
  if check(n) then writeln(f,1)
  else writeln(f,0);
  close(f);
 end;

begin
 fileread;
 calcnsave;
 writeln('Done.');
end. 
             
