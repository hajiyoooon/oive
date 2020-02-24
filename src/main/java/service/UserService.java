package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import dao.UserDAO;
import vo.UserVO;

@Service
public class UserService {
	@Autowired
	UserDAO dao;
	
	@Autowired
	BCryptPasswordEncoder encoder;
	
	public boolean create(UserVO vo) {

	  String encodedPassword = encoder.encode(vo.getPassword());
	  vo.setPassword(encodedPassword);

	  return dao.insert(vo); // 회원가입 DAO
	}
}
