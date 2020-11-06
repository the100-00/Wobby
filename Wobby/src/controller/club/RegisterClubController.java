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
    
        userManager.registerClub(userId, clubId); // 유저 정보에서 클럽 정보 추가
        clubManager.newMember(userId, clubId); //클럽 정보에서 유저 정보 추가
        
        return "redirect:/community/club/clubHome.jsp?clubId=" + clubId;     //클럽 리스트로 이동
    }
}
