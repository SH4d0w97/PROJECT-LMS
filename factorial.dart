import 'dart:io';

void main() {
  fact();
}

fact() {
  int i, n, fact = 1;

  stdout.write("ENTER A NUMBER TO FIND ITS FACTORIAL :");
  n = int.parse(stdin.readLineSync().toString());

  if (n == 0) {
    print(n.toString() + " HAS NO FACTORIAL");
  } else {
    for (i = 1; i <= n; i++) {
      fact = fact * i;
      print(i.toString());
    }
    print("FACTORIAL OF " + n.toString() + " IS " + fact.toString());
  }
}
