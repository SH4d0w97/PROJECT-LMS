import 'dart:io';
void main()
{
	
    int i,j,k,n=5;
    for(i=n;i>=1;i--)
    {
        for(j=i;j>=1;j--)
        {
            stdout.write(" ");
        }
        for(k=i;k<=n;k++)
        {
            stdout.write("1");
        }
        for(k=i;k<=n-1;k++)
        {
            stdout.write("1");
        }
        for(j=i;j>=1;j--)
        {
            stdout.write(" "*2);
        }
        for(k=i;k<=n;k++)
        {
            stdout.write("1");
        }
        for(k=i;k<=n-1;k++)
        {
            stdout.write("1");
        }
        
        print("");
        
    }
      for(i=1;i<=n;i++)
    {
       for(j=1;j<=i+1;j++)
       {
        stdout.write(" ");
       }
        for(k=n-1;k>=i;k--)
        {
            stdout.write("1");
        }
       
        for(k=n-2;k>=i;k--)
        {
             
            stdout.write("1");
          
        }
        for(j=1;j<=i+1;j++)
       {
        stdout.write(" "*2);
       }
        for(k=n-1;k>=i;k--)
        {
            stdout.write("1");
        }
       
        for(k=n-2;k>=i;k--)
        {
             
            stdout.write("1");
          
        }
        
        
        print("");
    }
    
  
    
}
