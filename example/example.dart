import 'package:ninja_prime/ninja_prime.dart';
import 'package:test/test.dart';

void main() {
  print(BigInt.from(167).isPrime());

  final prime = randomPrimeBigInt(8);
  print(prime);
}
