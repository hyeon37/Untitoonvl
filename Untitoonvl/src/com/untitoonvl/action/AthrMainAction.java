package com.untitoonvl.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.untitoonvl.domain.UserVo;

public class AthrMainAction implements IAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		UserVo userVo = (UserVo) session.getAttribute("userVo");
		
		session.setAttribute("userVo", userVo);
		
		return "athr_main";
	}

}
