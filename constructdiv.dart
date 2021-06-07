import 'dart:io';

class div {
  double n = 0;

  div(double n) {
    this.n = n;
  }
  void write() {
    print(n);
  }
}

void main() {
  div a1 = new div(5);
  div a2 = new div(2);
  div a3 = new div(1);

  a3.n = a1.n / a2.n;

  a3.write();
}
