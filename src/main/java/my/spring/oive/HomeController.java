package my.spring.oive;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserDAO;
import vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	UserDAO dao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		dao.selectOne("admin", "1234");
		
		return "example";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(UserVO vo) {
		System.out.println(dao.insert(vo));
		
		return "example";
	}
	
}
