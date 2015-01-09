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
 * Servlet implementation class AddProject
 */
@WebServlet("/AddProject")
public class AddProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 DBManager db=new DBManager();
		 HttpSession session = request.getSession();
		 String name = request.getParameter("project");
		 int estimate=Integer.parseInt(request.getParameter("estimate"));
		 String description= request.getParameter("desc");
		String team=request.getParameter("team");
		String man=request.getParameter("manager");
		 
		 int team_id=db.getTeamIDbyName(team);
		 int man_id=db.getUserIdByUsername(man);
		 
		 if(db.insertProject(name, estimate, description, man_id, team_id))
		 {
			 
			 session.setAttribute("getAlert", "Yes");
			 response.sendRedirect("AddProject.jsp");
			
		 }
		 else{
			 session.setAttribute("getAlert", "null");
			 response.sendRedirect("AddProject.jsp");
		 }
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
