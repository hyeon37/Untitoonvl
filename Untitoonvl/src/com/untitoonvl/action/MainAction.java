package com.untitoonvl.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.untitoonvl.domain.UserVo;

public class MainAction implements IAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		UserVo userVo = (UserVo) session.getAttribute("userVo");
		
		String page = "";
		if (userVo != null) {
			if (userVo.getUser_level() == 4) {
				page = "redirect:cmn-main.cmn";
			} else if (userVo.getUser_level() == 3) {
				page = "redirect:athr-main.athr";
			}
		} else {
			page = "dft_main";
		}
		
		return page;
	}

}
