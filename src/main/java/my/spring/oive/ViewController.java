package my.spring.oive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.SearchDAO;
import dao.ViewDAO;
import vo.SelfIntroduceVO;

@Controller
public class ViewController {
	@Autowired
	ViewDAO dao;
	
	@RequestMapping(value = "/self_introduce/search", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView list(String input, String boundary) {
		List<SelfIntroduceVO> list = null;
		if(boundary != null) {
			switch (boundary) {
			case "company":
				System.out.println("ViewByCompany 실행");
				list = dao.ViewByCompany(input);
				break;
			case "keyword":
				list = dao.ViewByKeyword(input);
				break;
			case "question":
				list = dao.ViewByQuestion(input);
				break;
			case "answer":
				list = dao.ViewByAnswer(input);
				break;

			default:
				break;
			}
		}
		if(list == null) {
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		mav.addObject("list", list);
		System.out.println(mav);
		
		return mav;
	}
}
