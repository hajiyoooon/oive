package my.spring.oive;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.SearchDAO;
import dao.UserDAO;
import service.UserService;
import vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	@Autowired
	UserDAO dao;

	@Autowired
	SearchDAO searchDAO;
	
	@Autowired
	UserService service;

	@Autowired
	HttpSession session;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();

		if(session.getAttribute("user") != null) 
			mav.setViewName("redirect:/self_introduce/list");
		else mav.setViewName("home");

		return mav;
	}


	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView login(String userId, String password, RedirectAttributes redirectAttr) {
		ModelAndView mav = new ModelAndView();

		if(service.login(userId, password)) {
			System.out.println("로그인 성공");
			mav.setViewName("redirect:/self_introduce/list");
		}
		else {
			System.out.println("로그인 실패");
			mav.setViewName("redirect:/");
			redirectAttr.addFlashAttribute("msg", "아이디 또는 비밀번호를 확인해주세요.");
		}
		return mav;
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String register() {
		return "join";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public ModelAndView register(UserVO vo) {
		ModelAndView mav = new ModelAndView();

		if(service.join(vo)) {
			mav.addObject("msg", "회원가입에 성공했습니다. 로그인 후 서비스를 이용해 주세요.");
			mav.setViewName("home");
		}
		else {
			mav.setViewName("join");
			mav.addObject("msg", "회원가입에 실패했습니다.");

		}
		return mav;
	}
	@RequestMapping(value = "/unregister", method = RequestMethod.POST)
	public ModelAndView unregister(String password, RedirectAttributes redirectAttr) {
		ModelAndView mav = new ModelAndView();

		if(service.unregister(password)) {
			redirectAttr.addFlashAttribute("msg", "회원 정보가 안전하게 삭제되었습니다.");
			mav.setViewName("redirect:/");
		}
		else {
			mav.setViewName("mypage");
			mav.addObject("msg", "회원 정보를 삭제할 수 없습니다.");
		}
		return mav;
	}
	
	
	@RequestMapping(value = "/editUserInfo", method = RequestMethod.POST)
	public ModelAndView editUserInfo(UserVO vo, RedirectAttributes redirectAttr) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/mypage");
		
		if(service.editUserInfo(vo)) {
			redirectAttr.addFlashAttribute("msg", "회원정보 수정에 성공했습니다.");
		}
		else {
			redirectAttr.addFlashAttribute("msg", "회원정보 수정에 실패했습니다.");
		}
		return mav;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(UserVO vo) {
		boolean result = service.logout();
		System.out.println(result);
		if(result)	return "redirect:/";
		else return "redirect:/";
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage() {
		return "mypage";
	}
}
