class Person {
  int _age;
  String _name;
  String _surname;

  Person(this._age, this._name, this._surname) {
    _wasBorn();
  }

  void _wasBorn() {
    print('$_name was born!');
  }

  // String getName() {
  //   return _name;
  // }

  String get name => _name;
  String get surname => _surname;

  // void setAge(int newAge) {
  //   if (newAge <= 0) {
  //     print('Wrong value for age!');
  //   } else {
  //     _age = newAge;
  //   }
  // }

  set age(int newAge) {
    if (newAge <= 0) {
      print('Wrong value for age!');
    } else {
      _age = newAge;
    }
  }

  int calculateBirthYear() {
    return 2026 - _age;
  }

  void displayInfo() {
    print(
      'My name is $_name. I am $_age years old. I was born in ${calculateBirthYear()}',
    );
  }
}
