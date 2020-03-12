package my.spring.oive;

import java.util.ArrayList;
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
			String keyword = ((SelfIntroduceVO)httpSession.getAttribute("user")).getKeywords(); // 입력된 keyword 받기
			String[] array = keyword.split(","); // array를 쪼개서 배열에 저장한다
			
			if(window!=null) {
				
				list=dao1.searchWrite(window, type);
				model.addAttribute("list", list);
			}
		}
		
		else if(action.equals("insert")) {
			boolean result = dao1.insert(vo);
			System.out.println(result);
			if(result) {
				model.addAttribute("msg", vo.getId()+"의 글이 입력되었습니다.");
				model.addAttribute("list", list);
			}else {
				model.addAttribute("msg", vo.getId()+"의 글이 입력에 실패했습니다.");
			}
		}
		return "write";
	}
}
