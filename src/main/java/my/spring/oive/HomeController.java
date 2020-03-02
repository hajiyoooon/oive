package my.spring.oive;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserDAO;
import service.UserService;
import vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	UserDAO dao;
	
	@Autowired
	UserService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "example";
	}
	
	//TODO : �굹以묒뿉 POST 諛⑹떇�쑝濡� 諛붽퓭二쇨린
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String register() {
		
		return "join";
	}
	
	@RequestMapping(value = "/self_introduce/list", method = RequestMethod.GET)
	public String list() {

		
		return "list";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile() {
		
		return "profile";
	}
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form() { 
		return "university_form";
	}
	
	@RequestMapping(value = "/self_introduce/write/{self_introduce_id}", method = RequestMethod.GET)
	public String write(UserVO vo) {
		return "write";
	}
	
}
