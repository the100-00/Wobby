package controller.board;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.user.UserSessionUtils;
import model.service.CommunityManager;
import model.Post;

public class CreatePostController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
        Date startDate = new Date();
        HttpSession session = request.getSession();
        String userId = UserSessionUtils.getLoginUserId;
        
        //받아온 정보를 토대로 post 객체 생성
        Post post = new Post();//??    
        
        try {
            //CommunityManager에 create처리 위임
            CommunityManager commManager = CommunityManager.getInstance();
            String boardId = request.getParameter("boardId");
            int postNo = commManager.newPost(boardId, userId); //postId반환하도록
            
            return "redirect:/community/post.jsp?boardId=" + boardId + "?postNo=" + postNo; // 성공 시 글로 redirect
            
        } catch (Exception e) {     // 예외 발생 시 입력 form으로 forwarding
            request.setAttribute("creationFailed", true);
            request.setAttribute("exception", e);
            return "/community/post/create.jsp";
        }
    }
}
