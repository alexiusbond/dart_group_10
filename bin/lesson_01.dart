void main() {
  print('Hello world!');
  print(56); // Распечатка целого числа
  print(23.17);

  // Однострочный коммент

  /*
Многострочный
коммент
*/

  int myAge = 25; // целочисленный тип данных

  print(myAge);
  print(2026 - myAge);

  String myName = 'Jim Brown'; // строковый тип данных
  double myHeight = 175.5; // тип данных с плавающей точкой
  bool isTeacher = true; // логический тип данных

  print(10 > 5);
  print(1 > 5);

  myAge = 26;
  print(myAge + 20);

  String myJob; // Создание переменной (объявление) - Значение по умолчанию null
  // print(myJob);
  myJob = 'Dart Developer'; // Присвоение значения переменной (инициализация)
  print(myJob);
  int mySalary = 2000; // Объявление и инициализация переменной
  myJob = 'Senior Dart Developer'; // Изменение значения
  mySalary = mySalary + 1000; // Изменение значения
  print(myJob);
  print(mySalary);

  String myPet1Name = 'Reks';
  String myPet2Name = 'Buddy';
  // String my_pet_name = 'Buddy'; // Допустимо, но не принято в стиле Dart
  // String 1stPetName = 'Buddy'; // Ошибка: имя переменной не может начинаться с цифры

  // Конкатенация строк
  print('My name is ' + myName + '. My job is ' + myJob);
  // Интерполяция строк
  print(
    'My name is $myName. My job is $myJob. My age is $myAge. I was born in ${2026 - myAge}.',
  );

  print("Today I'm learning Dart Programming");
  // Экранирование строк
  print('Today I\'m learning "Dart Programming"');

  // Строковые функции
  String sampleString = '   Hello Dart!    ';
  print(sampleString.length); // Длина строки
  print(sampleString.toUpperCase()); // Преобразование в верхний регистр
  print(sampleString.toLowerCase()); // Преобразование в нижний регистр
  print(sampleString.trim()); // Удаление пробелов в начале и конце
  print(sampleString.contains('Dart')); // Проверка наличия подстроки
  print(sampleString.contains('Java'));
  print(sampleString.replaceFirst('l', '***')); // Замена подстроки
  print(sampleString.replaceAll('l', '***'));

  // Арифметические операторы
  print(1 + 4);
  print(9 - 3);
  print(7 * 8);
  print(10 / 2);

  print(13 ~/ 5); // Целочисленное деление
  print(17 % 4); // Остаток от деления

  print(5 + 3 * 4 / 2 - 1);
  print(5 + 3 * 4 / (2 - 1));

// Автоматическое определение типа данных с помощью ключевого слова 'var'
  var myFreindsName = 'Bob'; // Тип данных определяется автоматически -> String
  print(myFreindsName.toUpperCase());

  var myNumber = 8; // Тип данных определяется автоматически -> int
  print(myNumber - 5);

  final String nonChangableValue = 'Эта переменная не может изменять свое первичное значение';
  // nonChangableValue = 'Новое значение';

  final nonChangableDigit = 444.43;

  
  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать
}
