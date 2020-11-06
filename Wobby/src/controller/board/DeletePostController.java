package controller.board;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import model.service.CommunityManager;
import model.Post;

public class DeletePostController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
        CommunityManager commManager = CommunityManager.getInstance();        
        HttpSession session = request.getSession(); 
        
        int postNo = Integer.parseInt(request.getParameter("postNo"));
        String boardId = request.getParameter("boardId");
        String userId = request.getParameter("userId");
    
        if ((UserSessionUtils.isLoginUserCommAdmin(session)) //�α����� ����ڰ� Ŀ�´�Ƽ �������� ���
               ||                                               // �Ǵ� 
            (!UserSessionUtils.isLoginUserCommAdmin(session) &&  //�α����� ����ڰ� Ŀ�´�Ƽ �����ڰ� �ƴϰ� 
              UserSessionUtils.isLoginUser(userId, session))) { // �� �ۼ����� ���
                
            commManager.removePost(postNo);               // �� ����
            return "redirect:/community/board.jsp?boardId=" + boardId;     //�� ����Ʈ�� �̵�
        }
        
        /* ������ �Ұ����� ��� */
        request.setAttribute("postNo", postNo);                     
        request.setAttribute("deleteFailed", true); 
        request.setAttribute("exception", new IllegalStateException("������ Ȥ�� �� �ۼ��ڰ� �ƴ� ��� ���� ���� �� �����ϴ�."));            
        return "/community/post.jsp?boardId=" + boardId + "?postNo=" + postNo;
    }
}
