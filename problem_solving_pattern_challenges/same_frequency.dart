bool sameFrequency(int number, int otherNumber) {

  checkNumberValidity(number);
  checkNumberValidity(otherNumber);

 Map<int, int> numberFrequencies = calculateNumberFrequencies(number);
 Map<int, int> otherNumberFrequencies = calculateNumberFrequencies(otherNumber);


  for(int i = 0; i < numberFrequencies.keys.length; i++) {
    int numberFrequencyKey = numberFrequencies.keys.toList()[i];
    if ((!otherNumberFrequencies.containsKey(numberFrequencyKey)) || numberFrequencies[numberFrequencyKey] != otherNumberFrequencies[numberFrequencyKey]){
      return false;
    }
  }

  return true;
}

void checkNumberValidity(int number) {
  if (number <= 0) {
    throw Exception('Number should be a positive integer');
  }
}

Map<int, int> calculateNumberFrequencies(int number) {
   Map<int, int> numberFrequencies = {};

  while(number > 0) {
    int currentDigit = number % 10;
    numberFrequencies[currentDigit] = (numberFrequencies.containsKey(currentDigit)) ? numberFrequencies[currentDigit]! + 1 : 1;

    number = (number / 10).floor();
  }

   return numberFrequencies;
}

void main() {
  print(sameFrequency(1212, -1));
}