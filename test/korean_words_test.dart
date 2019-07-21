import 'package:flutter_test/flutter_test.dart';

import 'package:korean_words/korean_words.dart';

void main() {
  test('generateTest 2 words', () {
    final pairs = generateKoreanWords(wordCount: 2).take(10);
    for (final pair in pairs) {
      print(pair);
    }
  });

  test('generateTest 3 words', () {
    final pairs = generateKoreanWords(wordCount: 3).take(10);
    for (final pair in pairs) {
      print(pair);
    }
  });

  test('generateTest 4 words', () {
    final pairs = generateKoreanWords(wordCount: 4).take(10);
    for (final pair in pairs) {
      print(pair);
    }
  });
}
