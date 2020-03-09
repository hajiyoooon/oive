package my.spring.oive;

<<<<<<< Updated upstream:src/main/java/my/spring/oive/HomeController.java
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
=======
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
>>>>>>> Stashed changes:src/main/java/my/spring/oive/HomeController2.java
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

<<<<<<< Updated upstream:src/main/java/my/spring/oive/HomeController.java
=======
import dao.UserDAO;
import dao.WriteDAO;
import service.UserService;
import vo.SelfIntroduceVO;
import vo.UserVO;

>>>>>>> Stashed changes:src/main/java/my/spring/oive/HomeController2.java
/**
 * Handles requests for the application home page.
 */
@Controller
<<<<<<< Updated upstream:src/main/java/my/spring/oive/HomeController.java
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
=======
public class HomeController2 {
	@Autowired
	UserDAO dao;
	
	@Autowired
	WriteDAO dao1;
	
	@Autowired
	UserService service;
>>>>>>> Stashed changes:src/main/java/my/spring/oive/HomeController2.java
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
<<<<<<< Updated upstream:src/main/java/my/spring/oive/HomeController.java
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
=======
	public String home() {
		return "example";
	}
	
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
	
	@RequestMapping(value = "/form/{category}", method = RequestMethod.GET)
	public String form(@PathVariable String category) { 
		return "form/"+ category +"_form";
	}
	
	@RequestMapping(value = "/self_introduce/write")
	public String write(SelfIntroduceVO vo, String action, String window, String type, Model model) {
		List<SelfIntroduceVO> list = null;
		
		if(action==null) {	
			if(vo.getUserId()==null) {
				list = dao1.listAll(vo.getUserId());
				model.addAttribute("list", list);
			}
		}
		
		else if(action.equals("search")) {	
			if(window!=null) {
				list=dao1.searchWrite(window, type);
				model.addAttribute("list", list);
			}
		}
		
		else if(action.equals("insert")) {
			boolean result = dao1.insert(vo);
			System.out.println(result);
			if(result) {
				model.addAttribute("msg", vo.getId()+"의 글이 입력되었습니다.");
				model.addAttribute("list", list);
			}else {
				model.addAttribute("msg", vo.getId()+"의 글이 입력에 실패했습니다.");
			}
		}
		return "write";
>>>>>>> Stashed changes:src/main/java/my/spring/oive/HomeController2.java
	}
}
