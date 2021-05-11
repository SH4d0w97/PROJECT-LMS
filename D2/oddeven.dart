void main()
{
	int a;
        int i;
	

	for(i=1;i<=100;i++)
	{
		if(i%2 != 0)
		{
			int f=0;
 			f=f+i;
			print("odd"+ "  "+f.toString());
		}
		else if(i%2 == 0)
		{       
			int s=0;
 			s=s+i;
			print("even"+ " "+s.toString());
		}
	}
}	