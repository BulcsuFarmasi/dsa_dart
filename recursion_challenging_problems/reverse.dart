String reverse(String string) {
  String reversed = "";

  void recurse(String string) {
    if (string.isEmpty) {
      return;
    }

    reversed += string.substring(string.length -1);

    recurse(string.substring(0, string.length - 1));
  }

  recurse(string);

  return reversed;
}

void main() {
  print(reverse('awesome'));
}