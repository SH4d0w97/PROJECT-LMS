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
					for(d=1;d<=a;d++)
					{
						stdout.write("  ");
					}
					for(c=1;c<=b;c++)
					{
						stdout.write(c.toString()+ " ");
					}
						print("");
				}

			

				for(b=a;b>=0;b--)
				{
				 	for(d=b+1;d<=a+1;d++)
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