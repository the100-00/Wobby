package controller.board;

import java.util.Collections;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Controller;
import model.Post;
import model.service.CommunityManager;

public class ListPostController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
        CommunityManager commManager = CommunityManager.getInstance();
        String boardId = request.getParameter("boardId");
        List<Post> postList = request.getAttribute("postList");
        List<Post> popularPostList = null;
        int page = Integer.parseInt(request.getParameter("page"));
        
        if (postList.equals(null)) { //null일경우, 즉 검색 / 매칭이 아닐경우
            String boardId = request.getParameter("boardId");
            postList = commManager.findPostList(boardId);
            popularPostList = commManager.findPopularPostList(boardId);
            request.setAttribute("popularPostList", popularPostList);
        }

		// commList 객체를 request에 저장하여 커뮤니티 리스트 화면으로 이동(forwarding)
		request.setAttribute("postList", postList);				
		return "/community/post.jsp?boardId=" + boardId + "?page=" + page;      
    } 
}
