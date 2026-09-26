import 'car.dart';
import 'person.dart';

void main() {
  int number = 9;
  Car myCar = Car(2020, 'black', 'BMW X6');

  print(number);
  print(myCar);
  myCar.displayInfo();

  // myCar.color = 'green';
  myCar.repaint('green');
  myCar.displayInfo();

  Car bestCar = Car(2009, 'red', 'Toyota Camry');
  bestCar.displayInfo();

  bestCar.drive('Osh');
  myCar.drive('Tokmok');
  bestCar.drive('Batken');

  Car friendsCar = Car.redHonda(2019);
  friendsCar.displayInfo();

  Person friend = Person(20, 'Jim', 'Brown');
  // friend.setAge(21);
  friend.age = 21;
  friend.displayInfo();
  // print('Nice to meet you, ${friend.getName()}');
  print('Nice to meet you, ${friend.name}');

  Car fastCar = Car.withOwner(2000, 'blue', 'Ford Mustang', friend);
  fastCar.displayInfo();
  friendsCar.owner = friend;
  friendsCar.displayInfo();

  bestCar.owner = Person(35, 'Jane', 'Smith');
  bestCar.displayInfo();

  print('End of program');
}
