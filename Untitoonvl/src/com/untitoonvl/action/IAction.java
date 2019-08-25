package com.untitoonvl.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAction {
	public static String STR_REDIRECT = "redirect:";
	
	public String execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException;
}
