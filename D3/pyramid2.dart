import 'dart:io';

void main()

{
	String i=" ";
	int a;

		
		stdout.write("Enter a number :");

		i=stdin.readLineSync().toString();

		 a=int.parse(i);
		
			int b;
			int c;
	
				for(b=0;b<=a;b++)
				{
					for(c=0;c<=b;c++)
					{
						stdout.write(b);
					}
						print("");
				}
}