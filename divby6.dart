import 'dart:io';

void main() {
  div();
}

div() {
  stdout.write("ENTER A NUMBER : ");
  int n = int.parse(stdin.readLineSync().toString());

  if (n % 6 == 0) {
    print(n.toString() + " IS DIVISIBLE BY 6");
  } else {
    print(n.toString() + " ISN'T DIVISIBLE BY 6");
  }
}
