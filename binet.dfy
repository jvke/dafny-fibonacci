function method pow(n: real, m: int): real
  requires 0.0 <= n && 0 <= m;
  decreases m;
{
	if m == 0 then 1.0 else n * pow(n, m - 1) as real
}

function round(n: real): int
{
  var sawtooth: real := n - n.Floor as real;
  
  if sawtooth >= 0.5 then n.Floor + 1 else n.Floor
}

function fib(n: int): int
  requires 0 <= n <= 90; 
  decreases n;
{
  var sqrt5: real := 2.2360679775;
  var phi: real := (sqrt5 + 1.0) / 2.0;

  round(pow(phi, n) / sqrt5)
}

method main()
{
  assert 0 == fib(0);
  assert 1 == fib(1);
  assert 1548008755920 == fib(60);
}
