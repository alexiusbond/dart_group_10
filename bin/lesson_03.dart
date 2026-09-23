import 'dart:io';

void main() {
  for (int i = 1; i <= 3; i = i + 1) {
    print('Step $i');
  }
  print('-----------');

  int number = 7;
  for (int i = 1; i <= 10; i++) {
    // i = i + 1 => i++ increment
    print('$number x $i = ${number * i}');
  }
  print('-----------');
  number = 5;
  for (int i = 10; i >= 1; i--) {
    // i = i - 1 => i-- decrement
    print('$number x $i = ${number * i}');
  }
  print('-----------');
  number = 9;
  for (int i = 10; i >= 2; i -= 2) {
    // i = i - 2 => i-=2
    print('$number x $i = ${number * i}');
  }

  for (double i = 0.0; i <= 1.0; i = i + 0.25) {
    print(i);
  }

  print('--------------');
  int counter = 0;
  while (counter < 5) {
    print('Counter is $counter');
    counter++;
    print('Squared counter is ${counter * counter}');
  }

  String myStr = '#';
  while (myStr.length <= 5) {
    print(myStr);
    myStr += '#';
  }

  int doCount = 0;
  do {
    print('Do-While count is $doCount');
    doCount++;
  } while (doCount > 3);

  doCount = 0;
  while (doCount > 3) {
    print('While count is $doCount');
    doCount++;
  }

  // break - экстренно прерывает цикл
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      break;
    }
    print(i);
  }
  print('------------');
  // continue - прерывает текущий круг
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }

  for (int i = 1; i <= 3; i++) {
    print('Outer loop i = $i');
    for (int j = 1; j <= 5; j++) {
      print('--- >> Inner loop j = $j');
    }
  }

  // Коллекции List - список
  // упорядоченная коллекция элементов, доступ по индексу, может содержать дубликаты, изменяемый размер

  List<String> fruits = ['apple', 'pear', 'lemon', 'kiwi'];
  print('My favorite fruits are ${fruits[1]} and ${fruits[3]}');
  print(fruits);
  fruits[0] = 'orange';
  print(fruits);
  // fruits[10] = 'melon';
  fruits.add('melon');
  print(fruits);

  fruits.insert(1, 'pine-apple');
  print(fruits);
  fruits.add('pear');
  print(fruits);
  fruits.remove('pear');
  print(fruits);
  fruits.removeLast();
  print(fruits);
  fruits.removeAt(1);
  print(fruits);
  print('List contains ${fruits.length} elements');

  // Коллекции Map - словарь
  // неупорядоченная коллекция пар ключ-значение, ключи уникальны

  Map<String, int> ages = {'Alice': 20, 'Bob': 22, 'Jack': 18};
  print('Bob is ${ages['Bob']} years old');
  ages['Bob'] = 23;
  print(ages);
  ages['Jane'] = 25;
  print(ages);
  ages.remove('Jack');
  print(ages);

  print('Keys: ${ages.keys}');
  print('Values: ${ages.values}');

  // Итерация по парам ключ-значение
  ages.forEach((k, v) {
    print('$k is $v years old.');
  });

  // Коллекции Set - множество
  // неупорядоченная коллекция уникальных элементов
  Set<String> colors = {'Red', 'Blue', 'Green'};
  colors.add('Yellow');
  print(colors);
  colors.add('Blue'); // Попытка добавить дубликат (игнорируется)
  print(colors);
  colors.remove('Red');
  print(colors);

  for (String elem in colors) {
    print('I like $elem color.');
  }

  for (var fruit in fruits) {
    print('I bought $fruit.');
  }

  List<String> robots = [];
  for (int i = 1; i <= 10; i++) {
    robots.add('DC00$i');
  }
  print(robots);

  String? value;
  while (true) {
    print('Enter a number or "q" to exit: ');
    value = stdin.readLineSync();
    if (value == 'q') {
      break;
    }
    print('Number times 2 = ${int.parse(value!) * 2}');
  }
  print('End of program!');
}
