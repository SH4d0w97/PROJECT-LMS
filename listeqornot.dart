import 'dart:io';

void main() {
  check();
}

check() {
  int i;

  stdout.write("ENTER THE SIZE OF LIST1 : ");
  int n = int.parse(stdin.readLineSync().toString());

  var list1 = new List.filled(n, 0, growable: true);

  for (i = 0; i < n; i++) {
    stdout.write("ENTER ELEMENT " + i.toString() + " : ");
    int x = int.parse(stdin.readLineSync().toString());
    list1[i] = x;
  }
  stdout.write(list1.toString());
  print("");

  stdout.write("ENTER THE SIZE OF LIST2 : ");
  int m = int.parse(stdin.readLineSync().toString());

  var list2 = new List.filled(m, 0, growable: true);

  for (i = 0; i < m; i++) {
    stdout.write("ENTER ELEMENT " + i.toString() + " : ");
    int y = int.parse(stdin.readLineSync().toString());
    list2[i] = y;
  }
  stdout.write(list2.toString());
  print("");

  int flag = 0;

  if (n == m) {
    int len = list1.length;
    for (i = 0; i < len; i++) {
      if (list1[i] == list2[i]) {
        print(list1[i].toString() + " , " + list2[i].toString());
        flag = flag + 1;
      } else {
        print(list1[i].toString() + " , " + list2[i].toString());
        flag = 0;
      }
    }
    if (flag == len) {
      print("LIST1 & LIST2 ARE MATCH");
    } else if (flag == 0) {
      print("LIS1 & LIST2 ARE NOT MATCH");
    }
  } else {
    print("!! SIZE MISSMATCH !!, SIZE OF LIST1 & LIST 2 IS NOT EQUAL");
  }
}
