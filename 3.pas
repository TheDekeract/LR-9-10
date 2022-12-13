const
  n = 5;

type
  m = array[1..n] of integer;

function min(var p: m): integer;
var
  k := 0;
begin
  for var i := 1 to n do
  begin
    if p[i] < 0 then k := i;
  end;
  print('Номер последнего отрицательного элемента:', k);
end;

begin
  var a: m;
  println('Введите массив:');
  for var i := 1 to n do
  begin
    read(a[i]);
  end;
  println('Массив:', a);
  min(a);
end.
