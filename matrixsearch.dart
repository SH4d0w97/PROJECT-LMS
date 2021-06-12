import 'dart:io';

voidmain() {
  var mainlist = new List.filled(0, [], growable: true);
  var mainlist2 = new List.filled(0, [], growable: true);

  mainlist = add(mainlist);
  printmatrix(mainlist);

  mainlist2 = sortmatrix(mainlist, mainlist2);
  printmatrix(mainlist2);
}

add(mainlist) {
  int m, n;

  print("Enter the number of Rows : ");
  m = int.parse(stdin.readLineSync().toString());
  print("Enter the number of Column : ");
  n = int.parse(stdin.readLineSync().toString());

  int i, j;
  for (i = 0; i < m; i++) {
    var sublist = new List.filled(0, 0, growable: true);
    for (j = 0; j < n; j++) {
      print("Enter the value " + j.toString() + " " + ":");
      int a = int.parse(stdin.readLineSync().toString());
      sublist.add(a);
    }
    mainlist.add(sublist);
  }
  return (mainlist);
}

printmatrix(mainlist) {
  int i, j, n, m;
  n = mainlist.length;

  for (i = 0; i < n; i++) {
    m = mainlist[i].length;
    for (j = 0; j < m; j++) {
      int temp = mainlist[i][j];
      stdout.write(" " + temp.toString() + " ");
    }
    print("");
  }
}

sortmatrix(mainlist, mainlist2) {
  int i, j;
  int a = mainlist.length;
  for (i = 0; i < a; i++) {
    int b = mainlist[i].length;
    var sublist = new List.filled(0, 0, growable: true);
    for (j = 0; j < b; j++) {
      int temp = mainlist[j][i];
      sublist.add(temp);
    }
    mainlist2.add(sublist);
  }
  return (mainlist2);
}
