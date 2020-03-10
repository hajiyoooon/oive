package my.spring.oive;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.UniversityDAO;
import vo.UniversityVO;
import vo.UserVO;

/**
 * 
 * @author 김소연
 * Handler for profile page
 *
 */
@Controller
public class ProfileController {
	@Autowired
	UniversityDAO uDao;		
	@Autowired
	HttpSession session;	
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView profile() {
		ModelAndView mav = new ModelAndView();
		String userId 
			= ((UserVO)session.getAttribute("user")).getUserId();
//		System.out.println(userId);
		mav.addObject("uvo", uDao.listAll(userId));
		mav.setViewName("profile");
		return mav;
	}
	
	@RequestMapping(value = "/edit")
	public ModelAndView edit(UniversityVO vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(vo.getId() + vo.getuName());
//		if(uDao.edit()<0) {
//			System.out.println("university 수정이 실패함.");
//		}
//		else {
//			mav.addObject(vo);
//			System.out.println(vo + "profileController: edit  handler");		
//		}
		mav.setViewName("profile");
		return mav;
//		return "profile";
	}
	

}
