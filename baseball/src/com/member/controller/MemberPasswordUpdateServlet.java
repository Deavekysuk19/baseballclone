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
 * Servlet implementation class MemberPasswordUpdateServlet
 */
@WebServlet("/pwUpdate.do")
public class MemberPasswordUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberPasswordUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String chMypw = request.getParameter("passwd1");
		
		HttpSession session = request.getSession(false);		
		Member m = (Member)session.getAttribute("member");
		
		m.setPasswd(chMypw);
		
		System.out.println("변경 비번 확인 : " + m);
				
		MemberService ms = new MemberService();
		
		try {
			ms.updatePwdMember(m);
			
			System.out.println("비번 변경 성공!");
			
			response.sendRedirect("index.jsp");
			
			session.invalidate();
			
		} catch (MemberException e) {
			// TODO Auto-generated catch block
			System.out.println("회원 정보 변경 실패.");
			
			e.printStackTrace();			
			
			request.setAttribute("error-msg", "회원 정보 변경 실패..");
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
