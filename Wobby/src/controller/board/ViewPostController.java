package controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.service.CommunityManager;
import model.Post;

public class ViewPostController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {			
    	Post post = null;
    	CommunityManager commManager = CommunityManager.getInstance();
		
    	int postNo = Integer.parseInt(request.getParameter("postNo"));
        String boardId = request.getParameter("boardId");
		post = commManager.findPost(postNo);
		commManager.increaseViewCnt(postNo);
		request.setAttribute("post", post);	
		return "/community/post.jsp?boardId=" + boardId + "?postNo=" + postNo;
    }
}
