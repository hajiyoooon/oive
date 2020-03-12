package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.UniversityVO;

@Repository
public class UniversityDAO {
	@Autowired
	SqlSession session;
	
	public List<UniversityVO> listAll(String userId) {
		List<UniversityVO> list =
				session.selectList("resource.UniversityMapper.listAll", userId);
//		System.out.println(list.get(0).getuName());
		return list;
	}
	public int insert(UniversityVO universityVO) {
		int result =
				session.insert("resource.UniversityMapper.insert", universityVO);
		return result;
	}
	public int selectId() {
		int result =
				session.selectOne("resource.UniversityMapper.seqid");
		return result;
	}
	
	public int edit(UniversityVO universityVO) {
		int result =
				session.update("resource.UniversityMapper.edit", universityVO);
		System.out.println("edit : "+result);
		return result;
	}

}
