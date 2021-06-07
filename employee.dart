import 'dart:io';

void main() {
  menuloop();
}

//OPTION MENULOOP
menuloop() {
  var mainlist = new List.filled(0, {}, growable: true);

  int i = 0;

  while (i != 5) {
    i = menu();

    if (i == 1) {
      mainlist = add(mainlist);
    } else if (i == 2) {
      search(mainlist);
    } else if (i == 3) {
      edit(mainlist);
    } else if (i == 4) {
      delete(mainlist);
    } else if (i == 5) {
      print("");
    } else {
      print("ENTER A VALID OPTION");
    }
  }
}

//OPTION MENU
menu() {
  print("1. CREATE RECORD");
  print("2. SEARCH RECORD");
  print("3. EDIT RECORD");
  print("4. DELETE RECORD");
  print("5. EXIT");

  stdout.write("ENTER YOUR OPTION : ");
  int i = int.parse(stdin.readLineSync().toString());
  print("");
  return i;
}

//ADD RECORD
add(mainlist) {
  stdout.write("ENTER THE NUMBER OF RECORDS : ");
  int n = int.parse(stdin.readLineSync().toString());

  int i, j;

  for (i = 0; i < n; i++) {
    var sublist = new Map();

    for (j = 0; j < 1; j++) {
      stdout.write("Enter the name of the employee : ");
      String name = stdin.readLineSync().toString();
      sublist["NAME"] = name;

      stdout.write("Enter the Salary : ");
      int sal = int.parse(stdin.readLineSync().toString());
      sublist["SALARY"] = sal;

      stdout.write("Enter the age : ");
      int age = int.parse(stdin.readLineSync().toString());
      sublist["AGE"] = age;

      stdout.write("Enter the Designation : ");
      String desig = stdin.readLineSync().toString();
      sublist["DESIG"] = desig;

      print("");
    }
    mainlist.add(sublist);
  }
  return (mainlist);
}

//SEARCH RECORD
search(mainlist) {
  int n = mainlist.length;

  print("1. SEARCH NAME");
  print("2. SEARCH SALARY");
  print("3. SEARCH AGE");
  print("4. SEARCH DESIGNATION");
  stdout.write("ENTER YOUR CHOICE : ");
  int op = int.parse(stdin.readLineSync().toString());
  print("");

  int i;
  if (op == 1) {
    stdout.write("ENTER THE NAME : ");
    String nme = stdin.readLineSync().toString();
    int flag = 0;
    for (i = 0; i < n; i++) {
      if (mainlist[i]["NAME"] == nme) {
        print(mainlist[i]["NAME"]);
        flag = 1;
      }
    }
    if (flag == 0) {
      print("MATCH NOT FOUND");
    }
  } else if (op == 2) {
    stdout.write("ENTER THE SALARY : ");
    int sal = int.parse(stdin.readLineSync().toString());
    int flag = 0;
    for (i = 0; i < n; i++) {
      if (mainlist[i]["SALARY"] == sal) {
        print(mainlist[i]["SALARY"]);
        flag = 1;
      }
    }
    if (flag == 0) {
      print("MATCH NOT FOUND");
    }
  } else if (op == 3) {
    stdout.write("ENTER THE AGE : ");
    int age = int.parse(stdin.readLineSync().toString());
    int flag = 0;
    for (i = 0; i < n; i++) {
      if (mainlist[i]["AGE"] == age) {
        print(mainlist[i]["AGE"]);
        flag = 1;
      }
    }
    if (flag == 0) {
      print("MATCH NOT FOUND");
    }
  } else if (op == 4) {
    stdout.write("ENTER THE DESIGNATION : ");
    String desig = stdin.readLineSync().toString();
    int flag = 0;
    for (i = 0; i < n; i++) {
      if (mainlist[i]["DESIGNATION"] == desig) {
        print(mainlist[i]["DESIGNATION "]);
        flag = 1;
      }
    }
    if (flag == 0) {
      print("MATCH NOT FOUND");
    }
  }
}

//EDIT RECORD
edit(mainlist) {
  int n = mainlist.length;

  print(mainlist);
  print("");

  print("1. EDIT NAME");
  print("2. EDIT SALARY");
  print("3. EDIT AGE");
  print("4. EDIT DESIGNATION");
  stdout.write("ENTER YOUR CHOICE : ");
  int op = int.parse(stdin.readLineSync().toString());
  print("");

  int i;

  if (op == 1) {
    stdout.write("ENTER THE NAME TO BE CHANGED : ");
    String oldnme = stdin.readLineSync().toString();
    stdout.write("ENTER THE NEW NAME TO BE ADDED : ");
    String newnme = stdin.readLineSync().toString();

    int flag = 0;

    for (i = 0; i < n; i++) {
      if (mainlist[i]["NAME"] == oldnme) {
        mainlist[i]["NAME"] = newnme;
        flag = 1;
      }
    }
    if (flag == 0) {
      print("RECORD DOESNT EXIST");
    }
    print("UPDATED RECORD IS " + mainlist.toString());
  } else if (op == 2) {
    stdout.write("ENTER THE SALARY TO BE CHANGED : ");
    int oldsal = int.parse(stdin.readLineSync().toString());
    stdout.write("ENTER THE NEW SALARY TO BE ADDED : ");
    int newsal = int.parse(stdin.readLineSync().toString());

    int flag = 0;

    for (i = 0; i < n; i++) {
      if (mainlist[i]["SALARY"] == oldsal) {
        mainlist[i]["SALARY"] = newsal;
        flag = 1;
      }
    }
    if (flag == 0) {
      print("RECORD DOESNT EXIST");
    }
    print("UPDATED RECORD IS " + mainlist.toString());
  } else if (op == 3) {
    stdout.write("ENTER THE AGE TO BE CHANGED : ");
    int oldage = int.parse(stdin.readLineSync().toString());
    stdout.write("ENTER THE NEW AGE TO BE ADDED : ");
    int newage = int.parse(stdin.readLineSync().toString());

    int flag = 0;

    for (i = 0; i < n; i++) {
      if (mainlist[i]["NAME"] == oldage) {
        mainlist[i]["NAME"] = newage;
        flag = 1;
      }
    }
    if (flag == 0) {
      print("RECORD DOESNT EXIST");
    }
    print("UPDATED RECORD IS " + mainlist.toString());
  } else if (op == 4) {
    stdout.write("ENTER THE DESIGNATION TO BE CHANGED : ");
    String olddesig = stdin.readLineSync().toString();
    stdout.write("ENTER THE NEW DESIGNATION TO BE ADDED : ");
    String newdesig = stdin.readLineSync().toString();

    int flag = 0;

    for (i = 0; i < n; i++) {
      if (mainlist[i]["NAME"] == olddesig) {
        mainlist[i]["NAME"] = newdesig;
        flag = 1;
      }
    }
    if (flag == 0) {
      print("RECORD DOESNT EXIST");
    }
    print("UPDATED RECORD IS " + mainlist.toString());
  }
}

//DELETE RECORD
delete(mainlist) {
  int n = mainlist.length;

  print(mainlist);
  print("TOTAL NO OF RECORDS = " + n.toString());
  print("RECORD STARTS FROM 0 to " + (n - 1).toString());
  print("");

  stdout.write("ENTER THE RECORD TO BE DELETED : ");
  int rec = int.parse(stdin.readLineSync().toString());
  int i, flag = 0;

  for (i = 0; i < n; i++) {
    if (i == rec) {
      mainlist.removeAt(i);
      flag = 1;
    }
  }
  if (flag == 0) {
    print("RECORD DOESNT EXIST");
  }
  print("UPDATED RECORD IS " + mainlist.toString());
}
