import 'dart:io';

void main()
{

	int i,a,b,n;
	
	stdout.write("Enter a value :");

	n=int.parse(stdin.readLineSync().toString());

		for(i=n;i>=1;i--)
		{
			for(a=i;a>1;a--)
			{
				stdout.write(" ");                  //SPACE FOR TL1
			}

				for(b=i;b<=n;b++)                   
				{
					stdout.write("1");                //TOPLEFT1
				}

					for(b=i;b<=n-1;b++)
					{
						stdout.write("1");              //TOPRIGHT1
					}	
						
						for(a=i-1;a>=1;a--)
						{
							stdout.write(" "*2);          //SPACE FOR TL2
						}

              for(b=i;b<=n;b++)
              {
                stdout.write("1");          //TOPLEFT2
              }

                for(b=i;b<=n-1;b++)         //TOPRIGHT2
                {
                  stdout.write("1");
                }

                  
		print("");

		}



    for(i=1;i<n;i++)
    {

      for(a=1;a<=i;a++)
      {
        stdout.write(" ");              //SPACE FOR BL1
      }

        for(b=n-1;b>=i;b--)             //BOTTOMLEFT1
        {
          stdout.write("1");
        }

          for(b=n-2;b>=i;b--)            //BOTTOMRIGHT1
          {
            stdout.write("1");
          }

            for(b=2;b<=i+1;b++)          //SPACE FOR BL2
            {
              stdout.write(" "*2);
            }

              for(b=n-1;b>=i;b--)        //BOTTOMLEFT2
              {
                stdout.write("1");
              }

                for(b=n-2;b>=i;b--)      //BOTTOMRIGHT1
                {
                  stdout.write("1");
                }

        
        print("");
    }


		for(i=n-1;i>=1;i--)                      //n-1 skip 1st row
		{
			for(a=i;a>1;a--)
			{
				stdout.write(" ");                  //SPACE FOR TL1
			}

				for(b=i;b<=n;b++)                   
				{
					stdout.write("1");                //TOPLEFT1
				}

					for(b=i;b<=n-1;b++)
					{
						stdout.write("1");              //TOPRIGHT1
					}	
						
						for(a=i-1;a>=1;a--)
						{
							stdout.write(" "*2);          //SPACE FOR TL2
						}

              for(b=i;b<=n;b++)
              {
                stdout.write("1");          //TOPLEFT2
              }

                for(b=i;b<=n-1;b++)         //TOPRIGHT2
                {
                  stdout.write("1");
                }

                  
		print("");

		}



    for(i=1;i<n;i++)
    {

      for(a=1;a<=i;a++)
      {
        stdout.write(" ");              //SPACE FOR BL1
      }

        for(b=n-1;b>=i;b--)             //BOTTOMLEFT1
        {
          stdout.write("1");
        }

          for(b=n-2;b>=i;b--)            //BOTTOMRIGHT1
          {
            stdout.write(b.toString());
          }

            for(b=2;b<=i+1;b++)          //SPACE FOR BL2
            {
              stdout.write(" "*2);
            }

              for(b=n-1;b>=i;b--)        //BOTTOMLEFT2
              {
                stdout.write("1");
              }

                for(b=n-2;b>=i;b--)      //BOTTOMRIGHT1
                {
                  stdout.write("1");
                }

        
        print("");
    }
}

