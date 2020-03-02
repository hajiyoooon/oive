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
		dao.selectOne("admin", "1234");
		
		return "list";
	}
	
	//TODO : �굹以묒뿉 POST 諛⑹떇�쑝濡� 諛붽퓭二쇨린
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(UserVO vo) {

		System.out.println(service.create(vo));
		
		return "profile";
	}
	
}
