import 'dart:io';

void main() {
  int a = 0, b = 0;
  a = test("A");
  b = test("B");

  double c = a / b;

  stdout.write(c.toString());
}

/*
  stdout.write("ENTER 1ST NUMBER");
  int a = int.parse(stdin.readLineSync().toString());
  stdout.write("ENTER 2ND NUMBER");
  int b = int.parse(stdin.readLineSync().toString());

  double c = a / b;

  stdout.write(c.toString());
  */

test(A) {
  int flag = 0, a = 0;
  while (flag == 0) {
    try {
      stdout.write("ENTER THE VALUE : ");
      flag = 1;
      a = int.parse(stdin.readLineSync().toString());
    } catch (e) {
      flag = 0;
      print(e);
    }
  }
  return a;
}
