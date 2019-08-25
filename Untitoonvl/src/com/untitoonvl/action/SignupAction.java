package com.untitoonvl.action;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.untitoonvl.domain.UserVo;
import com.untitoonvl.persistence.UserDao;

public class SignupAction implements IAction {

	UserDao userDao = UserDao.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_nick = request.getParameter("user_nick");
		String user_name = request.getParameter("user_name");
		String user_email = request.getParameter("user_email");
		Date user_birth = Date.valueOf(request.getParameter("user_birth"));
		String user_gender = request.getParameter("user_gender");
		
		UserVo userVo = new UserVo();
		
		userVo.setUser_id(user_id);
		userVo.setUser_pw(user_pw);
		userVo.setUser_nick(user_nick);
		userVo.setUser_name(user_name);
		userVo.setUser_email(user_email);
		userVo.setUser_birth(user_birth);
		userVo.setUser_gender(user_gender);
		
//		System.out.println(user_id);
//		System.out.println(user_pw);
//		System.out.println(user_nick);
//		System.out.println(user_name);
//		System.out.println(user_email);
//		System.out.println(user_birth);
//		System.out.println(user_gender);
		
		boolean result = userDao.signupUser(userVo);
		
		String page = "";
		if (result == true) {
			page = "redirect:main.dft";
		} else {
			page = "redirect:signup-fail.dft";
		}
		
		return page;
	}

}
