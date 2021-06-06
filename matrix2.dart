import 'dart:io';

void main() {
  var mainlist = new List.filled(0, [], growable: true);
  var mainlist2 = new List.filled(0, [], growable: true);
/*
  var mainlist3 = new List.filled(0, [], growable: true);
  var mainlist4 = new List.filled(0, [], growable: true);
  var mainlist5 = new List.filled(0, [], growable: true);
  var mainlist6 = new List.filled(0, [], growable: true);
  var mainlist7 = new List.filled(0, [], growable: true);
*/

  mainlist = add(mainlist);
  printmatrix(mainlist);

  mainlist2 = add(mainlist2);
  printmatrix(mainlist2);
/*
  mainlist3 = matrixadd(mainlist, mainlist2, mainlist3);
  printmatrix(mainlist3);

  mainlist4 = matrixsub(mainlist, mainlist2, mainlist4);
  printmatrix(mainlist4);

  mainlist5 = matrixtrans(mainlist, mainlist5);
  printmatrix(mainlist5);

  mainlist6 = matrixdiv(mainlist, mainlist2, mainlist6);
  printmatrix(mainlist6);

  mainlist7 = matrixmulti(mainlist, mainlist2, mainlist7);
  printmatrix(mainlist7); 

*/
}

add(mainlist) {
  int m, n;

  print("Enter the number of Rows :");
  m = int.parse(stdin.readLineSync().toString());
  print("Enter the number of Column :");
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

//FUNCTION TO PRINT THE MATRIX
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

/*
//FUNCTION TO ADD MATRICES
matrixadd(mainlist, mainlist2, mainlist3) {
  int i, j, m, n, a, b, c;

  m = mainlist.length;
  n = mainlist2.length;

  if (m == n) {
    for (i = 0; i < m; i++) {
      var sublist2 = new List.filled(0, 0, growable: true);

      for (j = 0; j < n; j++) {
        a = mainlist[i][j];
        b = mainlist2[i][j];
        c = a + b;

        sublist2.add(c);
      }
      mainlist3.add(sublist2);
    }
  } else {
    print("ROWS not equal to COLUMNS");
  }
  return (mainlist3);
}

//FUNCTION TO SUBSTRACT MATRICES
matrixsub(mainlist, mainlist2, mainlist4) {
  int i, j, m, n, a, b, c;

  var sublist3 = new List.filled(0, 0, growable: true);
  m = mainlist.length;
  n = mainlist2.length;

  if (m == n) {
    for (i = 0; i < m; i++) {
      for (j = 0; j < n; j++) {
        a = mainlist[i][j];
        b = mainlist2[i][j];

        c = a - b;

        sublist3.add(c);
      }
      mainlist4.add(sublist3);
    }
  } else {
    print("ROWS not equal to COLUMNS");
  }
  return (mainlist4);
}

//FUNCTION TO TRANS POSITION MATRIX
matrixtrans(mainlist, mainlist5) {
  int i, j;
  int a = mainlist.length;
  for (i = 0; i < a; i++) {
    int b = mainlist[i].length;
    var sublist = new List.filled(0, 0, growable: true);
    for (j = 0; j < b; j++) {
      int temp = mainlist[j][i];
      sublist.add(temp);
    }
    mainlist5.add(sublist);
  }
  return (mainlist5);
}

//INVERSE

//DIVIDE
matrixdiv(mainlist, mainlist2, mainlist6) {
  int i, j, m, n, a, b, c;

  var sublist = new List.filled(0, 0, growable: true);
  m = mainlist.length;
  n = mainlist2.length;

  if (m == n) {
    for (i = 0; i < m; i++) {
      for (j = 0; j < n; j++) {
        a = mainlist[i][j];
        b = mainlist2[i][j];

        c = a ~/ b;

        sublist.add(c);
      }
      mainlist6.add(sublist);
    }
  } else {
    print("ROWS not equal to COLUMNS");
  }
  return (mainlist6);
}

//MULTIPLICATION
matrixmulti(mainlist, mainlist2, mainlist7) {
  int i, j, k, m, n;
  int pro = 0;

  m = mainlist.length;
  n = mainlist2.length;

  print(mainlist);
  print(mainlist2);

  if (m == n) {
    for (i = 0; i < m; i++) {
      int p = mainlist[i].length;
      var sublist = new List.filled(0, 0, growable: true);
      for (k = 0; k < p; k++) {
        pro = 0;
        for (j = 0; j < n; j++) {
          try {
            int c1 = mainlist[i][j];
            int c2 = mainlist2[j][k];
            //print("c1 =" + c1.toString());
            //print("c2 =" + c2.toString());
            pro = pro + (c1 * c2);
          } catch (e) {
            print(e);
          }
        }
        sublist.add(pro);
      }
      mainlist7.add(sublist);
    }
  } else {
    print("ROWS not equal to COLUMNS");
  }
  print(mainlist7);
  return (mainlist7);
}

*/

//SCALAR MULTIPLICATION

//DIAGONAL MATRIX
