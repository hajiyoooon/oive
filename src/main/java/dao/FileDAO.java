package dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.FileVO;
import vo.UserVO;

@Repository
public class FileDAO {
	
	@Autowired
	HttpSession httpSession;
	
	@Autowired
	SqlSession sqlSession;
	
	public List<FileVO> selectFileList(){
		String statement = "resource.FileMapper.listAll";
		
		String userId = ((UserVO) httpSession.getAttribute("user")).getUserId();
		List<FileVO> list = sqlSession.selectList(statement, userId);
		return list;
	}
	
	public boolean uploadFile(FileVO vo) {
		String statement = "resource.FileMapper.upload";
		boolean result = false;
		if(sqlSession.insert(statement, vo) == 1) {
			result = true;
		}
		return result;
	}
	public boolean updateFilename(FileVO vo) {
		String statement = "resource.FileMapper.update";
		boolean result = false;
		if(sqlSession.insert(statement, vo) == 1) {
			result = true;
		}
		return result;
	}
	public boolean deleteFile(FileVO vo) {
		String statement = "resource.FileMapper.delete";
		boolean result = false;
		if(sqlSession.insert(statement, vo) == 1) {
			result = true;
		}
		return result;
	}
}
