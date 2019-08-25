package com.untitoonvl.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.untitoonvl.action.IAction;

/**
 * Servlet implementation class TotalAjaxController
 */
@WebServlet("*.ajax")
public class TotalAjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 수첩(Command.properties)을 읽어서 담당자를 기억해 두는 공간
	private HashMap<String, Object> ajaxMap = new HashMap<>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TotalAjaxController() {
        super();
        // TODO Auto-generated constructor stub
    }

    // doGet, doPost와 달리 한번만 실행됨
    @Override
    public void init() throws ServletException {
    	super.init();
    	loadProperties();
    }
    
    private void loadProperties() {
    	ResourceBundle bundle = ResourceBundle.getBundle("com/untitoonvl/properties/AjaxCommand");
    	Enumeration<String> keys = bundle.getKeys();
    	
    	while (keys.hasMoreElements()) {
    		String command = keys.nextElement();
    		String className = bundle.getString(command);
    		
    		try {
				Class<?> commandClass = Class.forName(className);
				Object obj = commandClass.newInstance();
				
				// 수첩에 커맨드, 커맨드 실행 객체 넣기
				ajaxMap.put(command, obj);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String command = getCommand(request);
		IAction action = (IAction)ajaxMap.get(command);
		String data = action.execute(request, response);
		System.out.println("data : " + data);
		
		response.setHeader("content-type", "application/json; charset=UTF-8");
		// "redirect:"
		if (data.startsWith(IAction.STR_REDIRECT)) {
			response.sendRedirect(data.substring(IAction.STR_REDIRECT.length()));
		} else {
			PrintWriter out = response.getWriter();
			System.out.println("out : " + out);
			out.println(data);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private String getCommand(HttpServletRequest request) {
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		
		int beginIndex = contextPath.length() + 1;
		int endIndex = uri.lastIndexOf(".");
		String command = uri.substring(beginIndex, endIndex);
		System.out.println("command : " + command);
		
		return command;
	}
	
}
