const
  n = 5;

type
  m = array[1..n] of integer;

function sum(var p: m): integer;
begin
  var s := 0;
  for var i := 1 to n do 
    if p[i] > 0 then s := s + p[i];
  sum := s;
end;

function sum2(var p2: m): integer;
begin
  var s := 0;
  for var i := 1 to n do 
    if p2[i] > 0 then s := s + p2[i];
  sum2 := s;
end;

function umn(var it: m): integer;
begin
  var i: integer;
  for i := 1 to n do
  begin
    it[i] := it[i] * 10;
    print(it[i]);
  end;
  println()
end;

begin
  var a: m;
  var b: m;
  println('Введите 1 массив:');
  for var i := 1 to n do
  begin
    read(a[i]);
  end;
  println('1 массив:', a);
  
  println('Введите 2 массив:');
  for var i := 1 to n do
  begin
    read(b[i]);
  end;
  println('2 массив:', b);
  println('Итог:');
  
  var s1 := sum(a);
  var s2 := sum2(b);
  var rez: integer;
  if s1 < s2 then rez := umn(a)
  else rez := umn(b);
end.