import 'dart:io';


void main()

{
	//loop();
	loop2();
}

loop()
{
	int n;
	int i=1;

		stdout.write("Enter the limit:");
		n=int.parse(stdin.readLineSync().toString());
		
		while(i<=n)
		{
			print(i);
			i++;
		}

}



loop2()
{
	int n;

		
		stdout.write("Enter the limit:");
		n=int.parse(stdin.readLineSync().toString());
		
		while(n>=1)
		{
			print(n);
			n--;
		}
		
}
