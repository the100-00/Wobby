package controller.club;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Controller;
import controller.user.UserSessionUtils;
import model.Club;
import model.service.UserManager;

public class ListClubController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
        List<Club> clubList = request.getAttribute("clubList");
        
        if (clubList.equals(null)) { //null일경우, 즉 검색 / 매칭이 아닐경우
            ClubManager clubManager = ClubManager.getInstance();
            String userId = UserSessionUtils.getLoginUserId;
            
            clubList = clubManager.findClubList(userId);
        }
        
		// commList 객체를 request에 저장하여 커뮤니티 리스트 화면으로 이동(forwarding)
		request.setAttribute("clubList", clubList);				
		return "/community/club/list.jsp";        
    }
}
