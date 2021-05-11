void main()
{
	int a=1;
	int b=2;
	int c=31;
	int d=4;
	int e=5;

	if((a>b) & (a>c) & (a>d) & (a>e))
	{
		print("A is largest");
	}
	else if((b>c) & (b>d) & (b>e))
	{
		print("B is largest");
	}
	else if((c>d) & (c>e))
	{
		print("C is largest");
	}
	else if(d>e)
	{
		print("D is largest");
	}
	else
	{
		print("E is largest");
	}
}