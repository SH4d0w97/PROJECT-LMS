import 'import:io';

void main(mainlist)
{
	int n,m,i=0;
	var mainlist = new List.filled(0,[],growable:true);
	
	print("Enter the number of rows :");
	n = int.parse(stdin.readLineSync().toString());
	
	print("Enter the number of column :");
	m = int.parse(stdin.readLineSync).toString());
	
	var sublist = new List.filled(0,0,growable:true);
	
	for(i=0;i<n;i++)
	{
		print("Enter the value :");
		int a = int.parse(stdin.readLine().toString());
		sublist.add(a);

	mainlist.add(sublist);
	}

	return(mainlist);
	print(mainlist);	
	
	
}
