import 'interfaces.dart';
import 'mixins.dart';

// Можно наследовать.
// Может содержать готовые методы.
// Может иметь абстрактные методы, которые наследник обязан реализовать.
abstract class Animal implements Drawable {
  int age;
  String name;

  Animal(this.age, this.name);

  void sleep() {
    print('Animal is sleeping...');
  }

  void makeVoice();
}

class Dog extends Animal implements Playable {
  Dog(super.age, super.name);

  @override
  void makeVoice() {
    print('Woof!');
  }

  @override
  void draw() {
    print('🐕');
  }

  @override
  String draw3D(String material) {
    return 'Dog is drawn in 3D with $material';
  }

  @override
  void play() {
    print('Dpg plays with ball.');
  }
}

abstract class Reptile extends Animal {
  Reptile(super.age, super.name);
}

class Snake extends Reptile {
  Snake(super.age, super.name);

  @override
  void makeVoice() {
    print('Sssssss');
  }

  @override
  void draw() {
    print('🐍');
  }

  @override
  String draw3D(String material) {
    return 'Snake is drawn in 3D with $material';
  }
}

class Parrot extends Animal with Fly implements Playable {
  Parrot(super.age, super.name);

  @override
  void makeVoice() {
    print('Chirp');
  }

  @override
  void play() {
    print('Parrot is mimicking sounds');
  }

  @override
  void draw() {
    print('🦜');
  }

  @override
  String draw3D(String material) {
    return 'Parrot is drawn in 3D with $material';
  }
}
