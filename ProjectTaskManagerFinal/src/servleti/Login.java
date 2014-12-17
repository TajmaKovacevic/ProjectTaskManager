package servleti;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher; 
import javax.servlet.ServletContext; 
import javax.servlet.http.HttpSession; 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import db.access.*;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		obrada(request,response);
	}
	protected void obrada(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException { 
			 // Proèitaj parametre iz zahtjeva.
			 String korisnik = request.getParameter("username");
			 String lozinka = request.getParameter("password");
			
			 DBManager db=new DBManager();
			 
			 if (db.getUser(korisnik, lozinka)) { 
				 HttpSession session = request.getSession();
				 session.setAttribute("uid", korisnik); 
				 
				 if(db.hasUserPermission(korisnik,1))
					 response.sendRedirect("Administration.jsp");
				 
				 else if(db.hasUserPermission(korisnik,2)){
					 
					 response.sendRedirect("Manager.jsp");
					 }
				else if(db.hasUserPermission(korisnik,3))
				{
					response.sendRedirect("Developer.jsp");
				 }
				 else { 
					 response.sendRedirect("index.jsp");
				 } 
			 }
			 else { 
				 response.sendRedirect("index.jsp");
			 } 
			 } 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}