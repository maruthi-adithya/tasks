
import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class Ideone implements Cloneable
{
   int a;
   Ideone(int a)
   {
   	   this.a=a;
   }
   public Object clone()throws CloneNotSupportedException{  
return super.clone();  
}   
  
     
 

	public static void main (String[] args) 
	{
		try{  
		// your code goes here
		Ideone i1=new Ideone(1);
		Ideone i2=(Ideone)i1.clone();
		System.out.println(i1.a+" "+i2.a);
		}
		catch(CloneNotSupportedException c){}  

		

		
	}
}
