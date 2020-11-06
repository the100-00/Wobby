package controller.club;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Controller;
import model.service.ClubManager;
import model.Club;

public class UpdateClubController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
 
		String clubId = request.getParameter("clubId");
		
		if (request.getMethod().equals("GET")) {	
    		// GET request: 클럽 수정 form 요청	
    		ClubManager clubManager = ClubManager.getInstance();
			Club club = clubManager.findClub(clubId);	// 수정하려는 클럽 정보 검색
			request.setAttribute("club", club);			
			
			return "/community/club/updateForm.jsp";   // 검색한 정보를 update form으로 전송     
	    }	
    	
    	// POST request (클럽 정보가 parameter로 전송됨)
        Club club = new Club(
                request.getParameter("name"), 
                request.getParameter("category"),
                request.getParameter("maxNumOfMembers"));     

		ClubManager clubManager = ClubManager.getInstance();
		clubManager.updateClub(club);			
        return "redirect:/community/club/list";			
    }
}
