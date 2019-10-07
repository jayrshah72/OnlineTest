

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/takeExam")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String applicationContextPath = request.getContextPath();
		request.getSession().setAttribute("currentExam", null);

		String exam = request.getParameter("test");
		request.getSession().setAttribute("exam", exam);
		
		if (request.getSession().getAttribute("user") == null) {
			request.getRequestDispatcher("/login.jsp").forward(request,
					response);
			
		} else {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/testDetails.jsp");
			dispatcher.forward(request, response);
		}		
		
	}

}
