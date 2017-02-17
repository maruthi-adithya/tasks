import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class Product {

	String prod_name;
	String prod_colour;
	String cart_prod;
	String wish_prod;
	int prod_price;
	char option;
	
	static int nop=0;
	static int noc=0;
	public Product() {
		
	}
	public Product(String name, String colour, int price) {
		
		this.prod_name=name;
		this.prod_colour=colour;
		this.prod_price=price;
	}
	public void setProd_colour(String prod_colour) {
		this.prod_colour = prod_colour;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public String getProd_colour() {
		return prod_colour;
	}
	public String getProd_name() {
		return prod_name;
	}
	public int getProd_price() {
		return prod_price;
	}
	public static int getNop() {
		return nop;
	}
	public static void setNop(int nop) {
		Product.nop = nop;
	}
	public void display() {
		System.out.println("Product Name: "+this.getProd_name()+ " Product Colour: "+this.getProd_colour()+" Product Price: "+this.getProd_price());
		
	}
	
	public char getOption() {
		return option;
	}
	public void setOption(char option) {
		this.option = option;
	}
	public static int getNoc() {
		return noc;
	}
	public static void setNoc(int noc) {
		Product.noc = noc;
	}
    public void setCart_prod(String cart_prod) {
		this.cart_prod = cart_prod;
	} 
    public String getCart_prod() {
		return cart_prod;
	}
    public String getWish_prod() {
		return wish_prod;
	}
    public void setWish_prod(String wish_prod) {
		this.wish_prod = wish_prod;
	}
	ArrayList<Product> productlist=new ArrayList<Product>();
	ArrayList<Product> cart=new ArrayList<Product>();
	ArrayList<Product> wishlist=new ArrayList<Product>();
	public Product add_products()
	{
		Product p = new Product();
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter product name");
		p.setProd_name(sc.next());
		System.out.println("Enter product colour");
		p.setProd_colour(sc.next());
		System.out.println("Enter product price");
		p.setProd_price(sc.nextInt());
		productlist.add(p);
		p.nop++;
		return p;
	}
	public Product list_products()
	{
		Product p = new Product();
		Iterator<Product> itr=productlist.iterator(); 
		 while(itr.hasNext()){  
			 Product us=(Product)itr.next();
			 us.display();
			 
		 }
		 System.out.println("Total products found: "+p.getNop());
		return p;
	}
	public Product add_to_cart()
	{
		
		Product p = new Product();
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter product name");
		p.setCart_prod(sc.next());
		Iterator<Product> itr=productlist.iterator();
		 while(itr.hasNext()){  
			 Product us=(Product)itr.next();
			 if(us.getProd_name().equals(p.getCart_prod()))
			 {
				 cart.add(us);
				 p.noc++;
			 }
		 }
		
		return p;
	}
	public Product add_to_wishlist()
	{
		
		Product p = new Product();
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter product name");
		p.setWish_prod(sc.next());
		Iterator<Product> itr=productlist.iterator();
		 while(itr.hasNext()){  
			 Product us=(Product)itr.next();
			 if(us.getProd_name().equals(p.getWish_prod()))
			 {
				// System.out.println("hello");
				 wishlist.add(us);
			 }
		 }
		
		return p;
	}
	public Product view_wishlist()
	{
		
		Product p = new Product();
		
		
		Iterator<Product> itr=wishlist.iterator();
		 while(itr.hasNext()){  
			 Product us=(Product)itr.next();
			 us.display();
		 }
		
		return p;
	}
	public Product checkout()
	{
		
		Product p = new Product();
		Scanner sc=new Scanner(System.in);
		
		Iterator<Product> itr=cart.iterator();
		 while(itr.hasNext()){  
			 Product us=(Product)itr.next();
			 us.display();
		 }
		 System.out.println("Total products in cart: "+p.getNoc());
		 System.out.println("Sure to check out(y/n)");
		 p.setOption(sc.next().charAt(0));
		 if(p.getOption()=='y')
		 {
			 System.out.println("Success");
		 }
		 else
		 {
			 System.out.println("Failed");
		 }
		
		return p;
	}
	
	
}
