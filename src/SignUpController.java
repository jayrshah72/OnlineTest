

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/checkSignup")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Connection con=null;
		ResultSet set=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost/quiz","root","");
			Statement st=con.createStatement();
			String sqlst="select * from users where username='"+username+"'";
			set=st.executeQuery(sqlst);
			if(set.next()||username==null)
			{
				request.getRequestDispatcher("/signup.jsp?signuppro=yes").forward(request, response);
			}
			else
			{
				sqlst="insert into users values('"+username+"','"+password+"','"+email+"')";
				st.executeUpdate(sqlst);
				HttpSession session=request.getSession();
				session.setAttribute("username",username);
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		try
		{
			con.close();
		}catch(Exception e)
		{
			
		}
	}

}
