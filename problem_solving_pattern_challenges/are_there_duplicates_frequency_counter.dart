bool areThereDuplicatesFrequencyCounter(List<dynamic> arguments) {
    if(arguments.isEmpty) {
      return false;
    }

   Map<dynamic, int> valueFrequencies = {};

   print(arguments);


    for (dynamic argument in arguments) {
      valueFrequencies[argument] = (valueFrequencies[argument] ?? 0) + 1;
    }

    print(valueFrequencies);

    

    for (dynamic value in valueFrequencies.values) {
      print(value);
      if (value > 1) {
        return true;
      }
    }

    return false;
}

void main () {
    print(areThereDuplicatesFrequencyCounter(['a','b','b']));
}