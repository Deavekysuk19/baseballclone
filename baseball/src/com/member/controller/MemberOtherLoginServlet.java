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
 * Servlet implementation class MemberOtherLoginServlet
 */
@WebServlet("/OSignChk.me")
public class MemberOtherLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberOtherLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("userName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		System.out.println("이메일로 접근 : " + username + ", " + email + ", " + phone);
		
		Member m = new Member(username, email, phone);		
		MemberService ms = new MemberService();		
					
			try {
				m = ms.otherSelectMember(m);				
				HttpSession session = request.getSession();				
				session.setAttribute("member", m);				
				response.sendRedirect("views/member/ReWritePasswd.jsp");
				
			} catch (MemberException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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
