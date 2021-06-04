import 'dart:io';

void main()
{
	var mainlist = new List.filled(0,[],growable:true);
	var sublist =new List.filled(0,0,growable:true);
	var sublist2 = new List.filled(0,0,growable:true);

	sublist.add(1);
	sublist.add(2);
	sublist.add(3);
	sublist.add(4);

	mainlist.add(sublist);

	print(mainlist);
	print(sublist);

	sublist2.add(0);
	sublist2.add(9);
	sublist2.add(8);
		
	mainlist.add(sublist2);
	
	print(mainlist);
	print(sublist2);

	print(mainlist[1][1]);

	
	int b = 10;
	mainlist[1][1] = b;
	print(mainlist[1][1]);
	



	int i=0,j=0,e=0;
	print("Enter the list no :");
	i=int.parse(stdin.readLineSync().toString());
	print("Enter the position of element :");
	j=int.parse(stdin.readLineSync().toString());


	print("Enter the new value : ");
	e=int.parse(stdin.readLineSync().toString());
	
	mainlist[i][j] = e;
	
	print(mainlist);
	print(mainlist[i][j]);
}