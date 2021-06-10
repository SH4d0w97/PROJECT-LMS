import 'dart:io';

void main() {
  div();
}

div() {
  stdout.write("ENTER THE 1st NUMBER : ");
  int n = int.parse(stdin.readLineSync().toString());
  stdout.write("ENTER THE 2nd NUMBER : ");
  int m = int.parse(stdin.readLineSync().toString());

  if (n % m == 0) {
    print(n.toString() + " IS DIVISIBLE BY " + m.toString());
  } else {
    print(n.toString() + " ISN'T DIVISIBLE BY " + m.toString());
  }
}
