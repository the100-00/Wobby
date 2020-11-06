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

public class RegisterClub implements Controller {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ClubManager clubManager = ClubManager.getInstance();        
        UserManager userManager = UserManager.getInstance();    
        HttpSession session = request.getSession(); 
        
        String clubId = request.getParameter("clubId");
        String userId = UserSessionUtils.getLoginUserId;
    
        userManager.registerClub(userId, clubId); // ���� �������� Ŭ�� ���� �߰�
        clubManager.newMember(userId, clubId); //Ŭ�� �������� ���� ���� �߰�
        
        return "redirect:/community/club/clubHome.jsp?clubId=" + clubId;     //Ŭ�� ����Ʈ�� �̵�
    }
}
