package list_set_diff;

import java.util.*;



public class list_set_diff {
	public static void main(String args[])
	{
		List a=new LinkedList();
		a.add("abc");  //List uses a ordered representation
		a.add("abd");
		a.add("aaa");
		a.add("aaa");
		System.out.print(""+a); //Supports duplicate values
		
	Set b=new HashSet();
	b.add("abc");   // Set uses a sorted representation
	b.add("aaa");
	b.add("aaa");
	System.out.print(""+b); //Does not support duplicate values
		
	}
}
