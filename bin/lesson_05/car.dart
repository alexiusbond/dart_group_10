import 'person.dart';

class Car {
  // поля / атрибуты
  int year;
  String color;
  String model;
  Person? owner; // Композиция

  // конструктор
  // Car(int year, String color, String model) {
  //   this.year = year;
  //   this.color = color;
  //   this.model = model;
  // }

  // Конструктор с инициализирующим списком
  // Car(int year, String color, String model)
  //   : this.year = year,
  //     this.color = color,
  //     this.model = model;

  // Конструктор с параметрами, присваивающимися напрямую
  Car(this.year, this.color, this.model);

  // Именованный конструктор, c инициализирующим списком
  Car.redHonda(this.year) : color = 'red', model = 'Honda Fit';
  Car.withOwner(this.year, this.color, this.model, this.owner);

  // методы
  void drive(String city) {
    print('Car $model is driving to $city');
  }

  void repaint(String newColor) {
    color = newColor;
  }

  void displayInfo() {
    if (owner != null) {
      print(
        'MODEL: $model COLOR: $color YEAR: $year OWNER: Mr./Mrs. ${owner!.surname}',
      );
    } else {
      print('MODEL: $model COLOR: $color YEAR: $year');
    }
  }
}
