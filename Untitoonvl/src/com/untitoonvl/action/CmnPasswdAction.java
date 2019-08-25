package com.untitoonvl.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.untitoonvl.domain.UserVo;
import com.untitoonvl.persistence.UserDao;

public class CmnPasswdAction implements IAction {
	
	UserDao userDao = UserDao.getInstance();

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String pw_type = request.getParameter("pw_type");
		String user_pw = request.getParameter("user_pw");
		
		UserVo userVo = (UserVo) session.getAttribute("userVo");
		
		boolean result = userDao.checkPasswd(userVo, user_pw);
		
		String page = "";
		if (result == true) {
			if (pw_type.equals("delete")) {
				page = "redirect:cmn-delete-action.dft";
			} else if (pw_type.equals("update")) {
				page = "redirect:cmn-user-info-form.cmn?pw_type=" + pw_type;
			}
			session.setAttribute("userVo", userVo);
		} else {
			page = "cmn_passwd_form";
		}
		
		return page;
	}

}
