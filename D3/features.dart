import 'dart:io';

void main()
{
	int a;
	int b;
	
	for(b=1;b<=100;b++)
	{
		int c=0;
		int d=0;

		for(a=1;a<b;a++)
		{
			if(b%a == 0)
			{
				c=c+1;
				d=d+a;
			}
		}


			if(c == 1)
			{
				stdout.write(b.toString()+ " " +"is PRIME");
			}
			else
			{
				stdout.write(b.toString()+ " " +"is NOT PRIME");
			}
	


				if(d == b)
				{
					stdout.write(", is PERFECT");
				}
				else 
				{
					stdout.write(", NOT PERFECT");
				}
				


					if(a%2 == 0)
					{
						stdout.write(", is EVEN");
					}
					else
					{
						stdout.write(", iS ODD");
					}
			print("");

		
	}
		
}