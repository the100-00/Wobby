package controller.club;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Controller;
import controller.user.UserSessionUtils;
import model.Club;
import model.service.UserManager;

public class ListTopClubController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
        ClubManager clubManager = ClubManager.getInstance();
        List <Club> clubList = null;
        
        String category = request.getParameter("category");
        clubList = clubManager.findClubListbyCategory(category);
        
		// commList ��ü�� request�� �����Ͽ� Ŀ�´�Ƽ ����Ʈ ȭ������ �̵�(forwarding)
		request.setAttribute("clubList", clubList);				
		return "/community/club.jsp";        
    }
}
