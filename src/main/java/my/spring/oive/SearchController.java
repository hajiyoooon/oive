package my.spring.oive;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.SearchDAO;
import dao.ViewDAO;
import dao.WriteDAO;
import vo.SelfIntroduceVO;
import vo.UserVO;

@Controller
public class SearchController {
	@Autowired
	SearchDAO searchDAO;
	
	@Autowired
	WriteDAO writeDAO;
	
	@Autowired
	ViewDAO viewDAO;
	
	@Autowired
	HttpSession httpSession;
	
	@RequestMapping(value = "/self_introduce/list", method = RequestMethod.GET)
	public ModelAndView listFirstTen(String input, String boundary) {
		List<SelfIntroduceVO> list = null;
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list2");
		
		String statement = "resource.SearchMapper.";
		if(boundary != null) {
			switch (boundary) {
			case "company":
				statement += "searchByCompany";
				list = searchDAO.searchBy(1, statement, input);
				break;
			case "keyword":
				statement += "searchByKeyword";
				list = searchDAO.searchBy(1, statement, input);
				break;
			case "question":
				statement += "searchByQuestion";
				list = searchDAO.searchBy(1, statement, input);
				break;
			case "answer":
				statement += "searchByAnswer";
				list = searchDAO.searchBy(1, statement, input);
				break;

			default:
				break;
			}
		}
		if(list == null) {
			list = searchDAO.listAll(1);	
		}
		 
		mav.setViewName("list");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value = "/self_introduce/list/getpost", method = RequestMethod.GET)
	@ResponseBody
	public List<SelfIntroduceVO> loadPostsAsJson(String input, String boundary, int startindex) {
		List<SelfIntroduceVO> list = null;
		
		String statement = "resource.SearchMapper.";
		if(boundary != null) {
			switch (boundary) {
			case "company":
				statement += "searchByCompany";
				list = searchDAO.searchBy(startindex, statement, input);
				break;
			case "keyword":
				statement += "searchByKeyword";
				list = searchDAO.searchBy(startindex, statement, input);
				break;
			case "question":
				statement += "searchByQuestion";
				list = searchDAO.searchBy(startindex, statement, input);
				break;
			case "answer":
				statement += "searchByAnswer";
				list = searchDAO.searchBy(startindex, statement, input);
				break;

			default:
				break;
			}
		}
		if(list == null) {
			list = searchDAO.listAll(startindex);	
		}
		
		return list;
	}
	
	@RequestMapping(value="self_introduce/delete/{sid}", method=RequestMethod.POST,
			produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String, String> delete(@PathVariable("sid") int sid) {
		HashMap<String, String> map = new HashMap<String,String>();
		String msg = "";
		String status = "";
		if(searchDAO.delete(sid)) {
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
	@RequestMapping(value = "/self_introduce/search", method = RequestMethod.GET, produces="application/json; charset=utf-8")
	@ResponseBody
	public List<SelfIntroduceVO> list(String input, String boundary) {
		List<SelfIntroduceVO> list = null;
		if(boundary != null) {
			switch (boundary) {
			case "company":
				System.out.println("ViewByCompany 실행");
				list = viewDAO.ViewByCompany(input);
				break;
			case "keyword":
				list = viewDAO.ViewByKeyword(input);
				break;
			case "question":
				list = viewDAO.ViewByQuestion(input);
				break;
			case "answer":
				list = viewDAO.ViewByAnswer(input);
				break;

			default:
				break;
			}
		}
		return list;
	}
}
