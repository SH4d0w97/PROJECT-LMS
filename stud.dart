import 'dart:io';

void main() {
  menuloop();
}

menuloop() {
  var biomain = new List.filled(0, [], growable: true);

  int i = 0;

  while (i != 5) {
    i = menu();

    if (i == 1) {
      biomain = newlist(biomain);
    } else if (i == 2) {
      edit(biomain);
    } else if (i == 3) {
      delete(biomain);
    } else if (i == 4) {
      int j = 0;

      while (j != 6) {
        j = submenu();

        if (j == 1) {
          age1(biomain);
        } else if (j == 2) {
          age2(biomain);
        } else if (j == 3) {
          name(biomain);
        } else if (j == 4) {
          place(biomain);
        } else if (j == 5) {
          phone(biomain);
        } else if (j == 6) j = 7;
      }
    } else if (i == 5) {
      print("");
    } else {
      print("!!ENTER A VALID OPTION!!");
    }
  }
}

menu() {
  print("1" + " " + "ADD STUDENT");
  print("2" + " " + "EDIT STUDENT");
  print("3" + " " + "DELETE STUDENT");
  print("4" + " " + "SEARCH STUDENT");
  print("5" + " " + "EXIT");

  stdout.write("Enter your choice :");
  int i = int.parse(stdin.readLineSync().toString());
  return i;
}

submenu() {
  print("1" + " " + "AGE <");
  print("2" + " " + "AGE >");
  print("3" + " " + "NAME");
  print("4" + " " + "PLACE");
  print("5" + " " + "PHONE");
  print("6" + " " + "BACK");

  stdout.write("Enter your choice :");
  int j = int.parse(stdin.readLineSync().toString());
  return j;
}

newlist(biomain) {
  int i;

  print("Enter the total number of record :");
  int n = int.parse(stdin.readLineSync().toString());

  for (i = 0; i < n; i++) {
    var biosub = new List.filled(0, "", growable: true);

    print("Enter the Student Name :");
    String sn = stdin.readLineSync().toString();
    biosub.add(sn);
    print("Enter the Age :");
    String ag = stdin.readLineSync().toString();
    biosub.add(ag);
    print("Enter the Address :");
    String adr = stdin.readLineSync().toString();
    biosub.add(adr);
    print("Enter the Phone no :");
    String pno = stdin.readLineSync().toString();
    biosub.add(pno);
    print("Enter the place :");
    String plc = stdin.readLineSync().toString();
    biosub.add(plc);

    biomain.add(biosub);
  }
  return (biomain);
}

edit(biomain) {
  print(biomain);
  print("Enter the position of sublist to be edited :");
  int i = int.parse(stdin.readLineSync().toString());
  print("Enter the position of element in the sublist to edit :");
  int j = int.parse(stdin.readLineSync().toString());
  print("Enter the new value to be added :");
  String k = stdin.readLineSync().toString();

  biomain[i][j] = k;
  print(biomain);
  return (biomain);
}

delete(biomain) {
  print(biomain);

  /*print("Enter the position of sublist :");
  int i = int.parse(stdin.readLineSync().toString());
  print("Enter the position of element in the sublist :");
  int j = int.parse(stdin.readLineSync().toString());*/

  int i = 0, j = 0;
  print("Enter the Sublist to delete the entry from :");
  i = int.parse(stdin.readLineSync().toString());
  print("Enter the entry to be deleted :");
  String ent = stdin.readLineSync().toString();

  if (ent == "name") {
    j = 0;
  } else if (ent == "age") {
    j = 1;
  } else if (ent == "address") {
    j = 2;
  } else if (ent == "phone") {
    j = 3;
  } else if (ent == "place") {
    j = 4;
  } else {
    print("ENTER ONE OF THESE OPTION (name, age, address, phone, place)");
  }

  biomain.removeAt(biomain[i][j]);
  return (biomain);
}

age1(biomain) {
  /*int i;
  print("Enter the age :");
  String n = stdin.readLineSync().toString(); 
  for () {
    String temp = biomain[i][1];
    if (temp <= n) {
      print(temp);
    }
  }*/
}

age2(biomain) {}

name(biomain) {
  int i;
  print("Enter the name to be searched :");
  String sname = stdin.readLineSync().toString();
  int n = biomain.length;

  for (i = 0; i <= n - 1; i++) {
    String temp = biomain[i][0];
    if (temp == sname) {
      print("MATCH FOUND AT SUB LIST " + i.toString() + " POSITION 0");
    }
  }
}

place(biomain) {
  int i;
  print("Enter the place to be searched :");
  String pname = stdin.readLineSync().toString();
  int n = biomain.length;

  for (i = 0; i <= n - 1; i++) {
    String temp = biomain[i][4];
    if (temp == pname) {
      print("MATCH FOUND AT SUB LIST " + i.toString() + " POSITION 4");
    }
  }
}

phone(biomain) {
  int i;
  print("Enter the phone number to be searched :");
  String pno = stdin.readLineSync().toString();
  int n = biomain.length;

  for (i = 0; i <= n - 1; i++) {
    String temp = biomain[i][3];
    if (temp == pno) {
      print("MATCH FOUND AT SUB LIST " + i.toString() + " POISITION 3");
    }
  }
}
