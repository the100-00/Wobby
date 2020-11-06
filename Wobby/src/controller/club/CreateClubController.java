package controller.club;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.user.UserSessionUtils;
import model.Club;
import model.service.ClubManager;
import model.service.CommunityManager;

public class CreateClubController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Date startDate = new Date();
        HttpSession session = request.getSession();
        String userId = UserSessionUtils.getLoginUserId;
        
        //�޾ƿ� ������ ���� club ��ü ����
    	Club club = new Club(
    	        request.getParameter("name"), 
    	        request.getParameter("category"),
    	        userId //==chairId
    	        request.getParameter("maxNumOfMembers"),
    	        startDate);		
        
		try {
		    //ClubManager�� create ó�� ����
			ClubManager clubManager = ClubManager.getInstance();
			CommunityManager commManager = CommunityManager.getInstance();
			String clubId = clubManager.createClub(club, userId); //clubId��ȯ�ϵ���
			commManager.createBoard(clubId); //���� ����� ���ÿ� ����
//			//or
//			commManager.createBoard();
//			commManager.connectClub(clubId);
			
			/*//UserManager�� clubAdmin ó�� ���� > ȸ�ǰ�� ���?
            UserManager userManager = UserManager.getInstance();
            userManager.updateChair(clubId, );*/
	        return "redirect:/community/club/clubHome";	// ���� �� Ŀ�´�Ƽ ����Ʈ ȭ������ redirect
	        
		} catch (Exception e) {		// ���� �߻� �� �Է� form���� forwarding
            request.setAttribute("creationFailed", true);
			request.setAttribute("exception", e);
			return "/community/club/create.jsp";
		}
    }
}
