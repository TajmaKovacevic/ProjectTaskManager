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
 * Servlet implementation class AddTeam
 */
@WebServlet("/AddTeam")
public class AddTeam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTeam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 DBManager db=new DBManager();
		 HttpSession session = request.getSession();
		 String team_name = request.getParameter("teamname");
		 String teamleader = request.getParameter("teamleader");
		 teamleader=teamleader.substring(2);
		 String[] niz1=teamleader.split(",");
		 teamleader=niz1[0]; 
		 int teamleader_id=db.getUserIdByUsername(teamleader);
		 int number=Integer.parseInt(request.getParameter("membernumber"));
		 //System.out.println("broj clanova"+number);
		 int team_id=db.insertTeam(team_name, teamleader_id);
		 
		 //System.out.println(team_id+"insertani team");
		 if(number==1){
			 
		 String m1=request.getParameter("m1");
		 m1=m1.substring(2);
		 String[] niz=m1.split(",");
		 m1=niz[0];
		 //System.out.println(m1);
		 int member1=db.getUserIdByUsername(m1);
		 //System.out.println(member1);
		 db.insertTeamMember(team_id, member1);
		 session.setAttribute("getAlert", "Yes");
		 }
		 if(number==2){
			 String m1=request.getParameter("m1");
			 m1=m1.substring(2);
			 String[] niz=m1.split(",");
			 m1=niz[0];
			 int member1=db.getUserIdByUsername(m1);
			 db.insertTeamMember(team_id, member1);
			 
			 String m2=request.getParameter("m1");
			 m2=m2.substring(2);
			 String[] niz2=m2.split(",");
			 m2=niz2[0];
			 int member2=db.getUserIdByUsername(m2);
			 db.insertTeamMember(team_id, member2);
			 session.setAttribute("getAlert", "Yes");
			 
		 }
		 if (number==3){
			 String m1=request.getParameter("m1");
			 m1=m1.substring(2);
			 String[] niz=m1.split(",");
			 m1=niz[0];
			 int member1=db.getUserIdByUsername(m1);
			 db.insertTeamMember(team_id, member1);
			 
			 String m2=request.getParameter("m2");
			 m2=m2.substring(2);
			 String[] niz2=m2.split(",");
			 m2=niz2[0];
			 int member2=db.getUserIdByUsername(m2);
			 db.insertTeamMember(team_id, member2);
			 
			 String m3=request.getParameter("m3");
			 m3=m3.substring(2);
			 String[] niz3=m3.split(",");
			 m3=niz3[0];
			 int member3=db.getUserIdByUsername(m3);
			 db.insertTeamMember(team_id, member3);
			 session.setAttribute("getAlert", "Yes");
		 }
		 if(number==4){
			 String m1=request.getParameter("m1");
			 m1=m1.substring(2);
			 String[] niz=m1.split(",");
			 m1=niz[0];
			 int member1=db.getUserIdByUsername(m1);
			 db.insertTeamMember(team_id, member1);
			 
			 String m2=request.getParameter("m2");
			 m2=m2.substring(2);
			 String[] niz2=m2.split(",");
			 m2=niz2[0];
			 int member2=db.getUserIdByUsername(m2);
			 db.insertTeamMember(team_id, member2);
			 
			 String m3=request.getParameter("m3");
			 m3=m3.substring(2);
			 String[] niz3=m3.split(",");
			 m3=niz3[0];
			 int member3=db.getUserIdByUsername(m3);
			 db.insertTeamMember(team_id, member3);
			 
			 String m4=request.getParameter("m4");
			 m4=m4.substring(2);
			 String[] niz4=m4.split(",");
			 m4=niz4[0];
			 int member4=db.getUserIdByUsername(m4);
			 db.insertTeamMember(team_id, member4);
			 session.setAttribute("getAlert", "Yes");
		 }
		 if(number==5){
			 String m1=request.getParameter("m1");
			 m1=m1.substring(2);
			 String[] niz=m1.split(",");
			 m1=niz[0];
			 int member1=db.getUserIdByUsername(m1);
			 db.insertTeamMember(team_id, member1);
			 
			 String m2=request.getParameter("m2");
			 m2=m2.substring(2);
			 String[] niz2=m2.split(",");
			 m2=niz2[0];
			 int member2=db.getUserIdByUsername(m2);
			 db.insertTeamMember(team_id, member2);
			 
			 String m3=request.getParameter("m3");
			 m3=m3.substring(2);
			 String[] niz3=m3.split(",");
			 m3=niz3[0];
			 int member3=db.getUserIdByUsername(m3);
			 db.insertTeamMember(team_id, member3);
			 
			 String m4=request.getParameter("m4");
			 m4=m4.substring(2);
			 String[] niz4=m4.split(",");
			 m4=niz4[0];
			 int member4=db.getUserIdByUsername(m4);
			 db.insertTeamMember(team_id, member4);
			 
			 String m5=request.getParameter("m5");
			 m4=m5.substring(2);
			 String[] niz5=m5.split(",");
			 m5=niz5[0];
			 int member5=db.getUserIdByUsername(m5);
			 db.insertTeamMember(team_id, member5);
			 session.setAttribute("getAlert", "Yes");
		 }
		 else{
			 session.setAttribute("getAlert", "Error");
		 }
		 
		 response.sendRedirect("Teams.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
