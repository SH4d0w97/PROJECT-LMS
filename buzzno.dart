import 'dart:io';

void main() {
  buzz();
}

buzz() {
  int n;

  stdout.write("ENTER A NUMBER :");
  n = int.parse(stdin.readLineSync().toString());

  if (n % 7 == 0 && n % 10 == 7) {
    print(
        n.toString() + " IS A BUZZ NUMBER ( IS DIVISIBLE BY 7 & END WITH 7 )");
  } else if (n % 7 == 0 && n % 10 != 7) {
    print(n.toString() +
        " NOT A BUZZ NUMBER ( IS DIVISIBLE BY 7, BUT DOESN'T END WITH 7 )");
  } else if (n % 7 != 0 && n % 10 == 7) {
    print(n.toString() +
        " NOT A BUZZ NUMBER ( IT END WITH 7, BUT ISN'T DIVISIBLE BY 7 )");
  } else {
    print("BUZZ NUMBER IS A NUMBER THAT ENDS WITH 7 AND DIVISIBLE BY 7");
  }
}
