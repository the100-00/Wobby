package controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Controller;
import model.service.CommunityManager;
import model.Post;

public class UpdatePostController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
		int postNo = Integer.parseInt(request.getParameter("postNo"));
        String boardId = request.getParameter("boardId");
		
		if (request.getMethod().equals("GET")) {	
    		// GET request: �� ���� form ��û	
		    CommunityManager commManager = CommunityManager.getInstance();
    		Post post = commManager.findpost(postNo);	// �����Ϸ��� �� ���� �˻�
			request.setAttribute("post", post);			
			
			return "/community/post/updateForm.jsp";   // �˻��� ������ update form���� ����     
	    }	
    	
    	// POST request (�� ������ parameter�� ���۵�)
        Post post = new Post();//??     

        CommunityManager commManager = CommunityManager.getInstance();
        commManager.updatepost(post);			
        return "redirect:/community/post.jsp?boardId=" + boardId + "?postNo=" + postNo;		
    }
}
