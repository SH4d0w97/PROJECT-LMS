import 'dart:io';

void main() {
  var mainlist = new List.filled(0, [], growable: true);
  var mainlist2 = new List.filled(0, [], growable: true);
  var mainlist3 = new List.filled(0, [], growable: true);

  mainlist = add(mainlist);
  printmatrix(mainlist);

  mainlist2 = convert(mainlist, mainlist2);
  printmatrix(mainlist2);

  mainlist3 = inverse(mainlist, mainlist2, mainlist3);
  printmatrix(mainlist3);
}

add(mainlist) {
  int m, n;

  stdout.write("Enter the number of Rows : ");
  m = int.parse(stdin.readLineSync().toString());
  stdout.write("Enter the number of Column : ");
  n = int.parse(stdin.readLineSync().toString());

  int i, j;
  for (i = 0; i < m; i++) {
    var sublist = new List.filled(0, 0.0, growable: true);
    for (j = 0; j < n; j++) {
      print("Enter the value " + j.toString() + " " + ":");
      double a = double.parse(stdin.readLineSync().toString());
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
      double temp = mainlist[i][j];
      stdout.write(" " + temp.toString() + " ");
    }
    print("");
  }
}

convert(mainlist, mainlist2) {
  int i, j, l = mainlist.length;

  double temp = mainlist[0][0];
  mainlist[0][0] = mainlist[1][1];
  mainlist[1][1] = temp;

  mainlist[0][1] = (-1 * mainlist[0][1]);
  mainlist[1][0] = (-1 * mainlist[1][0]);

  var sublist = new List.filled(0, 0.0, growable: true);
  for (i = 0; i < l; i++) {
    for (j = 0; j < l; j++) {
      double temp1 = mainlist[i][j];
      sublist.add(temp1);
    }
    mainlist2.add(sublist);
  }
  return mainlist;
}

inverse(mainlist, mainlist2, mainlist3) {
  double det =
      (mainlist[0][0] * mainlist[1][1]) - (mainlist[0][1] * mainlist[1][0]);

  int i, j, l = mainlist2.length;

  mainlist2[0][0] = (det / mainlist2[0][0]);
  mainlist2[0][1] = (det / mainlist2[0][1]);
  mainlist2[1][0] = (det / mainlist2[1][0]);
  mainlist2[1][1] = (det / mainlist2[1][1]);

  var sublist = new List.filled(0, 0.0, growable: true);
  for (i = 0; i < l; i++) {
    print(i);
    for (j = 0; j < l; j++) {
      print(j);
      double temp1 = mainlist2[i][j];
      sublist.add(temp1);
    }
    mainlist3.add(sublist);
  }
  return mainlist3;
}
