package com.untitoonvl.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.untitoonvl.action.IAction;
import com.untitoonvl.domain.UserVo;


/**
 * Servlet implementation class AuthorUserController
 */
@WebServlet("*.athr")
public class AuthorUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// 수첩(Command.properties)을 읽어서 담당자를 기억해 두는 공간
	private HashMap<String, Object> athrMap = new HashMap<>();

	/**
     * @see HttpServlet#HttpServlet()
     */
    public AuthorUserController() {
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
   		ResourceBundle bundle = ResourceBundle.getBundle("com/untitoonvl/properties/AthrCommand");
   		Enumeration<String> keys = bundle.getKeys();
   		
   		while (keys.hasMoreElements()) {
   			String command = keys.nextElement();
//   			System.out.println("command:" + command);
   			String className = bundle.getString(command);
//   			System.out.println("className:" + className);
   			try {
   				Class<?> commandClass = Class.forName(className);
   				Object obj = commandClass.newInstance();
//   				System.out.println("obj:" + obj);
   				// 수첩에 커맨트, 커맨드 실행 객체 넣기
   				athrMap.put(command, obj);
   			} catch (Exception e) {
   				e.printStackTrace();
   			}
   		} // while
//   		System.out.println(ajaxMap);
   	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// 현재 로그인 되어있는지 체크
		HttpSession session = request.getSession();
		UserVo userVo = (UserVo)session.getAttribute("userVo");
		if (userVo == null) { // 로그인되지 않았다면
			response.sendRedirect("login-form.dft"); // 메인으로
			return;
		} else if (userVo != null && userVo.getUser_level() == 4) {
			response.sendRedirect("main.dft");
		} else if (userVo != null && (userVo.getUser_level() == 3 || userVo.getUser_level() == 2)) {
		
			String command = getCommand(request);
			IAction action = (IAction)athrMap.get(command);
			String page = action.execute(request, response);
			// "redirect:"
			if (page.startsWith(IAction.STR_REDIRECT)) {
				response.sendRedirect(page.substring(IAction.STR_REDIRECT.length()));
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(
						"WEB-INF/views/author/" + page + ".jsp");
				dispatcher.forward(request, response);
			}
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
//		System.out.println("uri:" + uri);
		// -> /Untitoonvl/*.athr
		String contextPath = request.getContextPath();
//		System.out.println("contextPath:" + contextPath);
		// -> /Untitoonvl
		int beginIndex = contextPath.length() + 1;
		int endIndex = uri.lastIndexOf(".");
		String command = uri.substring(beginIndex, endIndex);
		System.out.println("command:" + command); // 주석
		return command;
		
	}
	
}
