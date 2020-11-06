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
        
        //�޾ƿ� ������ ���� post ��ü ����
        Post post = new Post();//??    
        
        try {
            //CommunityManager�� createó�� ����
            CommunityManager commManager = CommunityManager.getInstance();
            String boardId = request.getParameter("boardId");
            int postNo = commManager.newPost(boardId, userId); //postId��ȯ�ϵ���
            
            return "redirect:/community/post.jsp?boardId=" + boardId + "?postNo=" + postNo; // ���� �� �۷� redirect
            
        } catch (Exception e) {     // ���� �߻� �� �Է� form���� forwarding
            request.setAttribute("creationFailed", true);
            request.setAttribute("exception", e);
            return "/community/post/create.jsp";
        }
    }
}
