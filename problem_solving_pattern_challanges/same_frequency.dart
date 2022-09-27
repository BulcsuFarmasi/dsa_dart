bool sameFrequency(int number, int otherNumber) {

  if (number <= 0) {
    throw Exception('Number should be a positive integer');
  }

  if (otherNumber <= 0) {
    throw Exception('Other number should be a postive integer');
  }

  Map<int, int> numberFrequencies = {};

  while(number > 0) {
    int currentDigit = number % 10;
    if (numberFrequencies.containsKey(currentDigit)) {
      numberFrequencies[currentDigit] = numberFrequencies[currentDigit]! + 1;
    } else {
      numberFrequencies[currentDigit] = 1;
    }

    number = (number / 10).floor();
  }

   Map<int, int> otherNumberFrequencies = {};

  while(otherNumber > 0) {
    int currentDigit = otherNumber % 10;
    if (otherNumberFrequencies.containsKey(currentDigit)) {
      otherNumberFrequencies[currentDigit] = otherNumberFrequencies[currentDigit]! + 1;
    } else {
      otherNumberFrequencies[currentDigit] = 1;
    }

    otherNumber = (otherNumber / 10).floor();
  }

  for(int i = 0; i < numberFrequencies.keys.length; i++) {
    int numberFrequencyKey = numberFrequencies.keys.toList()[i];
    if ((!otherNumberFrequencies.containsKey(numberFrequencyKey)) || numberFrequencies[numberFrequencyKey] != otherNumberFrequencies[numberFrequencyKey]){
      return false;
    }
  }

  return true;
}

void main() {
  print(sameFrequency(1212, 1121));
}