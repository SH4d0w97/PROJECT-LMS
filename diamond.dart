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
		
				for(b=1;b<=a;b++)
				{
					for(d=b;d<=a;d++)
					{
						stdout.write("  ");
					}
					for(c=1;c<=b;c++)  //TOPLEFT
					{
						stdout.write("1"+ " ");
					}
					for(e=b-1;e>=1;e--) //TOPRIGHT
					{
						stdout.write("1"+" ");
					}
						
						print("");
				}

				for(b=a;b>=0;b--)
				{
				 	for(d=b+1;d<=a;d++)
					{
					stdout.write("  ");
					}
					for(c=1;c<=b+1;c++)  //BOTTOMLEFT
					{
						stdout.write("1"+ " ");
					}
					for(e=1;e<=b;e++)   //BOTTOMRIGHT
					{
						stdout.write("1"+ " ");
					}
					
					print("");
				}
}