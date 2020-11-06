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
    		// GET request: Ŭ�� ���� form ��û	
    		ClubManager clubManager = ClubManager.getInstance();
			Club club = clubManager.findClub(clubId);	// �����Ϸ��� Ŭ�� ���� �˻�
			request.setAttribute("club", club);			
			
			return "/community/club/updateForm.jsp";   // �˻��� ������ update form���� ����     
	    }	
    	
    	// POST request (Ŭ�� ������ parameter�� ���۵�)
        Club club = new Club(
                request.getParameter("name"), 
                request.getParameter("category"),
                request.getParameter("maxNumOfMembers"));     

		ClubManager clubManager = ClubManager.getInstance();
		clubManager.updateClub(club);			
        return "redirect:/community/club/list";			
    }
}
