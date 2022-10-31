import 'package:test/test.dart';
import 'package:ninja_prime/ninja_prime.dart';

void main() {
  group('isPrime', () {
    test('true.167', () {
      for (int i = 0; i < 100; i++) {
        expect(BigInt.from(167).isPrime(), true); // true
      }
    });
    test(
        'true.F36526C57E4A7A60F897ED82F895E7E8CE298D376F1DBD1AC645FAE98DEA10FF',
        () {
      for (int i = 0; i < 100; i++) {
        expect(
            BigInt.parse(
                    'F36526C57E4A7A60F897ED82F895E7E8CE298D376F1DBD1AC645FAE98DEA10FF',
                    radix: 16)
                .isPrime(),
            true); // true
      }
    });
    test(
        'true.D68B9700EDA654646406EA065DEDE8FDDE403978F8D6F4C1F03E88506BBC6C5D',
        () {
      for (int i = 0; i < 100; i++) {
        expect(
            BigInt.parse(
                    'D68B9700EDA654646406EA065DEDE8FDDE403978F8D6F4C1F03E88506BBC6C5D',
                    radix: 16)
                .isPrime(),
            true); // true
      }
    });

    test(
        'false.CBFB45E6B09F1AF40DF60DDC865B6F98A1FD724678B583BFB5AE8539627BFFDCD930D7C3F996F75E15172A017F143101ECD28FC629B800E24F0A83665D77C0A3',
        () {
      for (int i = 0; i < 100; i++) {
        expect(
            BigInt.parse(
                    'CBFB45E6B09F1AF40DF60DDC865B6F98A1FD724678B583BFB5AE8539627BFFDCD930D7C3F996F75E15172A017F143101ECD28FC629B800E24F0A83665D77C0A3',
                    radix: 16)
                .isPrime(),
            false); // true
      }
    });
  });
}
