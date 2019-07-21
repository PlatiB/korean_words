# korean_words

A package containing the most over 5,000 used Korean words to generate combine words.

## Usage

Generating 5 interesting word combinations:

wordCount 1 : just noun.
wordCount 2 : noun with adjective.
wordCount 3 : noun with adjective and verb.
wordCount 4 : noun with adjective, verb and adverb.



    import 'package:korean_words/korean_words.dart';
    
    main() {
        generateKoreanWords(wordCount: 3).take(5).forEach(print);
    }

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/PlatiB/korean_words/issues

## Inspired project
https://github.com/filiph/english_words
