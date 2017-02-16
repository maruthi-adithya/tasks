package object_class;

/* Name of the class has to be "Main" only if the class is public. */
class object_class implements Cloneable
{
   int a;
   object_class(int a)
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
	
			object_class i1=new object_class(1);
		String s=new String("hello");
		Integer i=new Integer("5");
		object_class i2=(object_class)i1.clone(); //cloning
		System.out.println(i1.a+" "+i2.a);
		System.out.println(""+i1.equals(i2)); //equals
		System.out.println(""+i1.getClass()); //getClass()
		System.out.println(""+s.getClass());  //getClass()
		System.out.println("The hashcode is "+ s.hashCode() ); //hashcode()
		System.out.println(""+i.toString()); //toString();
		i1.finalize(); //finalize
		System.out.println("Finlalize stmt was executed");
		}
		catch(CloneNotSupportedException c){
			System.out.println(c);
		}  
		 catch (Throwable ex) {
   ex.printStackTrace();
		 }

		

		
	}
}