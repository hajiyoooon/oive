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

	
	public List<SelfIntroduceVO> listAll(int startindex){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("start", startindex);
		map.put("end", (startindex+9));
		return sqlSession.selectList("searchByKeyword", map);	
	}
	public List<SelfIntroduceVO> searchBy(int startindex, String statement, String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId); // key값 userId이고 value값이 userId이다.
		map.put("input", input);
		map.put("start", startindex);
		map.put("end", (startindex+9));
		return sqlSession.selectList(statement, map);
		
	}

	public boolean delete(int sid) {
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		boolean result = false;
		if(sqlSession.delete("resource.SearchMapper.delete", sid) == 1) {
			result = true;
		}
		return result;
	}

}
