void main()
{
	int a;
        int i;
	

	for(i=1;i<100;i++)
	{
		int b=0;
		for(a=1;a<i;++a)
		{
		if(i%a == 0)
		{
			b=b+1;
		}
		}
		if(b!=2)
		{
			print(i);
		}
	}
}