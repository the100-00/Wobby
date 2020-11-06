package controller.club;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.service.ClubManager;
import model.Club;

public class ViewClubbyAdminController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {			
    	
    	Club club = null;
		ClubManager clubManager = ClubManager.getInstance();
		
		String clubId = request.getParameter("clubId");
		club = clubManager.findClub(clubId);	
		request.setAttribute("club", club);			
		return "/admin/club/clubHome.jsp?clubId=" + clubId;
    }
}
