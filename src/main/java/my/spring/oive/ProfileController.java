//package my.spring.oive;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//
//import dao.UniversityDAO;
//import vo.UniversityVO;
//import vo.UserVO;
//
///**
// * 
// * @author 김소연
// * Handler for profile page
// *
// */
//@Controller
//public class ProfileController {
//	@Autowired
//	UniversityDAO uDao;		
//	@Autowired
//	HttpSession session;	
//	
//	@RequestMapping(value = "/profile")
//	public ModelAndView profile() {
//		ModelAndView mav = new ModelAndView();
//		String userId 
//			= ((UserVO)session.getAttribute("user")).getUserId();
////		System.out.println(userId);
//		mav.addObject("uvo", uDao.listAll(userId));
//		mav.setViewName("profile");
//		return mav;
//	}
//	
//	@RequestMapping(value = "/edit", method=RequestMethod.POST)
//	@ResponseBody
//	public void edit(UniversityVO universityVO) {		
////		System.out.println(universityVO.getuName());
//		if(uDao.edit(universityVO)<1) {
//			System.out.println("university 수정이 실패함.");
//		}
//		else {
//			System.out.println("profileController: edit handler");		
//		}
//	}
//	
//	@RequestMapping(value = "/insert")
//	@ResponseBody
//	public void insert(UniversityVO universityVO) {
//		if(uDao.insert(universityVO)<1) {
//			System.out.println("university 입력이 실패함.");
//		}
//		else {
//			System.out.println("univeristy 입력이 성공함");
//			
//		}
//		
//	}
//	
//	@RequestMapping(value = "/form/{category}")
//	public ModelAndView form(@PathVariable String category) {
//		int uid = uDao.selectId();
//		ModelAndView mav = new ModelAndView();		
//		mav.addObject("uid", uid);
//		UniversityVO uvo = new UniversityVO();
//		uvo.setuName("아무거나");
//		uvo.setUserId(((UserVO)session.getAttribute("user")).getUserId());
//		uvo.setId(uid);
//		List<UniversityVO> list = new ArrayList<UniversityVO>(); 
//		list.add(uvo);
//		uDao.insert(uvo);		
//		mav.addObject("uvo", list);
//		mav.setViewName("form/"+ category +"_form");
////		return "form/"+ category +"_form";
//		return mav;
//	}
//		
//}
