package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class AuthInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	HttpSession session;
	
	
	@Override
	public boolean preHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		if(session.getAttribute("user") == null) {
			response.sendRedirect("/oive");
			return false;
		}
		else {
			return true;	
		}
	}
}

// reference : https://doublesprogramming.tistory.com/211