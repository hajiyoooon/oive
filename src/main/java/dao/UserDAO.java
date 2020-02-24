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
	
	public void selectOne(String userId, String password) {
		String statement = "selectUser";
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("password", password);
		UserVO vo = session.selectOne(statement, map);
		System.out.println(vo);

	}
}
