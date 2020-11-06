package controller;

import java.util.HashMap;
import java.util.Map;

import controller.club.*;
//import controller.comm.*;

public class RequestMapping {// �� ��û uri�� ���� controller ��ü�� ������ HashMap ����
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
    	// �� uri�� �����Ǵ� controller ��ü�� ���� �� ����
        mappings.put("/", new ForwardController("index.jsp"));
        mappings.put("/user/login/form", new ForwardController("/user/loginForm.jsp"));
//        mappings.put("/user/login", new LoginController());
//        mappings.put("/user/logout", new LogoutController());
//        mappings.put("/user/list", new ListUserController());
//        mappings.put("/user/view", new ViewUserController());
//        mappings.put("/user/register/form", new ForwardController("/user/registerForm.jsp"));
//        mappings.put("/user/register", new RegisterUserController());
//
//        // ����� ���� ���� �� ��û�� ���� ��û ó�� ����
////      mappings.put("/user/update/form", new UpdateUserFormController());
//        mappings.put("/user/update/form", new UpdateUserController());
//        mappings.put("/user/update", new UpdateUserController());
//        mappings.put("/user/delete", new DeleteUserController());
//        
//        // Ŀ�´�Ƽ ���� request URI �߰�
//        mappings.put("/community/list", new ListCommunityController());
//        mappings.put("/community/view", new ViewCommunityController());
//        mappings.put("/community/create/form", new ForwardController("/community/creationForm.jsp"));
//        mappings.put("/community/create", new CreateCommunityController());
//        mappings.put("/community/update/form", new UpdateCommunityController());
//        mappings.put("/community/update", new UpdateCommunityController());
    }

    public Controller findController(String uri) {	
    	// �־��� uri�� �����Ǵ� controller ��ü�� ã�� ��ȯ
        return mappings.get(uri);
    }
}
