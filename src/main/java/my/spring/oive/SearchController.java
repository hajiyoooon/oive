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
	public ModelAndView list() {
		List<SelfIntroduceVO> list = dao.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		mav.addObject("list", list);
		
		System.out.println("검색 건수 : " + list.size());
		System.out.println(list.get(0).getKeywords());
		
		return mav;
	}
}
