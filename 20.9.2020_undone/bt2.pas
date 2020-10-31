//Cho s la sau so tu 1 -> 9; thiet lap mang vuong 9pt tang dan

program bt2;
const filein='bt2in.txt'; fileout='bt2out.txt';
var f:text; s0:string; n:longint; a:array[1..100, 1..100] of longint; a1:array[1..100] of LONGINT;

procedure fread;
begin
  assign(f,filein);
  reset(f);
  readln(f,s0);
  close(f);
end;

procedure out;
var i,j,x,code:LONGINT;
  begin
    assign(f,fileout);
    rewrite(f);
    for i:=1 to length(s0) do
      begin
        val(s0[i],x,code)
        inc(a1[x]);
      end;
  end;
