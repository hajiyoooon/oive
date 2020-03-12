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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	/*
	 * @RequestMapping(value = "/self_introduce/write/{userId}", produces = )
	 * 
	 * @ResponseBody public String Map<String, String> {
	 * vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId()); }
	 */
	/*
	 * @RequestMapping(value = "/self_introduce/{userId}") public ModelAndView
	 * MAV(SelfIntroduceVO vo, String action, String window, String type) {
	 * ModelAndView mav = new ModelAndView();
	 * vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId()); //
	 * session에 저장된 값을 불러오기 List<SelfIntroduceVO> list = null;
	 * 
	 * return mav; }
	 */
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
			boolean result = dao1.insert(vo);
			/*
			 * String keyword =
			 * ((SelfIntroduceVO)httpSession.getAttribute("user")).getKeywords(); // 입력된
			 * keyword 받기 String[] array = keyword.split(","); // array를 쪼개서 배열에 저장한다
			 */			
			System.out.println(result);
			if(result) {
				model.addAttribute("msg", vo.getId()+"의 글이 입력되었습니다.");
				list = dao1.listAll(vo.getUserId());
				/*
				 * for(int i=0;i<array.length;i++) { model.addAttribute(array[i]); }
				 */
				model.addAttribute("list", list);
			}else {
				model.addAttribute("msg", vo.getId()+"의 글이 입력에 실패했습니다.");
			}
		}
		
		return "write";
	}
	/*
	 * public String modelView(SelfIntroduceVO vo, Model model) {
	 * 
	 * return "a"; }
	 */
}
