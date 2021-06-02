import 'dart:io';

void main()
{
	loop();
	
}

    loop()
    {
        int i = 0;
        while (i != 4)
        {
          i = menu();
            if (i==1)
            {
              add();
            }
              else if(i==2)
              {
                search();
              }
                else if(i==3)
                {
                  edit();
                }
                  else if(i==4)
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
      print("1" + " " + "ADD LIST");
      print("2" + " " + "SEARCH");
      print("3" + " " + "EDIT");
      print("4" + " " + "EXIT");

      stdout.write("Enter your choice:");
      int i = int.parse(stdin.readLineSync().toString());
      return i;
    }



add()
{
	int i;
	print("Enter the number of elements");
	int c=int.parse(stdin.readLineSync().toString());
        var list1=new List.filled(c,0,growable:true);
	for(i=0;i<c;i++)
	{
		print("enter elemenet"+" "+ i.toString());
		int a=int.parse(stdin.readLineSync().toString());
		list1[i]=a;		
	}
	print(list1);
}


search()
{
	int i,b=0;
	print("Enter the element to search");
	int c=int.parse(stdin.readLineSync().toString());
	var list1=new List.filled(5,0);
	list1[0]=1;
	list1[1]=2;
	list1[2]=3;
	list1[3]=4;
	list1[4]=5;

	for(i=0;i<5;i++)
	{
		if(list1[i]==c)
		{
			print("Match Found at"+i.toString());
			b++;
		}
		
	}
	
		if(b==1)
		{
			print("Element Not Found");
		}
}


edit()
	{	
		print("Enter the position of element to edit");
		int c=int.parse(stdin.readLineSync().toString());
		print("Enter the element to value ");
		int d=int.parse(stdin.readLineSync().toString());
		var list1=new List.filled(5,0);
		
		list1[0]=1;
		list1[1]=2;
		list1[2]=3;
		list1[3]=4;
		list1[4]=5;
		
		
		list1[c]=d;
		
		print(list1);
		
	}