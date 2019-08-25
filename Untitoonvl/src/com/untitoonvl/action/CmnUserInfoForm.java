package com.untitoonvl.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.untitoonvl.domain.UserVo;

public class CmnUserInfoForm implements IAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		UserVo userVo = (UserVo)session.getAttribute("userVo");
		
		System.out.println(userVo.getUser_id());
		System.out.println(userVo.getUser_pw());
		System.out.println(userVo.getUser_nick());
		System.out.println(userVo.getUser_name());
		System.out.println(userVo.getUser_email());
		System.out.println(userVo.getUser_gender());
		
		session.setAttribute("userVo", userVo);	
		
		return "cmn_user_info_form";
	}

}
