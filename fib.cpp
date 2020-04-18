#include <iostream>
#include <math.h>
using namespace std;

double SQRT_5 = 2.2360679775;
double PHI = (SQRT_5 + 1) / 2;

// F(n) = ϕ^n - (-ϕ)^-n
long long int fib(int n)
{
    return round(pow(PHI, n) / SQRT_5);
}

int main()
{
    int n;
    cin >> n;

    cout << fib(n) << endl;

    return 0;
}