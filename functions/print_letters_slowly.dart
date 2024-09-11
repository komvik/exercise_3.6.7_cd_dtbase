import 'dart:async';
import 'dart:io';

Future<void> printLettersSlowly(String word, int inputdelay) async {
  for (int i = 0; i < word.length; i++) {
    stdout.write(word[i]);
    await Future.delayed(Duration(milliseconds: inputdelay));
  }
  print('');
}
