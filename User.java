import java.io.*;
import java.util.*;
public class User {

	String user_name;
	String user_mail;
	int user_phone;
	static int nou=0;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String userName, String email, int phone) {
		this.user_name = userName;
		this.user_mail = email;
		this.user_phone = phone;
	}
	
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	
	public String getUser_mail() {
		return user_mail;
	}
	
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public void setNou(int nou) {
		this.nou = nou;
	}
	public String getUser_name() {
		return user_name;
	}
	
	public void setUser_phone(int user_phone) {
		this.user_phone = user_phone;
	}
	
	public int getUser_phone() {
		return user_phone;
	}
	public int getNou() {
		return nou;
	}
	
	public void display() {
		System.out.println("User-name : " + this.getUser_name() +" User-email : " + this.getUser_mail()+" User-phone : " + this.getUser_phone());
		
	}
	
	ArrayList<User> userlist=new ArrayList<User>();

	public User add_user()
	{
		User u = new User();
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter your name");
		u.setUser_name(sc.next());
		System.out.println("Enter your email");
		u.setUser_mail(sc.next());
		System.out.println("Enter your phone");
		u.setUser_phone(sc.nextInt());
	//	u.display();
		userlist.add(u);
		u.nou++;
		return u;
	}
	public User list_users()
	{
		User u = new User();
		Iterator<User> itr=userlist.iterator(); 
		 while(itr.hasNext()){  
			 User us=(User)itr.next();
			 us.display();
			 
		 }
		 System.out.println("Total users found: "+u.getNou());
		return u;
	}
	
}
