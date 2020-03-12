package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.AwardVO;

@Repository
public class AwardDAO {
	@Autowired
	SqlSession session;
	
	public List<AwardVO> listAll(String userId) {
		List<AwardVO> list =
				session.selectList("resource.AwardMapper.listAll", userId);
		return list;
	}
	public int insert(AwardVO awardVO) {
		int result =
				session.insert("resource.AwardMapper.insert", awardVO);
		return result;
	}
	public int selectId() {
		int result =
				session.selectOne("resource.AwardMapper.seqid");
		return result;
	}
	
	public int edit(AwardVO AwardVO) {
		int result =
				session.update("resource.AwardMapper.edit", AwardVO);
		System.out.println("edit : "+result);
		return result;
	}

}
