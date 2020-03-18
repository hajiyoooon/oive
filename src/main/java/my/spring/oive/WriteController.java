package my.spring.oive;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vo.UserVO;
import dao.UserDAO;
import dao.WriteDAO;
import service.UserService;
import vo.SelfIntroduceVO;

@Controller
public class WriteController {
	@Autowired
	WriteDAO writeDao;
	
	@Autowired
	HttpSession httpSession;
	
	@Autowired
	UserService service;

	@RequestMapping(value = "/self_introduce/write")
	public String write(SelfIntroduceVO vo, Model model) {
		vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId());
		String uri = "write";
		
		boolean result = false;
		if(vo.getId() == 0) {
			String sid = writeDao.selectSid(); // 1. 자기소개서의 다음 아이디값을 받아온다
			if(sid!=null) {
				vo.setId(Integer.parseInt(sid)); // 2. 받아온 id를 지정해준 후 인서트
				result = writeDao.insert(vo);
				uri = "redirect:write?id=" + vo.getId();
			}
		}
		else {
			vo = writeDao.selectOne(vo);
			if(vo != null) result = true;
		}
		
		model.addAttribute("vo",vo);
		model.addAttribute("result", result);
		
		return uri;
	}
	
	@RequestMapping(value = "/self_introduce/save", method = RequestMethod.POST,
			produces="application/json; charset=utf-8")
	@ResponseBody
	public String save(@RequestBody SelfIntroduceVO vo) {
		vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId());
		boolean result = writeDao.update(vo);
		return String.format("{'result' : '%s'}", result);
	}
	
	// 쿼리예제 
	@RequestMapping(value="/self_introduce/write/keyword",
			produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String, String> insertKeyword(int sid, String keyword) {
		boolean result = writeDao.insertKeyword(sid, keyword);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("STATUS", "" + result );
		return map;
	}
	
	@RequestMapping(value="/self_introduce/delete/keyword", method=RequestMethod.GET,
			produces="application/json; charset=utf-8")
	@ResponseBody
	public HashMap<String, String> deleteKeyword(int id, String keyword) {
		HashMap<String, String> map = new HashMap<String,String>();
		String msg = "";
		String status = "";
		if(writeDao.deleteKeyword(id, keyword)) {
			msg = "키워드가 성공적으로 삭제되었습니다.";
			status = "SUCCESS";
		}
		else {
			msg = "키워드가 삭제되지 않았습니다.";
			status = "FAIL";
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
		
	}
}
