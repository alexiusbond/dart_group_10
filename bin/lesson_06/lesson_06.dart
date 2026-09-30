import 'animals.dart';

void main() {
  Animal.showCounter();

  Cat cat = Cat('Tom', Color.yellow, 2);
  cat.meow();
  print(cat.getInfo());

  Dog dog = Dog('Snooppy', Color.darkGreen, 5, 'sit');
  dog.bark();
  print(dog.getInfo());

  FightingDog fightingDog = FightingDog('Max', Color.red, 1, 'fight', 14);
  fightingDog.bark();
  fightingDog.fight();
  print(fightingDog.getInfo());

  if (fightingDog.commands == 'fight') {
    print('This dog is dangerous');
  }

  if (fightingDog.color == Color.red) {
    print('This dog is beautiful');
  }

  Animal.showCounter();

  print('End of program. Bye!');
}
