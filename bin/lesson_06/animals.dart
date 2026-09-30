enum Color {
  red('\x1B[31m'),
  darkGreen('\x1B[32m'),
  yellow('\x1B[33m');

  final String code;
  const Color(this.code);
}

class Animal {
  static int _counter = 0;

  static void showCounter() {
    print('We produced: $_counter');
  }

  String name;
  Color color;
  int age;

  Animal(this.name, this.color, this.age) {
    _counter++;
  }

  String getInfo() {
    return 'NAME: $name AGE: $age COLOR: ${color.code}${color.name}\x1B[0m';
  }
}

class Cat extends Animal {
  Cat(super.name, super.color, super.age);

  void meow() {
    print('$name says Meow!');
  }
}

class Dog extends Animal {
  String commands;

  Dog(super.name, super.color, super.age, this.commands);

  void bark() {
    print('$name says Woof!');
  }

  // перезапись/переопределение метода
  @override
  String getInfo() {
    return '${super.getInfo()} COMMANDS: $commands';
  }
}

class FightingDog extends Dog {
  int wins;

  FightingDog(super.name, super.color, super.age, super.commands, this.wins);

  void fight() {
    print('Fighting dog $name is fighting.');
  }

  // перезапись/переопределение метода
  @override
  String getInfo() {
    return '${super.getInfo()} WINS: $wins';
  }
}
