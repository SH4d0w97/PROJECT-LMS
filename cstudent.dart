import 'dart:io';

class student
{
	string name="", place="", address="";
	int age=0, phon=0, class=0, rollno=0;
	
		student()
		{	
			stdout.write("ENTER THE NAME :");
			name=stdin.readLineSync();

			stdout.write("ENTER THE PLACE :");
			place=stdin.readLineSync();
			
			stdout.write("ENTER THE ADDRESS :");
			address=stdin.readLineSync();
			
			
			stdout.write("ENTER THE AGE :");
			age=int.parse(stdin.readLineSync().toString());
			

			stdout.write("ENTER THE CLASS :");
			class=int.parse(stdin.readLineSync().toString());
			
			
			stdout.write("ENTER THE ROLLNO :");
			rollno=int.parse(stdin.readLineSync().toString());

			stdout.write("ENTER THE PHONE NUMBER :");
			phon=int.parse(stdin.readLineSync().toString());
		}

		void display()
		{
			print(name);
			print(place);
			print(address);
			print(age);
			print(class);
			print(rollno);
			print(phon);
		}
		
		void edit()
		{
			stdout.write("ENTER THE FIELD TO BE EDITED : ");
			int n = int.parse(stdin.readLineSync().toString());
			print(" 1. NAME");
			print("	2. PLACE");
			print(" 3. ADDRESS");
			print(" 4. AGE");
			print(" 5. CLASS");
			print(" 6. ROLLNO");
			print(" 7. PHONE NO");

				if(n==1)
				{
					stdout.write("ENTER THE NEW NAME : ");
					String Nname = stdin.readLineSync().toString();
					name = Nname;
					display();
				}
				else if(n==2)
				{
					stdout.write("ENTER THE PLACE : ");
					String Nplace = stdin.re3adLineSync().toString();
					place = Nplace;
					display();
				}
				else if(n==3)
				{
					stdout.write("ENTER THE ADDRESS : ");
					String Naddress = stdin.re3adLineSync().toString();
					place = Naddress;
					display();
				}
	

		}

}

void main()
{
	student stud=new student();
	stud.display();
}