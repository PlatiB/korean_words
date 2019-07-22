import 'package:korean_words/korean_words.dart';

void main() {
  generateKoreanWords(wordCount: 4).take(5).forEach((f){
    print(f.toString());
  });
}