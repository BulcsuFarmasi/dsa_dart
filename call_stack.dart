import 'dart:math';

String takeShower() {
  return 'Showering';
}

String eatBreakfast() {
  final meal = cookMeal();
  return 'Eating $meal';
}

String cookMeal() {
  final List<String> items = ["Oatmeal", "Eggs", "Protein Shake"];
  return items[Random().nextInt(items.length)];
}

void wakeUp() {
  takeShower();
  eatBreakfast();
  print('Ok ready to go to work!');
}

void main() {
  wakeUp();
}