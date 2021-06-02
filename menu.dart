import 'dart:io';

void main() 
{
  loop();
}



    loop()
    {
        int i = 0;
        while (i != 5)
        {
          i = menu();
            if (i==1)
            {
              add();
            }
              else if(i==2)
              {
                sub();
              }
                else if(i==3)
                {
                  div();
                }
                  else if(i==4)
                  {
                    multi();
                  }
                    else if(i==5)
                    {
                      print("");
                    }
                      else
                      {
                        print("!! ENTER A VALID OPTION !!");
                      }
        }
    }



    menu()
    {
      print("1" + " " + "ADD");
      print("2" + " " + "SUBSTRACT");
      print("3" + " " + "DIVISION");
      print("4" + " " + "MULTIPLICATION");
      print("5" + " " + "EXIT");

      stdout.write("Enter your choice:");
      int i = int.parse(stdin.readLineSync().toString());
      return i;
    }



    add()
    {
      stdout.write("Enter value of A :");
      int a = int.parse(stdin.readLineSync().toString());
      stdout.write("Enter value of B :");
      int b = int.parse(stdin.readLineSync().toString());

      int z = a+b;
      print("SUM ="+z.toString());
      print("");
    }

    sub()
    {
      stdout.write("Enter value of A :");
      int a = int.parse(stdin.readLineSync().toString());
      stdout.write("Enter value of B :");
      int b = int.parse(stdin.readLineSync().toString());
      
      int z = a-b;
      print("DIFFERENCE ="+z.toString());
      print("");
    }


    div()
    {
      stdout.write("Enter value of A :");
      int a = int.parse(stdin.readLineSync().toString());
      stdout.write("Enter value of B :");
      int b = int.parse(stdin.readLineSync().toString());
      
      double z = a/b;
      print("QUOTIENT ="+z.toString());
      print("");
    }


    multi()
    {
      stdout.write("Enter value of A :");
      int a = int.parse(stdin.readLineSync().toString());
      stdout.write("Enter value of B :");
      int b = int.parse(stdin.readLineSync().toString());
      
      int z = a*b;
      print("PRODUCT ="+z.toString());
      print("");
    }