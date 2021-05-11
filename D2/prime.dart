void main()
{
	int i;
	int j=8;
        int flag=0;

	for(i=1;i<=j;++i)
	{
		if(j%i == 0)
		{
			flag=flag+1;
		}
	}
	if (flag!=2)
	{
		print("NOT PRIME");
	}
	else
	{
		print("PRIME");
	}
}
