package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.spi.ResolveResult;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SelfIntroduceVO;

@Repository
public class WriteDAO {
	@Autowired
	SqlSession session;

	public List<SelfIntroduceVO> searchWrite(String window, String type) {
		List<SelfIntroduceVO> list = new ArrayList<>();
		Map<String,String> map= new HashMap<String,String>();
		map.put("window", window); // key, value
		map.put("type", type); // key, value
		String statement = "resource.WriteMapper.searchSelf";
		list=session.selectList(statement, map);
		return list;	
	}
	
	public boolean insert(SelfIntroduceVO vo) {
		System.out.println("Mybatis 를 사용 DB 연동-insert-DAO2");
		String statement = "resource.WriteMapper.insertSelf";
		boolean result = false;
		System.out.println(vo.getAppliedCompany());
		if(session.insert(statement, vo) == 1)	// 1이면 성공한 것으로 본다.
		{	
			result = true;
			System.out.println();
		}
		return result;
	}
	
	public List<SelfIntroduceVO> listAll(String userid){
		System.out.println("Mybatis 를 사용 DB 연동-listAll-DAO2");
		List<SelfIntroduceVO> list = null;
		String statement = "resource.WriteMapper.selectAll";
		list=session.selectList(statement, userid);
		return list;
	}
}
