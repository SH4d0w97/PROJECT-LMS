import 'dart:io';

void main() {
  int k, i, j, n = 6;

//LETTER T
  print("");
  for (k = 1; k <= n; k++) {
    stdout.write(" *");
  }

  print("");
  for (i = 1; i <= n; i++) {
    for (j = 1; j <= 3; j++) {
      stdout.write(" " * 2);
    }
    for (k = i; k <= i; k++) {
      stdout.write("*");
    }
    print("");
  }

  print("_______________");

//LETTER I
  print("");
  for (k = 1; k <= n; k++) {
    stdout.write(" *");
  }

  print("");
  for (i = 1; i <= n; i++) {
    for (j = 1; j <= 3; j++) {
      stdout.write(" " * 2);
    }
    for (k = i; k <= i; k++) {
      stdout.write("*");
    }
    print("");
  }
  for (k = 1; k <= n; k++) {
    stdout.write(" *");
  }
  print("");
  print("_______________");

//LETTER 0
  print("");
  for (k = 1; k <= n - 1; k++) {
    stdout.write(" *");
  }
  for (i = 1; i <= n; i++) {
    for (j = i; j <= i; j++) {
      stdout.write("0");
    }
    for (k = i; k <= i; k++) {
      stdout.write(" +" * 4);
      stdout.write(" *");
    }

    print("");
  }
  for (k = 1; k <= n - 1; k++) {
    stdout.write(" *");
  }

  print("");
}
