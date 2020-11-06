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
        
        if (postList.equals(null)) { //null�ϰ��, �� �˻� / ��Ī�� �ƴҰ��
            String boardId = request.getParameter("boardId");
            postList = commManager.findPostList(boardId);
            popularPostList = commManager.findPopularPostList(boardId);
            request.setAttribute("popularPostList", popularPostList);
        }

		// commList ��ü�� request�� �����Ͽ� Ŀ�´�Ƽ ����Ʈ ȭ������ �̵�(forwarding)
		request.setAttribute("postList", postList);				
		return "/community/post.jsp?boardId=" + boardId + "?page=" + page;      
    } 
}
