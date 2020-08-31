//Đổi sang 16-bit

program bt1;

const filein='bt1in.txt'; fileout='bt1out.txt';

var f:text; x:int64;

function change16(x:int64):string;
 var rem,result:byte; s1,s2:string;
 begin
  s1:=''; s2:=''; result:=1;
  repeat
   rem:=x mod 16;
   x:=x div 16;
   case rem of
    10 : s2:='A';
    11 : s2:='B';
    12 : s2:='C';
    13 : s2:='D';
    14 : s2:='E';
    15 : s2:='F';
    else if rem < 10 then str(rem,s1) else result:=0;
   end;
   s2:=s1+s2;
  until x=0;
  if result=1 then change16:=s2 else change16:='0';
 end;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,x);
  close(f);
 end;

procedure out;
 begin
  assign(f,fileout);
  rewrite(f);
  writeln(f,change16(x));
  close(f);
 end; 

begin
 read;
 out;
end.    

    
      
      
     
