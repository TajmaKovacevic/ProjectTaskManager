package servleti;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.access.DBManager;

/**
 * Servlet implementation class EditPerson
 */
@WebServlet("/EditPerson")
public class EditPerson extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditPerson() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		 String password = request.getParameter("password");
		 String firstname=request.getParameter("firstname");
		 String lastname=request.getParameter("lastname");
		 String gender=request.getParameter("gender");
		 String email=request.getParameter("email");
		 DBManager db=new DBManager();
		 HttpSession session = request.getSession();
		 
		 if(db.updateUser(username, password, firstname, lastname, email, gender))
		 {
			 session.setAttribute("getAlert", "Yes");
			 response.sendRedirect("EditPerson.jsp");
			
		 }
		 else{
			 session.setAttribute("getAlert", "null");
			 response.sendRedirect("EditPerson.jsp");
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
