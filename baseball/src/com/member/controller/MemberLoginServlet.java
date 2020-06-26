package com.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.exception.MemberException;
import com.member.model.service.MemberService;
import com.member.model.vo.Member;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/login.me")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
				String userid = request.getParameter("userId");
				String passwd = request.getParameter("passwd1");
				String originPwd = (String)request.getAttribute("originPwd");
				
				System.out.println("원본 비밀번호 : " + originPwd);
				System.out.println("암호화 비밀번호 : " + passwd);
				
				Member m = new Member(userid, passwd);
				
				MemberService ms = new MemberService();
				
				try {
					
				m = ms.selectMember(m);
				
				HttpSession session = request.getSession();
				
				session.setAttribute("member", m);
				response.sendRedirect("index.jsp");
				
				} catch (MemberException e) {
					// TODO: handle exception
					request.setAttribute("error-msg", "로그인 실패!");
					request.setAttribute("exception", e);
					request.getRequestDispatcher("views/common/errorPage.jsp")
					       .forward(request, response);
					
				}
				
				
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
