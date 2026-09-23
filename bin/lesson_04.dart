void main() {
  // DRY - don't repeat yourself
  print('ЗАВТРАК');
  makeTea();

  print('ОБЕД');
  makeTea();

  print('УЖИН');
  makeTea();

  addition(5, 2, 'Сумма чисел');
  addition(10, 4, 'Сумма');

  calculatePerimeter('Аудитория 3', 5.5, 6.5);
  calculatePerimeter('Холл', 10, 7.5);
  calculatePerimeter('Кухня', 4.5, 3.5);

  int areaOfAuditory3 = calculateArea(5.5, 6.5);
  int areaOfHall = calculateArea(10, 7.5);
  int areaOfKitchen = calculateArea(4.5, 3.5);

  print('Площадь комнаты Аудитория 3 = $areaOfAuditory3 кв.м.');
  print('Площадь комнаты Холл = $areaOfHall кв.м.');
  print('Площадь комнаты Кухня = $areaOfKitchen кв.м.');
  print(
    'ОБЩАЯ ПЛОЩАДЬ = ${areaOfAuditory3 + areaOfKitchen + areaOfHall} кв.м.',
  );
  print(
    'Цена доставки в Бишкек ${calculateShippingCost(weight: 5, city: 'Бишкек')}',
  );
  print(
    'Цена доставки в Бишкек ${calculateShippingCost(city: 'Ош', weight: 2, pricePerKg: 190)}',
  );

  print(globalVariable);
}

double calculateShippingCost({
  required String city,
  required double weight,
  int pricePerKg = 200,
}) {
  double cost = weight * pricePerKg;
  if (city.toLowerCase() != 'бишкек') {
    cost *= 2;
  }
  return cost;
}

int calculateArea(double length, double width) {
  // возвращаемая функция с  параметрами
  double area = length * width;
  return area.round();
}

void calculatePerimeter(String room, double length, double width) {
  // невозвращаемая функция с параметрами
  double perimeter = (length + width) * 2;
  print('Периметр комнаты $room = $perimeter м.');
}

void addition(int num1, int num2, String phrase) {
  // невозвращаемая функция с параметрами
  int result = num1 + num2;
  print('$phrase: $result');
}

void makeTea() {
  // невозвращаемая функция без параметров
  print('Вскипятить воду');
  print('Насыпать заварку');
  print('Залить кипятком');
  print('Дать настояться');
  print('Налить в чашку');
  print('Добавить молоко или сахар по-вкусу');
  result();
}

void result() {
  // невозвращаемая функция без параметров
  print('Процесс занял 5 минут');
}

String globalVariable = 'Я глобальная перменная';
void scopeExample(int paramVariable) {
  print(globalVariable);
  print(paramVariable);
  // print(localVariable);
  String localVariable = 'Я локальная переменная';
  print(localVariable);
  if (paramVariable > 0) {
    print(localVariable);
    double ifBlockVariable = 8.1;
    print(ifBlockVariable);
  }
  // print(ifBlockVariable);
}
// end of program