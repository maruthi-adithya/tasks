import java.io.*;
import java.util.Scanner;
public class eCommerce {

	String name;
	int rank;
	
	eCommerce(String i,int n)
	{
		name=i;
		rank=n;
		
	}
	void display()
	{
		System.out.println("Welcome to eCommerce "+name+" with rank "+rank);
	}
	public static void main(String args[])
	{
		int choice=0;
		 User user=new User();
		 Product product=new Product();
		Scanner sc=new Scanner(System.in);
		eCommerce e=new eCommerce("sample",1);
		e.display();
		while(choice!=100)
		{
		System.out.println("Choose an option: 1.Create User 2.List Users 3.Add products to Sell 4.List products ");
		System.out.println("5.Add product to cart 6.Add product to Wishlist 7.View Wishlist 8.Checkout 9.Exit");
		choice=sc.nextInt();
		
		switch(choice)
		{
		case 1:
			 user.add_user();
			break;
		case 2:
			user.list_users();
			break;
		case 3:
			product.add_products();
			break;
		case 4:
			product.list_products();
			break;
		case 5:
			product.add_to_cart();
			break;
		case 6:
			product.add_to_wishlist();
			break;
		case 7:
			product.view_wishlist();
			break;
		case 8:
			product.checkout();
			break;
		case 9:
		System.exit(0);
		break;
			
		}
		}
	}
	
}

