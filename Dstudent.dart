import 'dart:io';

class student {
  String name = "", cid = "";
  int rno = 0;
  var mark = new Map();

  void reg() {
    stdout.write("Enter the name of the Student : ");
    String name = stdin.readLineSync().toString();

    stdout.write("Enter the Roll no : ");
    int rno = int.parse(stdin.readLineSync().toString());

    stdout.write("Enter the Course ID : ");
    String cid = stdin.readLineSync().toString();

    print("Enter the mark of the following  the subject");
    stdout.write("PHYSIC : ");
    int phy = int.parse(stdin.readLineSync().toString());
    mark["PHYSIC"] = phy;

    stdout.write("CHEMISTRY : ");
    int chem = int.parse(stdin.readLineSync().toString());
    mark["CHEMISTRY"] = chem;

    stdout.write("BIOLOGY : ");
    int bio = int.parse(stdin.readLineSync().toString());
    mark["BIOLOGY"] = bio;
  }

  void display() {
    print(mark);
  }
}

void main() {
  student stud = new student();
  stud.reg();
  stud.display();
}
