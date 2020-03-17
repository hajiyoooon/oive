package my.spring.oive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.SearchDAO;
import vo.SelfIntroduceVO;

@Controller
public class SearchController {
	@Autowired
	SearchDAO dao;
	
	@RequestMapping(value = "/self_introduce/list", method = RequestMethod.GET)
	public ModelAndView list(String input, String boundary) {
		List<SelfIntroduceVO> list = null;
		if(boundary != null) {
			switch (boundary) {
			case "company":
				list = dao.searchByCompany(input);
				break;
			case "keyword":
				list = dao.searchByKeyword(input);
				break;
			case "question":
				list = dao.searchByQuestion(input);
				break;
			case "answer":
				list = dao.searchByAnswer(input);
				break;

			default:
				break;
			}
		}
		if(list == null) {
			list = dao.listAll();	
		}
		
		
		 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		mav.addObject("list", list);
		
		return mav;
	}
}
