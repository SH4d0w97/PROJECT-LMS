void main()
{
	int a=5;
	int b=10;
	int c=15;
	int d=20;

	if((a>b) & (a>c) & (a>d))
	{
		print("A is largest");
	}
	else if((b>c) & (b>d))
	{
		print("B is largest");
	}
	else if(c>d)
	{
		print("C is largest");
	} 
	else
	{
		print("D is largest");
	}
}
