package com.untitoonvl.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.untitoonvl.domain.UserVo;
import com.untitoonvl.persistence.UserDao;

public class CmnPasswdForm implements IAction {

	UserDao userDao = UserDao.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String pw_type = request.getParameter("pw_type");
		UserVo userVo = (UserVo) session.getAttribute("userVo");
		
		request.setAttribute("pw_type", pw_type);
		session.setAttribute("userVo", userVo);
		
		return "cmn_passwd_form";
	}

}
