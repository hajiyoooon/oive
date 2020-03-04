package my.spring.oive;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	
	@Autowired
	HttpSession session;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		if(session.getAttribute("user") != null) return "list";
		return "example";
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView login(String userId, String password) {
		System.out.println("로그인 시도");
		ModelAndView mav = new ModelAndView();
		
		if(service.login(userId, password)) {
			System.out.println("로그인 성공");
			mav.setViewName("redirect:/self_introduce/list");
		}
		else {
			System.out.println("로그인 실패");
			mav.setViewName("redirect:/");
			mav.addObject("msg","아이디 또는 비밀번호를 확인해주세요.");
		}
		return mav;
	}
	
	//TODO : �굹以묒뿉 POST 諛⑹떇�쑝濡� 諛붽퓭二쇨린
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String register() {
		return "join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public ModelAndView register(UserVO vo) {
		ModelAndView mav = new ModelAndView();
		
		if(service.join(vo)) {
			mav.addObject("msg", "회원가입에 성공했습니다. 로그인 후 서비스를 이용해 주세요.");
			mav.setViewName("example");
		}
		else {
			mav.setViewName("join");
			mav.addObject("msg", "회원가입에 실패했습니다.");
		}
		return mav;
	}
	
	@RequestMapping(value = "/self_introduce/list", method = RequestMethod.GET)
	public String list() {

		
		return "list";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile() {
		
		return "profile";
	}
	
	@RequestMapping(value = "/self_introduce/write/{self_introduce_id}", method = RequestMethod.GET)
	public String write(UserVO vo) {
		return "write";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(UserVO vo) {
		boolean result = service.logout();
		System.out.println(result);
		if(result)	return "redirect:/";
		else return "redirect:/";
	}
	
}
