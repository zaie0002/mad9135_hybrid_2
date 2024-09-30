import 'dart:io';
import '../lib/lucky.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide a list of names.');
    exit(1);
  }

  for (var name in arguments) {
    String capitalizedName = name[0].toUpperCase() + name.substring(1);

    Lucky lucky = Lucky();

    print('Hello $capitalizedName. Your lucky number is ${lucky.luckyNumber}.');
  }
}