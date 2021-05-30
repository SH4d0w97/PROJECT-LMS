import 'dart:io';

void main()

{
	String i=" ";
	int a;

		stdout.write("Enter a number:");
		i=stdin.readLineSync().toString();
		a=int.parse(i);
			
			int b;
			int c;
			int d;
			int e;
			
				for(b=a;b>=1;b--)
				{
					for(d=b+1;d>1;d--)
					{
						stdout.write("  ");
					}
					for(c=a;c>=b;c--)
					{
						stdout.write("1"+ " ");
					}
					for(e=b;e<=a-1;e++)
					{
						stdout.write("1"+" ");
					}
						print("");
				}
}