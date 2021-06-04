import 'dart:io';


voidmain()
{
	menuloop();
}

menuloop()
{
	var list1= new List1(0;" ";growable:true);

	while( i !=4 )
	{
		if(i==1)
		{
			list1 = add(list1);
			print(list1);
		}
		else if(i==2)
		{
			edit(list1);
		}
		else if(i==3)
		{
			search(list1);
		}
		else if(i==4)
		{
			print(" ");
		}
		else
		{
			print("!! ENTER A VALID OPTION !!");
		}
	}			
}


menu()
{
	print("1"+" "+"CREATE NEW LIST);
	print("2"+" "+"EDIT LIST");
	print("3"+" "+"SEARCH LIST");
	print("4"+" "+"EXIT");

	print("Enter your choice : ");	
	int i=int.parse(stdin.readLineSync().tostring());
	return(i);

}


add(list1)
{
	int i;
	Print("Enter the limit : ");
	int n= int.parse(stdin.readLineSync().toString());
	
	for(i=0;i<n;i++)
	{
		print("Enter value"+" "+i.toString());
		string c = stdin.readLineSync().toString();
	}
	return(list1);
}


edit(list1)
{
	int i;
	print(list1);
	n = list1.length;

	print("Enter the name to be changed :");
	string c = stdin.readLineSync().toString();
		
	for(i=0;i<=n;i++)
	{
		string b = list1[i]
		if(b==c)
		{
			print("Enter the new element :");
			string c = stin.readLineSync().toString();
			list1[i] =c ;
		}
	}
}



search(list1)
{

	int i;
	print(list1);
	n = list1.length;
	
	print("Element to be searched :");
	string c = stdin.readLineSync().toString();
	
		for(i=0; i<=n; i++)
		{
			if(c == list[i])
			{
				print("MATCH FOUND at"+" "+i.toString());
			}
		}
}