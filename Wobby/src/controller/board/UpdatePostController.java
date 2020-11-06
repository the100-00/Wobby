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
    		// GET request: 글 수정 form 요청	
		    CommunityManager commManager = CommunityManager.getInstance();
    		Post post = commManager.findpost(postNo);	// 수정하려는 글 정보 검색
			request.setAttribute("post", post);			
			
			return "/community/post/updateForm.jsp";   // 검색한 정보를 update form으로 전송     
	    }	
    	
    	// POST request (글 정보가 parameter로 전송됨)
        Post post = new Post();//??     

        CommunityManager commManager = CommunityManager.getInstance();
        commManager.updatepost(post);			
        return "redirect:/community/post.jsp?boardId=" + boardId + "?postNo=" + postNo;		
    }
}
