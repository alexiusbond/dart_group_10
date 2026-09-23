import 'dart:io';

void main() {
  int temperature = 25;
  int numberOfStudents = 5;
  bool isRainy = false;

  if (temperature > 20) {
    String parkName = 'Central Park';
    print('Go walking to the $parkName');
  }

  if (numberOfStudents > 10) {
    print('Go to Geeks');
  }

  if (isRainy) {
    print('Take an umbrella');
  } else {
    print('Take on a hat');
  }

  if (temperature < 40) {
    print('Go shopping');
  } else {
    print('Go to school');
  }

  // else {
  //   print('Do something');
  // }

  // temperature = -2;
  if (temperature > 35) {
    print('The weather is hot.');
  } else if (temperature > 25) {
    print('The weather is warm.');
  } else if (temperature > 15) {
    print('The weather is cool.');
  } else if (temperature > 0) {
    print('The weather is cold.');
  } else {
    print('The weather is freezing.');
  }

  numberOfStudents = numberOfStudents + 15;
  if (numberOfStudents >= 20) {
    // наружная условная конструкция
    print('Go to picnic');
    if (temperature > 20) {
      // вложеная условная конструкция
      print('Eat an ice-cream');
    } else {
      print('Drink a hot tea');
    }
  }

  // Оператор AND (И) - истина, если оба условия истинны
  if (temperature == 25 && numberOfStudents > 10) {
    print('Go to work');
  }

  isRainy = true;
  if (temperature < 10 && isRainy) {
    print('Play Tennis.');
  }

  // Оператор OR (ИЛИ) - истина, если хотя бы одно условие истинно
  if (numberOfStudents != 22 || temperature > 0) {
    print('Play bowling');
  }

  if (numberOfStudents == 22 || temperature == -10) {
    print('Play Football');
  }

  isRainy = false;
  // if (isRainy) {
  // } else {
  //   print('Go swimming');
  // }

  // Оператор NOT (НЕ) - инвертирует значение булева выражения
  if (!isRainy) {
    print('Go swimming');
  }

  if (temperature > 10 && temperature < 30 ||
      numberOfStudents > 25 && numberOfStudents < 40 ||
      isRainy) {
    // true && true || false && true || false => 1 * 1 + 0 * 1 + 0 = 1 + 0 + 0 = 1 (TRUE)
    print('Learn Dart Programming');
  }

  if (temperature > 10 &&
      (temperature < 30 || numberOfStudents > 25) &&
      (numberOfStudents < 40 || isRainy)) {
    // true && (true || false) && (true || false) => 1 * (1 + 0) * (1 + 0) = 1 * 1 * 1 = 1 (TRUE)
    print('Learn Flutter Framework');
  }

  // Type casting - преобразование из одного типа данных в другой
  String age = '30';
  print(
    'Birth year: ${2026 - int.parse(age)}',
  ); // Преобразование строки в целое число
  print(
    'Bonus: ${450.5 * double.parse(age)}',
  ); // Преобразование строки в число с плавающей точкой

  int height = 180;
  print('My height is ' + height.toString() + ' cm.');

  print('What is your name?');
  String? name = stdin.readLineSync();
  print('Nice to meet you, $name');

  String value1;
  String value2;
  print('Enter first number: ');
  value1 = stdin.readLineSync()!;
  print('Enter second number: ');
  value2 = stdin.readLineSync()!;
  print('Product of numbers: ${int.parse(value1) * int.parse(value2)}');

  int number = int.parse(stdin.readLineSync()!);
  switch (number) {
    case 1:
      print('The number is one');
    case 2:
      print('The number is two');
    case 3:
      print('The number is three');
    default:
      print('Unknown number, I can count up to three');
  }
}
