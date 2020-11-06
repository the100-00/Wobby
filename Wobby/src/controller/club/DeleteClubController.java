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

public class DeleteClubController implements Controller {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ClubManager clubManager = ClubManager.getInstance();        
        HttpSession session = request.getSession(); 
        
        String clubId = request.getParameter("clubId");
        String chairId = clubManager.findChairId(clubId);
    
        if ((UserSessionUtils.isLoginUserCommAdmin(session)) //�α����� ����ڰ� Ŀ�´�Ƽ �������� ���
               ||                                               // �Ǵ� 
            (!UserSessionUtils.isLoginUserCommAdmin(session) &&  //�α����� ����ڰ� Ŀ�´�Ƽ �����ڰ� �ƴϰ� 
              UserSessionUtils.isLoginUser(chairId, session))) { // Ŀ�´�Ƽ�� ����� ���
                
            clubManager.remove(clubId);               // Ŭ�� ���� ����
            return "redirect:/community/club/list";     //Ŭ�� ����Ʈ�� �̵�
        }
        
        /* ������ �Ұ����� ��� */
        request.setAttribute("clubId", clubId);                     
        request.setAttribute("deleteFailed", true); 
        request.setAttribute("exception", new IllegalStateException("������ Ȥ�� ��ڰ� �ƴ� ��� Ŭ���� ������ �� �����ϴ�."));            
        return "/community/club/clubHome.jsp?clubId=" + clubId;
    }
}
