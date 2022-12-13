const
  n = 5;

type
  m= array[1..n] of integer;

procedure pr(var p: m);
var
  i, maxo, maxm: integer;
begin
  maxo := p[1];
  maxm := p[1];
  
  for i := 2 to n do
    if abs(p[i]) < abs(maxm) then 
    begin
      maxm := p[i];
    end;
  if p[i] < maxo then 
  begin
    maxo := p[i];
  end;
  println('Минимальный по модулю элемент:', maxm);
  if maxo < 0 then println('Максимальный отрицательный элемент:', maxo) else println('Максимальный отрицательный элемент отсутствует');
end;

begin
  var a: m;
  println('Введите массив:');
  for var i := 1 to n do
  begin
    read(a[i]);
  end;
  println('Массив:', a);
  pr(a);
end.  