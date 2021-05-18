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
			int d;
	
				for(b=0;b<=a;b++)
				{
					for(d=b;d<=a;d++)
					{
						stdout.write("  ");
					}
					for(c=1;c<=b;c++)
					{
						stdout.write(b.toString()+ " ");
					}
						print("");
				}
}