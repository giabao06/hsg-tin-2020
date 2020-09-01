//In tc tl cac ptu trong array

program btarr2;
const filein='btarr2in.txt'; fileout='btarr2out.txt';
type arr=array[1..100] of longint;
var f:text; a:arr; n:longint;

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
 var i,ot,et,t:longint;
   begin
     t:=0; ot:=0; et:=0;
     assign(f,fileout);
     rewrite(f);
     for i:=1 to n do t:=t+a[i];
     for i:=1 to n do
       if a[i] mod 2 = 0 then et:=et+a[i]
       else ot:=ot+a[i];
     if t=0 then writeln(f,'Khong co so');
     writeln(f,'Tong = ',t);
     writeln(f,'Tong chan = ',et);
     writeln(f,'Tổng le = ',ot);
     close(f)
  end;

begin
  fread;
  out;
end.
