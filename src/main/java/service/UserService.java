package service;

import javax.servlet.http.HttpSession;

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
	
	@Autowired
	HttpSession session;
	
	public boolean join(UserVO vo) {

	  String encodedPassword = encoder.encode(vo.getPassword());
	  vo.setPassword(encodedPassword);
	  
	  return dao.insert(vo); // 회원가입 DAO
	}
	
	public boolean editUserInfo(UserVO vo) {
		String encodedPassword = encoder.encode(vo.getPassword());
		vo.setPassword(encodedPassword);
		
		boolean result = false;
		if((result = dao.update(vo))) {
			vo = dao.selectOne(vo.getUserId());
			session.setAttribute("user", vo);
		}
		
		return result;
	}
	
	public boolean login(String userId, String rawPassword) {
		boolean possible = false;
		UserVO vo = dao.selectOne(userId);
		
		if(vo != null) {
			if(encoder.matches(rawPassword, vo.getPassword())) {
				possible = true;
				if(possible && session != null) {
					session.setAttribute("user", vo);
				}
		
			}
		}

		return possible;
	}
	
	public boolean logout() {
		boolean result = false;
		if(session != null) {
			if(session.getAttribute("user") != null) {
				session.removeAttribute("user");
				result = true;
			}
		}
		
		return result;
	}
}
