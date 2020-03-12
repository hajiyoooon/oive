package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.spi.ResolveResult;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SelfIntroduceVO;
import vo.UserVO;

@Repository
public class WriteDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	HttpSession httpSession;
	
	String userId;
	
	public List<SelfIntroduceVO> searchByCompany(String input){
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId(); // UserService에 저장을 한 것을 가지고 저장
		HashMap<String, String> map = new HashMap<String, String>(); // Hashmap map이름으로 생성
		map.put("userId", userId); // key값 userId이고 value값이 userId이다.
		return sqlSession.selectList("resource.SearchMapper.searchByCompany", map);
	}


	public List<SelfIntroduceVO> searchWrite(String window, String type) {
		List<SelfIntroduceVO> list = new ArrayList<>();
		Map<String,String> map= new HashMap<String,String>();
		map.put("window", window); // key, value
		map.put("type", type); // key, value
		String statement = "resource.WriteMapper.searchSelf";
		list=sqlSession.selectList(statement, map);
		return list;	
	}
	
	public String selectSid() {
		return sqlSession.selectOne("resource.WriteMapper.selectSid");
	}
	
	public boolean insert(SelfIntroduceVO vo) {
		System.out.println("Mybatis 를 사용 DB 연동-insert-DAO2");
		String statement = "resource.WriteMapper.insertSelf";
		boolean result = false;
		System.out.println(vo.getAppliedCompany());
		if(sqlSession.insert(statement, vo) == 1)	// 1이면 성공한 것으로 본다.
		{	
			result = true;
			System.out.println();
		}
		return result;
	}
	public boolean insertKeyword(int sid, List<String> keywords){
		boolean result = true;
		userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("sid", ""+sid);
		for(String keyword : keywords) {
			map.put("keyword", keyword);
			if(sqlSession.insert("resource.WriteMapper.insertKey", map) < 1) {
				result = false;
			}
		}

		return result;
	}
	public List<SelfIntroduceVO> listAll(String userid){
		System.out.println("Mybatis 를 사용 DB 연동-listAll-DAO2");
		List<SelfIntroduceVO> list = null;
		String statement = "resource.WriteMapper.selectAll";
		list=sqlSession.selectList(statement, userid);
		return list;
	}
}
