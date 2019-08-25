package com.untitoonvl.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.untitoonvl.domain.LoginDto;
import com.untitoonvl.domain.UserVo;
import com.untitoonvl.persistence.UserDao;

public class LoginAction implements IAction {

	UserDao userDao = UserDao.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		LoginDto loginDto = new LoginDto(user_id, user_pw);
		
		UserVo userVo = userDao.loginUser(loginDto);
		
		
		String page = "";
		if (userVo != null) {
			if (userVo.getUser_level() == 4) {
				page = "redirect:cmn-main.cmn";
			} else if (userVo.getUser_level() == 3) {
				page = "redirect:athr-main.athr";
			}
			session.setAttribute("userVo", userVo);
		} else {
			page = "login_form";
		}
		
		return page;
	}

}
