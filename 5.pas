const
  n = 10;

var
  a: array[1..n] of integer;
  arr: array[1..n] of integer;

procedure koktevran(mi1, mi2, mx1, mx2, q1, q2: integer);
begin
  var x, y: integer; x := 0; y := 0;
  for var i := 1 to n do  
  begin
    if a[i] mod 5 = 0 then
    begin
      q1 := i;
      x := 1;
    end;
    if x = 1 then break;
  end;  
  for var j := 1 to n do   
  begin
    if arr[j] mod 5 = 0 then
    begin
      q2 := j;
      y := 1;
    end;
    if y = 1 then break;
  end;
  
  mx1 := a[1];
  mi1 := a[1];
  for var i := 2 to n do 
  begin
    if (a[i] > a[mx1]) then
      mx1 := i;
    if (a[i] < a[mi1]) then
      mi1 := i;
  end;   
  mx2 := arr[1];
  mi2 := arr[1];
  for var j := 2 to n do  
  begin
    if (arr[j] > arr[mx2]) then
      mx2 := j;
    if (arr[j] < arr[mi2]) then
      mi2 := j;
  end;
                     
  for var q := 1 to n do   
  begin
    if q1 < q2 then
    begin
      if q = q1 then
        a[mx1] := 0
    end
    else if q = mi1 then
    begin
      a[q] *= 2;
      mi1 += 1;
    end;
    if q2 < q1 then
    begin
      if q = q2 then 
        arr[mx2] := 0
    end
    else if q = mi2 then
    begin
      a[q] *= 2;
      mi2 += 1;
    end;
  end;   
  writeln();
  write('Итоговые значения элементов массива a: ');
  for var i := 1 to n do print(a[i]);
  writeln();
  write('Итоговые значения элементов массива arr: ');
  for var i := 1 to n do print(arr[i]);
end;

begin
  var mi1, mi2, mx1, mx2, q1, q2: integer;
  for var i := 1 to n do  
  begin
    read(a[i]);
  end;
  for var j := 1 to n do
  begin
    read(arr[j]);
  end;  
  println;
  print('Значения элементов масссива a: ');
  for var i := 1 to n do  print(a[i]);
  println;
  print('Значения элементов массива arr: ');
  for var i := 1 to n do  print(arr[i]);
  koktevran( mi1, mi2, mx1, mx2, q1, q2);
end.  