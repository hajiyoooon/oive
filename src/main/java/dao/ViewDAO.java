package dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SelfIntroduceVO;
import vo.UserVO;

@Repository
public class ViewDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	HttpSession httpSession;
	
	String userId;

	public List<SelfIntroduceVO> ViewByCompany(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId); // key값 userId이고 value값이 userId이다.
		map.put("input", input);
		List<SelfIntroduceVO> list = sqlSession.selectList("resource.ViewMapper.viewByCompany", map);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getAppliedCompany()+" ");
		}
		return list;
	}
	
	public List<SelfIntroduceVO> ViewByKeyword(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("userId", userId);
		map.put("input", input);

		System.out.println(map.get("userId") + " : " + map.get("input"));
		return sqlSession.selectList("resource.ViewMapper.viewByKeyword", map);
		
	}
	public List<SelfIntroduceVO> ViewByQuestion(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("input", input);
		return sqlSession.selectList("resource.ViewMapper.viewByQuestion", map);
	}
	
	public List<SelfIntroduceVO> ViewByAnswer(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("input", input);
		return sqlSession.selectList("resource.ViewMapper.viewByAnswer", map);	
	}
}
