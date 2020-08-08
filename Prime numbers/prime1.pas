//Enter a number then check if it's a prime number (bool out)
program prime1;
//Set file consts
const infile='prime1in.txt';
      outfile='prime1out.txt';

//Set variables
var n:int64;
    f:text;

//Usual file read proc
procedure fileread;
 begin
  writeln('Reading from file prime1in.txt...');
  assign(f,infile);
  reset(f);
  readln(f,n);
  close(f);
 end;

//(new) Function to process
function calc(num:int64):boolean; //Usage: function fname(var:type; var:type2):ftype
 var i:int64;
 begin
  if num<2 then exit(false); //Checks if num<2 then exit returing false if it is true. Those aint prime numbers.
  for i:=2 to trunc(sqrt(num)) do //Until i (now 2) to the truncated num of the square root of num do the next line
  if num mod i=0 then exit(false); //If num/i = 0 return false then exit
  exit(true); //This only happens if all the other conditions above are true: return true then exit
 end; 

//Processing + output proc
procedure processandout;
 begin
  writeln('Calculating and outputting to file prime1out.txt...');
  assign(f,outfile);
  rewrite(f);
  if calc(n)= true //Calls the function calc with variable n and checks if it is true.
  then writeln(f,1,' This is a prime number')
  else writeln(f,0,' This aint a prime number');
  close(f);
 end;

//Main prg
begin
 fileread;
 processandout;
 writeln('All done. 200 OK'); //HTTP reference :))
end. 
