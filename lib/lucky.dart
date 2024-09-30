import 'dart:io';
import 'dart:math';

class Lucky {
  int luckyNumber;

  Lucky() : luckyNumber = _generateLuckyNumber();

  static int _generateLuckyNumber() {
    int min = int.parse(Platform.environment['MIN'] ?? '0');
    int max = int.parse(Platform.environment['MAX'] ?? '100');

    var rng = Random();
    return min + rng.nextInt(max - min + 1);
  }
}