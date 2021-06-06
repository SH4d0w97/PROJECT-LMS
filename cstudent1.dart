import 'dart:io';

class student {
  String name = "", address = "", place = "", email = "";
  int age = 0;

  void read() {
    stdout.write("ENTER THE NAME : ");
    name = stdin.readLineSync().toString();

    age = test();

    stdout.write("ENTER THE PLACE : ");
    place = stdin.readLineSync().toString();

    stdout.write("ENTER THE E-MAIL ID : ");
    email = stdin.readLineSync().toString();

    stdout.write("ENTER THE ADDRESS : ");
    address = stdin.readLineSync().toString();
  }

  void display() {
    print("Name: " + name);
    print("Age: " + age.toString());
    print("Place: " + place);
    print("Email: " + email);
    print("Address: " + address);
    print("");
  }

  void search() {
    print("1. SEARCH NAME");
    print("2. SEARCH AGE");
    print("3. SEARCH PLACE");
    print("4. SEARCH E-MAIL");
    print("5. SEARCH ADDRESS");
    print("Enter the choice");

    int ch = int.parse(stdin.readLineSync().toString());
    if (ch == 1) {
      stdout.write("Enter the name : ");
      String nm1 = stdin.readLineSync().toString();
      if (nm1 == name) {
        print("Match found");
      } else {
        print("no match");
      }
    } else if (ch == 2) {
      stdout.write("Enter the age : ");
      int age1 = test();
      if (age1 == age) {
        print("Match found");
      } else {
        print("no match");
      }
    } else if (ch == 3) {
      stdout.write("Enter the place : ");
      String plc1 = stdin.readLineSync().toString();
      if (plc1 == place) {
        print("Match found");
      } else {
        print("no match");
      }
    } else if (ch == 4) {
      stdout.write("Enter the E-mail id : ");
      String eml1 = stdin.readLineSync().toString();
      if (eml1 == email) {
        print("Match found");
      } else {
        print("no match");
      }
    } else if (ch == 5) {
      stdout.write("Enter the Address : ");
      String adr1 = stdin.readLineSync().toString();
      if (adr1 == address) {
        print("Match Found");
      } else {
        print("no match");
      }
    }
  }

  void edit() {
    print("1. Name");
    print("2. Age");
    print("3. Place");
    print("4. E-mail");
    print("5. Address");
    print("Enter the field to be changed : ");

    int ch = int.parse(stdin.readLineSync().toString());
    if (ch == 1) {
      stdout.write("Enter the new name : ");
      String name1 = stdin.readLineSync().toString();
      name = name1;
    } else if (ch == 2) {
      stdout.write("Enter the new Age : ");
      int age1 = test();
      age == age1;
    } else if (ch == 3) {
      stdout.write("Enter the new place : ");
      String plc1 = stdin.readLineSync().toString();
      place = plc1;
    } else if (ch == 4) {
      stdout.write("Enter the new E-mail  :");
      String eml1 = stdin.readLineSync().toString();
      email = eml1;
    } else if (ch == 5) {
      stdout.write("Enter the new adddress");
      String ad1 = stdin.readLineSync().toString();
      address = ad1;
    }
  }
}

void main() {
  menuloop();
}

menuloop() {
  var list1 = new List.filled(0, student(), growable: true);

  int i = 0, j = 0;
  while (j != 6) {
    j = menu();
    if (j == 1) {
      student stud = new student();
      stud.read();
      list1.add(stud);
    } else if (j == 2) {
      int l = list1.length;
      list1[l - 1].search();
    } else if (j == 3) {
      int l = list1.length;
      for (i = 0; i < l; i++) {
        list1[i].display();
      }
    } else if (j == 4) {
      print("Enter the name of the student");
      String name2 = stdin.readLineSync().toString();
      int l = list1.length;
      for (i = 0; i < l; i++) {
        if (list1[i].name == name2) {
          list1[i].edit();
        }
      }
    } else if (j == 5) {
      print("ENTER THE NAME OF RECORD : ");
      String nam = stdin.readLineSync().toString();
      int l = list1.length;
      for (i = 0; i < l; i++) {
        if (list1[i].name == nam) {
          list1.removeAt(i);
        }
      }
    } else if (j == 6) {
      print("");
    } else
      () {};
  }
}

menu() {
  print("1. REGISTER");
  print("2. SEARCH");
  print("3. VIEW");
  print("4. EDIT");
  print("5. DELETE");
  print("6. EXIT");
  stdout.write("ENTER THE CHOICE : ");

  int j = int.parse(stdin.readLineSync().toString());

  return j;
}

test() {
  int a = 0, flag = 0;
  while (flag == 0) {
    try {
      stdout.write("Enter the age : ");
      flag = 1;
      a = int.parse(stdin.readLineSync().toString());
    } catch (e) {
      flag = 0;
      print(e);
    }
  }
  return a;
}
