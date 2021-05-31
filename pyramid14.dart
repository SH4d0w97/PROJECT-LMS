import 'dart:io';

void main()

{

	String i=" ";
	int n;

		
		stdout.write("Enter a number :");

		i=stdin.readLineSync().toString();

		n=int.parse(i);
		
			int l1;
			int l2;
			int l3;

			for(l1=n;l1>=0;l1--)
			{
				for(l2=l1+1;l2<=n+1;l2++)
				{
					stdout.write(" ");
				}
				for(l3=1;l3<=l1;l3++)
				{
					stdout.write(l2.toString()+ " ");
				}
					print(" ");
			}
}
