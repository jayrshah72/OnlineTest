

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/checkLogin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Connection con=null;
		int i=0;
		ResultSet set=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost/quiz","root","");
			Statement st=con.createStatement();
			String sql = "Select * from  users where username='"+username+"' and password='"+password+"' ";	
	 		set=st.executeQuery(sql);
			
	 		
	 		 while(set.next())
			 {
				 i=1;
			 }
			 if(i!=0)
			 {   HttpSession session=request.getSession();
			     session.setAttribute("user",username);
			     
				 RequestDispatcher rd=request.getRequestDispatcher("/home.jsp");
				 rd.forward(request, response);
				 
			 }
			 else
			 {   request.setAttribute("errorMessage","Invalid username or password");
				 RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
				 rd.forward(request, response);
			 }
	}
		catch(Exception sqe){System.out.println(sqe);}
	try
	{
	 //con.close();	
	}catch(Exception e){System.out.println("Error : While Closing Connection");}
		}
			
	}


