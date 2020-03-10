package dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.UserVO;

@Repository
public class UserDAO {
	@Autowired
	SqlSession session;
	
	public UserVO selectOne(String userId) {
		String statement = "selectUser";
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		UserVO vo = session.selectOne(statement, map);
		
		return vo;
		
	}
	
	public boolean insert(UserVO vo) {
		boolean result = false;
		String statement = "insertUser";
		if(session.insert(statement, vo) == 1) {
			result = true;
		}
		return result;
	}
	
	public boolean update(UserVO vo) {
		boolean result = false;
		String statement = "updateUser";
		if(session.update(statement, vo) == 1) {
			result = true;
		}
		return result;
	}
}
