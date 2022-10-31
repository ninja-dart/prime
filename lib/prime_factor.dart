import 'package:meta/meta.dart';

@experimental
int findLeastPrimeFactor(int v) {
  // TODO
  throw UnimplementedError();
}

@experimental
Iterable<int> findPrimeFactors(int v) {
  // TODO
  throw UnimplementedError();
}

@experimental
bool isCoprime(int a, int b) => gcd(a, b) == 1;

int gcd(int a, int b) {
  int n = 0;
  while (b > 0) {
    int t = a % b;
    a = b;
    b = t;
    n++;
  }
  print('n: $n');
  return a;
}

extension IntPrime on int {
  bool get isPrime {
    if (this == 2 || this == 3) {
      return true;
    }

    if (this <= 1 || this % 2 == 0 || this % 3 == 0) {
      return false;
    }

    for (int i = 5; i * i <= this; i += 6) {
      if (this % i == 0 || this % (i + 2) == 0) {
        return false;
      }
    }

    return true;
  }
}
