package my.spring.oive;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserDAO;
import service.UserService;
import vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController3 {
	@Autowired
	UserDAO dao;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		return "profile";
	}
	@RequestMapping(value = "/form/{category}", method = RequestMethod.GET)
	public String form(@PathVariable String category) {
		return "form/"+ category +"_form";
	}

	@RequestMapping(value = "/self_introduce/write/{self_introduce_id}", method = RequestMethod.GET)
	public String write(UserVO vo) {
		return "write";
	}

	@RequestMapping(value = "/base", method = RequestMethod.GET)
	public String base() {
		return "base";
	}

}
