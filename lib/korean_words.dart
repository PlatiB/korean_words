library korean_words;

import 'dart:math';
import 'package:korean_words/src/words/myeongsa.dart';
import 'package:korean_words/src/words/dongsa.dart';
import 'package:korean_words/src/words/hyeongyongsa.dart';
import 'package:korean_words/src/words/boosa.dart';

// pair : hyeongyongsa + myeongsa
// triple : dongsa + hyeongyongsa + myeongsa
// quadruple : boosa + dongsa + hyeongyongsa + myeongsa

final _random = Random();

Iterable<KoreanWords> generateKoreanWords({
  int wordCount = 2,
  Random? random,
}) sync* {
  final rand = random ?? _random;

  String pickRandom(List<String> list) => list[rand.nextInt(list.length)];

  String? dongsa;
  String? boosa;
  String? hyeongyongsa;
  String? myeongsa;

  while (true) {
    switch (wordCount) {
      case 2:
        hyeongyongsa = pickRandom(listHyeongyongsa) + ' ';
        myeongsa = pickRandom(listMyeongsa);
        break;
      case 3:
        dongsa = pickRandom(listDongsa) + ' ';
        hyeongyongsa = pickRandom(listHyeongyongsa) + ' ';
        myeongsa = pickRandom(listMyeongsa);
        break;
      case 4:
        boosa = pickRandom(listBoosa) + ' ';
        dongsa = pickRandom(listDongsa) + ' ';
        hyeongyongsa = pickRandom(listHyeongyongsa) + ' ';
        myeongsa = pickRandom(listMyeongsa);
        break;
      default:
        myeongsa = pickRandom(listMyeongsa);
        break;
    }

    final koreanWord = KoreanWords(
      myeongsa: myeongsa,
      dongsa: dongsa,
      hyeongyongsa: hyeongyongsa,
      boosa: boosa,
    );

    yield koreanWord;
  }
}

class KoreanWords {
  String myeongsa;
  String? dongsa;
  String? hyeongyongsa;
  String? boosa;

  KoreanWords({
    required this.myeongsa,
    this.dongsa,
    this.hyeongyongsa,
    this.boosa,
  }) {
    dongsa ??= '';
    hyeongyongsa ??= '';
    boosa ??= '';
  }

  String get asString => '$boosa$dongsa$hyeongyongsa$myeongsa';

  @override
  String toString() => asString;
}
