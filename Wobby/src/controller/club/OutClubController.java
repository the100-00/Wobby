package controller.club;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.user.UserSessionUtils;
import model.service.ClubManager;
import model.service.UserManager;
import model.Club;
import model.User;

public class OutClubController implements Controller {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ClubManager clubManager = ClubManager.getInstance();        
        UserManager userManager = UserManager.getInstance();    
        HttpSession session = request.getSession(); 
        
        String clubId = request.getParameter("clubId");
        String chairId = clubManager.findChairId(clubId);
        String userId = UserSessionUtils.getLoginUserId;
    
        if (!(UserSessionUtils.isLoginUser(chairId, session))){ //�α����� ����ڰ� Ŀ�´�Ƽ ��ڰ� �ƴѰ��
            userManager.outClub(userId, clubId); // ���� �������� Ŭ�� ���� ����
            clubManager.removeMember(userId, clubId); //Ŭ�� �������� ���� ���� ����
            return "redirect:/community/club/list";     //Ŭ�� ����Ʈ�� �̵�
        }
        
        /* ������ �Ұ����� ��� */
        request.setAttribute("clubId", clubId);                     
        request.setAttribute("deleteFailed", true); 
        request.setAttribute("exception", new IllegalStateException("����� ��� Ŭ���� Ż���� �� �����ϴ�."));            
        return "/community/club/clubHome.jsp?clubId=" + clubId;
    }
}
