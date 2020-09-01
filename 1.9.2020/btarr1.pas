//In cac snt trong 1 mang

program btarr1;
const filein='btarr1in.txt'; fileout='btarr1out.txt';
type arr=array[1..100] of longint;
var f:text; a:arr; n:longint;

function prime(x:longint):boolean;
 var i:longint;
 begin
   if x<2 then exit(false);
   for i:=2 to trunc(sqrt(x)) do if x mod i = 0 then exit(false);
   exit(true);
 end;

procedure fread;
 var i:longint;
 begin
  assign(f,filein);
  reset(f);
  readln(f,n);
  for i:=1 to n do read(f,a[i]);
  close(f);
end;

procedure out;
 var i,count:longint;
 begin
  count:=1;
   assign(f,fileout);
   rewrite(f);
   for i:=1 to n do if prime(a[i]) then
   begin
     write(f,a[i],#32);
     inc(count);
   end;
  if count=0 then writeln('Khong co snt');
  close(f);
 end;

begin
   fread;
   out;
end.
