#include <iostream>
#include <vector>
using namespace std;

int main() {
  vector<long long> fib(10);
  fib[0] = 0;
  fib[1] = 1;

  for (int i = 2; i < 10; ++i) {
    fib[i] = fib[i - 1] + fib[i - 2];
  }

  for (long long val : fib) {
    cout << val << " ";
  }
  cout << endl;

  return 0;
}
