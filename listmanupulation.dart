import 'dart:io';


void main()
{
	fun1();
}

	fun1()
	{
		var list1=new List.filled(5,0);
		list1[0]=1;
		list1[1]=2;
		list1[2]=3;
		list1[3]=4;
		
		print(list1);
	}


	fun2()
	{
		varlist1=new List.filled(2,0,growable:true)
		print(list1);

		list2[0]=1;
		list2[1]=2;
		
		print(list2);
		
		list2.add(3);
		
		print(list2);
	}