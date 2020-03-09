package dao;

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
	
	public List<SelfIntroduceVO> listAll(){
		String userId = ((UserVO)httpSession.getAttribute("user")).getUserId();
		return sqlSession.selectList("resource.SearchMapper.selectAll", userId);
		
	}
}
