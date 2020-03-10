package my.spring.oive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	UserService service;

	@RequestMapping(value = "/self_introduce/write")
	public String write(SelfIntroduceVO vo, String action, String window, String type, Model model) {
		List<SelfIntroduceVO> list = null;
		
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
