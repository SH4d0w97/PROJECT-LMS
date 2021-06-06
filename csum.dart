import 'dart:io';

class sum
{

	int a=0;
	
	void read()
	{
		stdout.write("Enter a number :");
		a = int.parse(stdin.readLineSync().toSTring());
	}
	void write()
	{
		print(a);
	}
}

void main ()
{
	sum a1 = new sum();
	sum a2 = new sum();
	sum a3 = new sum();
	a1.read();
	a2.read();
		
	a1.write();
	a2.write();

	a3.a = a1.a+a2.a;
	
	a3.write()
}