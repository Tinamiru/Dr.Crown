package kr.co.drcrown.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import kr.co.drcrown.dto.MemberVO;


public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
										Authentication authentication) throws ServletException, IOException {
	    String url = "/";
	    
		
		User user = (User)authentication.getDetails();	
		
		// session 저장
		MemberVO loginUser = user.getMemberVO();  
		HttpSession session = request.getSession();		
		session.setAttribute("loginUser", loginUser);
		session.setMaxInactiveInterval(60*60);
		
//		super.onAuthenticationSuccess(request, response, authentication);

		// url 분기 수정 구간
		String myField = request.getParameter("myfield");
		if( myField != null) {
		    url = "/common/aiready";
		    response.sendRedirect(url);
		    
		}else {
		    
		    response.sendRedirect(url);
		}
	}
	
	

}
