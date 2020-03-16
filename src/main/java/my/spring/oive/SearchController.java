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
import dao.WriteDAO;
import vo.SelfIntroduceVO;
import vo.UserVO;

@Controller
public class SearchController {
	@Autowired
	SearchDAO dao;
	
	@Autowired
	WriteDAO dao1;
	
	@Autowired
	HttpSession httpSession;
	
	@RequestMapping(value = "/self_introduce/list", method = RequestMethod.GET)
	public ModelAndView list(String input, String boundary) {
		List<SelfIntroduceVO> list = null;
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list2");
		
		String statement = "resource.SearchMapper.";
		if(boundary != null) {
			switch (boundary) {
			case "company":
				statement += "searchByCompany";
				list = dao.searchBy(1, statement, input);
				break;
			case "keyword":
				statement += "searchByKeyword";
				list = dao.searchBy(1, statement, input);
				break;
			case "question":
				statement += "searchByQuestion";
				list = dao.searchBy(1, statement, input);
				break;
			case "answer":
				statement += "searchByAnswer";
				list = dao.searchBy(1, statement, input);
				break;

			default:
				break;
			}
		}
		if(list == null) {
			list = dao.listAll(1);	
		}
		
		// TODO: SQL 결과와 마이바티스 결과가 다른 문제가 있음
		System.out.println(list.size());
		 
		mav.setViewName("list");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value = "/self_introduce/list/getpost", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView getpost(String input, String boundary, int startindex) {
		List<SelfIntroduceVO> list = null;
		ModelAndView mav = new ModelAndView();

		
		String statement = "resource.SearchMapper.";
		if(boundary != null) {
			switch (boundary) {
			case "company":
				statement += "searchByCompany";
				list = dao.searchBy(startindex, statement, input);
				break;
			case "keyword":
				statement += "searchByKeyword";
				list = dao.searchBy(startindex, statement, input);
				break;
			case "question":
				statement += "searchByQuestion";
				list = dao.searchBy(startindex, statement, input);
				break;
			case "answer":
				statement += "searchByAnswer";
				list = dao.searchBy(startindex, statement, input);
				break;

			default:
				break;
			}
		}
		if(list == null) {
			list = dao.listAll(startindex);	
		}
		 
		mav.setViewName("list2");
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
	@RequestMapping(value = "/insertdata", method = RequestMethod.GET)
	
	public void insertdata() {
		SelfIntroduceVO vo = new SelfIntroduceVO();
		for(int i = 1; i<=100; i++) {
			String sid = dao1.selectSid();
			vo.setId(Integer.parseInt(sid));
			vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId());
			vo.setQuestion(""+i);
			vo.setAnswer(""+i);
			vo.setAppliedCompany(""+i);
			vo.setWriteDate("2020-02-02");
			dao1.insert(vo);
		}
	}
}
