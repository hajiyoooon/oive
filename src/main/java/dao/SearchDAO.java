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
public class SearchDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	HttpSession httpSession;
	
	String userId;

	
	public List<SelfIntroduceVO> listAll(){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		return sqlSession.selectList("resource.SearchMapper.selectAll", userId);
		
	}
	public List<SelfIntroduceVO> searchByCompany(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId); // key값 userId이고 value값이 userId이다.
		map.put("input", input);
		return sqlSession.selectList("resource.SearchMapper.searchByCompany", map);
		
	}
	public List<SelfIntroduceVO> searchByKeyword(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("userId", userId);
		map.put("input", input);

		System.out.println(map.get("userId") + " : " + map.get("input"));
		return sqlSession.selectList("resource.SearchMapper.searchByKeyword", map);
		
	}
	public List<SelfIntroduceVO> searchByQuestion(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("input", input);
		return sqlSession.selectList("resource.SearchMapper.searchByQuestion", map);
		
	}
	public List<SelfIntroduceVO> searchByAnswer(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("input", input);
		return sqlSession.selectList("resource.SearchMapper.searchByAnswer", map);
		
	}
}
