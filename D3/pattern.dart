import 'dart:io';


void main()

{
	String i=" ";

		stdout.write("Enter a number:");

		i=stdin.readLineSync().toString();
		int a=int.parse(i);

			int b;
			for(b=0;b<=a;b++)
			{
				stdout.write("*");
			}
		
	
}