package inter_face;

public class inter_face implements hello {

	public void func1()
	{
		System.out.println("class func");
	}
	public static void main(String a[])
	{
		
		inter_face k=new inter_face();
		k.func1();
		
	}
}
