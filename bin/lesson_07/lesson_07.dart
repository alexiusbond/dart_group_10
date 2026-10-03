import 'mixins.dart';
import 'transports.dart';
import 'animals.dart';
import 'interfaces.dart';

void main() {
  // Animal cat = Animal(2, 'Tom');

  Drawable dog = Dog(2, 'Max');

  List<Drawable> drawables = [
    dog,
    Snake(1, 'Kaa'),
    Car(),
    Parrot(5, 'Polly'),
    Plane(),
  ];

  for (Drawable d in drawables) {
    drawAllVariants(d);
    if (d is Animal) {
      Animal a = d as Animal; // приведение к типу данных Animal
      a.makeVoice();
    }
    if(d is Playable){
      (d as Playable).play();
    }
    if(d is Fly){
      (d as Fly).fly();
    }
  }
  
  // End of program
}

void drawAllVariants(Drawable d) {
  d.draw();
  print(d.draw3D('plastic'));
}
