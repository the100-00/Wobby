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
    
        if ((UserSessionUtils.isLoginUserCommAdmin(session)) //로그인한 사용자가 커뮤니티 관리자인 경우
               ||                                               // 또는 
            (!UserSessionUtils.isLoginUserCommAdmin(session) &&  //로그인한 사용자가 커뮤니티 관리자가 아니고 
              UserSessionUtils.isLoginUser(chairId, session))) { // 커뮤니티의 운영자인 경우
                
            clubManager.remove(clubId);               // 클럽 정보 삭제
            return "redirect:/community/club/list";     //클럽 리스트로 이동
        }
        
        /* 삭제가 불가능한 경우 */
        request.setAttribute("clubId", clubId);                     
        request.setAttribute("deleteFailed", true); 
        request.setAttribute("exception", new IllegalStateException("관리자 혹은 운영자가 아닌 경우 클럽을 삭제할 수 없습니다."));            
        return "/community/club/clubHome.jsp?clubId=" + clubId;
    }
}
