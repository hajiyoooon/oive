package my.spring.oive;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
			list = dao.listAll(1);	
		}
		 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value = "/self_introduce/list/getpost", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView getpost(String input, String boundary, int startindex) {
		List<SelfIntroduceVO> list = null;
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list2");
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
			list = dao.listAll(startindex);	
		}
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="self_introduce/delete/{sid}", method=RequestMethod.POST,
			produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String, String> delete(@PathVariable("sid") int sid) {
		HashMap<String, String> map = new HashMap<String,String>();
		String msg = "";
		String status = "";
		if(dao.delete(sid)) {
			msg = "게시글이 성공적으로 삭제되었습니다.";
			status = "SUCCESS";
		}
		else {
			msg = "게시글이 삭제되지 않았습니다.";
			status = "FAIL";
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
		
	}
}
