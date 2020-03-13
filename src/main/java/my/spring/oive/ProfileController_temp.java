package my.spring.oive;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
import vo.SkillsVO;
import vo.UniversityVO;
import vo.UserVO;
import vo.WorkExperienceVO;

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
					method.invoke(vo, new Object[] {value});
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
	public String profile(String category) {
		return "profile";
	}
	
	@RequestMapping(value = "/edit", method=RequestMethod.POST)
	@ResponseBody
	public String edit(String category, @RequestParam HashMap<Object, Object> map) {
		//TODO : 수정 성공, 수정 실패 메시지가 사용자에게도 보여지도록 수정해야 함.
	
		String capitlized_category = StringUtils.capitalize(category);
		ProfileVO vo = getVO(capitlized_category, map);
		vo.setUserId(((UserVO)session.getAttribute("user")).getUserId());

		if(dao.edit(vo, capitlized_category)<1) {
			System.out.println("university 수정이 실패함.");
			return "edit fail!!";
		}
		else {
			System.out.println("profileController: edit handler");
			return "edit success!!";
		}		
	}


	@RequestMapping(value = "/insert/{category}")
	@ResponseBody
	public ModelAndView insert(@PathVariable String category, HashMap<Object, Object> map) {
		//TODO : 입력 성공, 입력 실패 메시지가 사용자에게도 보여지도록 수정해야 함.
		
		String capitlized_category = StringUtils.capitalize(category);
		
		ProfileVO vo = getVO(capitlized_category, map);
		int id = dao.selectId(capitlized_category);
		vo.setId(""+id);
		String userId = ((UserVO)session.getAttribute("user")).getUserId();
		vo.setUserId(userId);
		
		if(dao.insert(vo, StringUtils.capitalize(category))<1) {
			System.out.println("university 입력이 실패함.");
		}
		else {
			System.out.println("univeristy 입력이 성공함");	
		}
		List<ProfileVO> list = new ArrayList<ProfileVO>();
		list.add(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", list);
		mav.setViewName("form/"+ category +"_form");
	
		return mav;
	}
	
	@RequestMapping(value = "/form/{category}")
	public ModelAndView form(@PathVariable String category, HashMap<Object, Object> map) {
		String userId = ((UserVO)session.getAttribute("user")).getUserId();
		List<ProfileVO> list = dao.listAll(userId, StringUtils.capitalize(category));
		ModelAndView mav = new ModelAndView();		
		mav.addObject("vo", list);
		mav.setViewName("form/"+ category +"_form");
	
		return mav;
	}
	
	@RequestMapping(value = "/delete/{category}/{id}")
	@ResponseBody
	public int delete(@PathVariable String category, @PathVariable int id) {		
		int result = dao.delete(id, StringUtils.capitalize(category));
		return result; 
	}
	

}
