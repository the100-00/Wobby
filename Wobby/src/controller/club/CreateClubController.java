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
        
        //받아온 정보를 토대로 club 객체 생성
    	Club club = new Club(
    	        request.getParameter("name"), 
    	        request.getParameter("category"),
    	        userId //==chairId
    	        request.getParameter("maxNumOfMembers"),
    	        startDate);		
        
		try {
		    //ClubManager에 create 처리 위임
			ClubManager clubManager = ClubManager.getInstance();
			CommunityManager commManager = CommunityManager.getInstance();
			String clubId = clubManager.createClub(club, userId); //clubId반환하도록
			commManager.createBoard(clubId); //보드 만듦과 동시에 연결
//			//or
//			commManager.createBoard();
//			commManager.connectClub(clubId);
			
			/*//UserManager에 clubAdmin 처리 위임 > 회의결과 취소?
            UserManager userManager = UserManager.getInstance();
            userManager.updateChair(clubId, );*/
	        return "redirect:/community/club/clubHome";	// 성공 시 커뮤니티 리스트 화면으로 redirect
	        
		} catch (Exception e) {		// 예외 발생 시 입력 form으로 forwarding
            request.setAttribute("creationFailed", true);
			request.setAttribute("exception", e);
			return "/community/club/create.jsp";
		}
    }
}
