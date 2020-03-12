package my.spring.oive;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vo.UserVO;
import dao.UserDAO;
import dao.WriteDAO;
import service.UserService;
import vo.SelfIntroduceVO;

@Controller
public class WriteController {
	@Autowired
	UserDAO dao;
	
	@Autowired
	WriteDAO dao1;
	
	@Autowired
	HttpSession httpSession;
	
	@Autowired
	UserService service;

	@RequestMapping(value = "/self_introduce/write")
	public String write(SelfIntroduceVO vo, String action, String window, String type, Model model) {
		
		List<SelfIntroduceVO> list = null;
		vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId());
		
		
		if(action==null) {	
			if(vo.getUserId()==null) {
				list = dao1.listAll(vo.getUserId());
				model.addAttribute("list", list);
			}
		}
		
		else if(action.equals("search")) {

			
			if(window!=null) {
				list=dao1.searchWrite(window, type);
				model.addAttribute("list", list);
			}
		}
		
		else if(action.equals("insert")) {

			boolean result = false;
			String sid = dao1.selectSid(); // 1. 자기소개서의 다음 아이디값을 받아온다
			if(sid!=null) {
				vo.setId(Integer.parseInt(sid)); // 2. 받아온 id를 지정해준 후 인서트
				result = dao1.insert(vo);
				if(result == true && vo.getKeywords() != null) {
					// 자소서 인서트를 성공하면 키워드를 인서트한다.
					List<String> array = Arrays.asList(vo.getKeywords().split(", "));
					result = dao1.insertKeyword(vo.getId(), array);
				}
			}

			if(result) {
				model.addAttribute("msg", vo.getId()+"의 글이 입력되었습니다.");
			}else {
				model.addAttribute("msg", vo.getId()+"의 글이 입력에 실패했습니다.");
			}
		}
		return "write";
	}
}
