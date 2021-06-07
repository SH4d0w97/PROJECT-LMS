import 'dart:io';

class A {
  int n = 0;

  A(int n) {
    this.n = n;
  }

  void read() {
    stdout.write("ENTER A NUMBER : ");
    n = int.parse(stdin.readLineSync().toString());
  }

  void write() {
    print(n);
  }
}

void main() {
  A a1 = new A(1);
  A a2 = new A(2);
  A a3 = new A(3);

  a1.read();
  a2.read();

  a3.n = a1.n * a2.n;

  a3.write();
}
