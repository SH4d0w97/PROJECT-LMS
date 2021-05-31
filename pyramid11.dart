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
						stdout.write("1"+ " ");
					}
						print("");
				}

			

				for(b=a;b>=0;b--)
				{
				 	for(d=b+1;d<=a;d++)
					{
					stdout.write("  ");
					}
					for(c=1;c<=b+1;c++)
					{
						stdout.write("1"+ " ");
					}
					print("");
				}
}