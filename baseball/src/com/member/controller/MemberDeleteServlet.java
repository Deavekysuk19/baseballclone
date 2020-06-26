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
 * Servlet implementation class memberDeleteServlet
 */
@WebServlet("/mDelete.me")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 15954456L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		Member m = (Member)session.getAttribute("member");
		String userid = m.getUserid();

		MemberService ms = new MemberService();		
		
		try {
			ms.deleteMember(userid);
			System.out.println("회원멤버십 삭제 완료 !");
			
			session.invalidate();
			response.sendRedirect("index.jsp");
			
		} catch (MemberException e) {
			e.printStackTrace();
			response.sendRedirect("views/common/errorPage.jsp");
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
