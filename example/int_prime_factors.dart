import 'package:ninja_prime/ninja_prime.dart';

void main() {
  int v = BigIntPrime.smallPrimes.take(10).fold<int>(1, (p, e) => p * e);
  print('$v ${v.uniqPrimeFactors}');
  print('$v ${v.primeFactors}');
  v = 5 * 5 * 5 * 11 * 11 * 13;
  print('$v ${v.uniqPrimeFactors}');
  print('$v ${v.primeFactors}');
}
