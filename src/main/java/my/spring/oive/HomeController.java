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
		
		return "example";
	}
	
	//TODO : 나중에 POST 방식으로 바꿔주기
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(UserVO vo) {
		
		System.out.println(service.create(vo));
		
		return "example";
	}
	
}
