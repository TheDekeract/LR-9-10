const
  n = 5;

type
  m = array[1..n] of integer;

function min(var p: m): integer;
var
  k := 1;
begin
  for var i := 1 to n do
  begin
    if p[i] mod 2 = 0 then k *= p[i];
  end;
  print('Произведение четных элементов:', k);
end;


  begin
  var a: m;
  println('Введите массив:');
  for var i := 1 to n do
  begin
    read(a[i]);
  end;
  println('Масссив:', a);
  min(a);
end.
