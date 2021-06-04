import  'dart:io';

void main()
{
	
	 add();
}

add()
{
	int i;
	
	var mainlist =new List.filled(0,[],growable:true);
	print("Enter the size of mainlist :");
	int n= int.parse(stdin.readLineSync().toString());
	
	var sublist = new List.filled(0,0,growable:true);
	print("Enter the size of sub list :");
	int a = int.parse(stdin.readLineSync().toString());

	for(i=0;i<n;i++)
	{
		//print(i.toString());	
	 	//var sublist = new List.filled(0,0,growable:true);
		//print("Enter the size of sub list :");
		//int a = int.parse(stdin.readLineSync().toString());
			
			int j;			

			for(j=0;j<a;j++)
			{
				print("Enter the values :");
				int b = int.parse(stdin.readLineSync().toString());
				sublist.add(b);	
			}
			mainlist.add(sublist);
	}
	print(mainlist);
	
}