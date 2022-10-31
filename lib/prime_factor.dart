import 'package:meta/meta.dart';

@experimental
int findLeastPrimeFactor(int v) {
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

  List<int> get uniqPrimeFactors {
    if (this <= 0) {
      throw Exception('cannot only find prime factors for positive numbers');
    }

    final ret = <int>[];

    int reduce(int x, int d) {
      while (x % d == 0) {
        x ~/= d;
      }
      ret.add(d);
      return x;
    }

    int t = this;
    if (this % 2 == 0) {
      t = reduce(t, 2);
    }
    if (this % 3 == 0) {
      t = reduce(t, 3);
    }

    for (int i = 5; i * i <= this; i += 6) {
      if (this % i == 0) {
        t = reduce(t, i);
        if (t == 1) {
          break;
        }
      }
      if (this % (i + 2) == 0) {
        t = reduce(t, i + 2);
        if (t == 1) {
          break;
        }
      }
    }

    return ret;
  }

  List<int> get primeFactors {
    if (this <= 0) {
      throw Exception('cannot only find prime factors for positive numbers');
    }

    final ret = <int>[];

    int reduce(int x, int d) {
      while (x % d == 0) {
        x ~/= d;
        ret.add(d);
      }
      return x;
    }

    int t = this;
    if (this % 2 == 0) {
      t = reduce(t, 2);
    }
    if (this % 3 == 0) {
      t = reduce(t, 3);
    }

    for (int i = 5; i * i <= this; i += 6) {
      if (this % i == 0) {
        t = reduce(t, i);
        if (t == 1) {
          break;
        }
      }
      if (this % (i + 2) == 0) {
        t = reduce(t, i + 2);
        if (t == 1) {
          break;
        }
      }
    }

    return ret;
  }
}
