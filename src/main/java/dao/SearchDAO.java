package dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SelfIntroduceVO;

@Repository
public class SearchDAO extends DAO {
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	HttpSession httpSession;
	
	public List<SelfIntroduceVO> listAll(){
		String userId = (String)httpSession.getAttribute("user");
		return sqlSession.selectList("SearchMapper.selectAll", userId);
		
	}
}
