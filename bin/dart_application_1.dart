import 'dart:io';

void main() {
  print('Как тебя зовут? ');
  final name = stdin.readLineSync();
  stdout.write('Hello $name!');
}
