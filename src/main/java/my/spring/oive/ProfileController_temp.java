package my.spring.oive;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.ProfileDAO;
import vo.AwardVO;
import vo.CertificationsVO;
import vo.EducationVO;
import vo.LanguagesVO;
import vo.PatentVO;
import vo.ProfileVO;
import vo.PublicationsVO;
import vo.UniversityVO;
import vo.UserVO;
import vo.WorkExperienceVO;
import vo.SkillsVO;

/**
 * 
 * @author 하지윤
 * Handler for profile page
 *
 */
@Controller
public class ProfileController_temp {
	@Autowired
	ProfileDAO dao;		
	@Autowired
	HttpSession session;	
	
	public ProfileVO getVO(String category, HashMap<Object, Object> map) {
		ProfileVO vo;
		switch(category) {
		case "Award":
			vo = new AwardVO();
			break;
		case "Certifications":
			vo = new CertificationsVO();
			break;
		case "Education":
			vo = new EducationVO();
			break;
		case "Languages":
			vo = new LanguagesVO();
			break;
		case "Patent":
			vo = new PatentVO();
			break;
		case "Publications":
			vo = new PublicationsVO();
			break;
		case "Skills":
			vo = new SkillsVO();
			break;
		case "University":
			vo = new UniversityVO();
			break;
		case "WorkExperience":
			vo = new WorkExperienceVO();
			break;
		default:
			vo = new ProfileVO();
			break;
		}
		
		
		Method[] methods = vo.getClass().getMethods();
		for(Method method : methods) {
			if(method.getName().startsWith("set")) {
				Object value = map.get(method.getName().substring(3));
				if(value == null) continue;
				try {
					method.invoke(value, new Object[] {value});
					
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	
			}
		}

		
		return vo;
	}
	
	@RequestMapping(value = "/profile")
	public ModelAndView profile(String category) {
		ModelAndView mav = new ModelAndView();
		String userId 
			= ((UserVO)session.getAttribute("user")).getUserId();

		mav.addObject("vo", dao.listAll(userId, category));
		mav.setViewName("profile");
		return mav;
	}
	
	@RequestMapping(value = "/edit", method=RequestMethod.POST)
	@ResponseBody
	public void edit(String category, HashMap<Object, Object> map) {
		ProfileVO vo = getVO(category, map);
		if(dao.edit(vo, category)<1) {
			System.out.println("university 수정이 실패함.");
		}
		else {
			System.out.println("profileController: edit handler");		
		}
	}
	

	@RequestMapping(value = "/insert")
	@ResponseBody
	public void insert(ProfileVO vo, String category) {
		if(dao.insert(vo, category)<1) {
			System.out.println("university 입력이 실패함.");
		}
		else {
			System.out.println("univeristy 입력이 성공함");
			
		}
		
	}
	
	@RequestMapping(value = "/form/{category}")
	public void form(@PathVariable String category, HashMap<Object, Object> map) {
		ProfileVO vo = getVO(category, map);
		int id = dao.selectId(category); // 맨 첫 글자 대문자여야 함!
		
		vo.setId(id);
		vo.setUserId(((UserVO)session.getAttribute("user")).getUserId());
//		((UniversityVO) vo).setuName("대학교");
		dao.insert(vo, category);		
	
		List<ProfileVO> list = new ArrayList<ProfileVO>(); 
		list.add(vo);
		
		ModelAndView mav = new ModelAndView();		
		mav.addObject("uvo", list);
		mav.setViewName("form/"+ category +"_form");

		return;
	}
		
}
