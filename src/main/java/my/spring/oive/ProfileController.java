package my.spring.oive;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping(value = "/profile")
	public ModelAndView profile() {
		ModelAndView mav = new ModelAndView();
		String userId 
			= ((UserVO)session.getAttribute("user")).getUserId();
//		System.out.println(userId);
		mav.addObject("uvo", uDao.listAll(userId));
		mav.setViewName("profile");
		return mav;
	}
	
	@RequestMapping(value = "/edit", method=RequestMethod.POST)
	@ResponseBody
	public void edit(UniversityVO universityVO) {
//		ModelAndView mav = new ModelAndView();
		
		System.out.println(universityVO.getuName());
		if(uDao.edit(universityVO)<1) {
			System.out.println("university 수정이 실패함.");
		}
		else {
//			mav.addObject(vo);
			System.out.println("profileController: edit handler");		
		}
//		mav.setViewName("profile");
//		return mav;
//		return "edit";
	}
	

}
