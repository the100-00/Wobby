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
        
        if (clubList.equals(null)) { //null�ϰ��, �� �˻� / ��Ī�� �ƴҰ��
            ClubManager clubManager = ClubManager.getInstance();
            String userId = UserSessionUtils.getLoginUserId;
            
            clubList = clubManager.findClubList(userId);
        }
        
		// commList ��ü�� request�� �����Ͽ� Ŀ�´�Ƽ ����Ʈ ȭ������ �̵�(forwarding)
		request.setAttribute("clubList", clubList);				
		return "/community/club/list.jsp";        
    }
}
