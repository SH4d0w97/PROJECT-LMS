import 'dart:io';


void main()
{

	loop();

}

	loop()
	{
		int i=0;
		while(i != 5)
		{
			i=menu();

			if( i==1 )
			{
				addlist();
			}

				else if( i==2 )
				{
					editlist();
				}

					else if( i==3 )
					{
						fetchlist();
					}

						else if( i==4 )
						{
								
							print(" ");
						}
							
							else
							{
								print("!! ENTER A VALID OPTION!!");
							}
		}
	}


	menu();

	{
    		print("1" + " " + "ADD LIST");
      		print("2" + " " + "EDIT LIST");
      		print("3" + " " + "SEARCH LIST");
      		print("4" + " " + "EXIT");

      		stdout.write("Enter your choice:");
      		int i = int.parse(stdin.readLineSync().toString());
      		return i;
   	}
