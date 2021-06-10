import 'dart:io';

void main() {
  ctof();
}

ctof() {
  stdout.write("ENTER TEMPRATURE IN FAHRENHEIT : ");
  int n = int.parse(stdin.readLineSync().toString());
  double temp = (n - 32) / 1.8;
  print(n.toString() + " FAHRENHEIT IS " + temp.toString() + " IN CELSIUS");
}
