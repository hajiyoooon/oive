package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	UserService service;
	
	@Autowired
	HttpSession session;
	
	@Override
	public boolean preHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		if(session.getAttribute("user") != null) {
			session.removeAttribute("user");
		}
		
		return true;
		
	}
}

// reference : https://doublesprogramming.tistory.com/211