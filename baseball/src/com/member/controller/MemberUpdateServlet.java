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
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/mUpdate.me")
public class MemberUpdateServlet extends HttpServlet {	
	private static final long serialVersionUID = 109L;	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 인코딩 -- EncodingFilter 가 대신 해줌 크킄 >ㅂ< )/
		// 2. 회원 정보 수정용 데이터 받아오기
//    	String chMyID = request.getParameter("userId");
		String chMyPasswd = request.getParameter("passwd1");
//		String chMyname = request.getParameter("userName");
		String chEmail = request.getParameter("email");

		int chAge = Integer.parseInt(request.getParameter("age"));
		// 주의)* 만약 input 속성 중 'disabled' 가 있어 비활성화된 속성은
		// 서버로 가지고 들어올 수 없다.
		String chPhone = request.getParameter("phone");	
		
		String chAddress = request.getParameter("zipCode") + ", "
			     + request.getParameter("address1") + ", "
			     +request.getParameter("address2"); 
		String chGender = request.getParameter("gender");
		
		// String hobby = String.join(",", request.getParameterValues("hobby"));
		
		// 해당 회원의 원본 정보 가져오기
		HttpSession session = request.getSession(false);
		
		Member m = (Member)session.getAttribute("member");
		
		// 기존 정보를 setter 를 사용해서 새로운 정보로 바꾸기
//		m.setUserid(chMyID);
		m.setPasswd(chMyPasswd);
//		m.setUsername(chMyname);
		m.setEmail(chEmail);
		m.setAge(chAge);
		m.setPhone(chPhone);
		m.setAddress(chAddress);
		m.setGender(chGender);
		
		System.out.println("변경한 회원 정보 확인 : " + m);
		
		// 회원 정보 수정 서비스 실행하기
		MemberService ms = new MemberService();

		try {
			ms.updateMember(m);
			System.out.println("회원 정보 변경 성공!");
			
			//session.invalidate();
			
//			 response.sendRedirect("index.jsp");
			 
//			 System.out.println("회원 정보 변경 취소됨!");
//			if()
			response.sendRedirect("index.jsp");
			
		} catch (MemberException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			System.out.println("회원 정보 변경 실패.");
			
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
		
		
//		// 1. 인코딩 -- EncodingFilter 가 대신 해줌 크킄 >ㅂ< )/
//		// 2. 회원 정보 수정용 데이터 받아오기
////    	String chMyID = request.getParameter("userId");
//		String chMyPasswd = request.getParameter("passwd1");
////		String chMyname = request.getParameter("userName");
//		String chEmail = request.getParameter("email");
//
//		int chAge = Integer.parseInt(request.getParameter("age"));
//		// 주의)* 만약 input 속성 중 'disabled' 가 있어 비활성화된 속성은
//		// 서버로 가지고 들어올 수 없다.
//		String chPhone = request.getParameter("phone");	
//		
//		String chAddress = request.getParameter("zipCode") + ", "
//			     + request.getParameter("address1") + ", "
//			     +request.getParameter("address2"); 
//		String chGender = request.getParameter("gender");
//		
//		// String hobby = String.join(",", request.getParameterValues("hobby"));
//		
//		// 해당 회원의 원본 정보 가져오기
//		HttpSession session = request.getSession(false);
//		
//		Member m = (Member)session.getAttribute("member");
//		
//		// 기존 정보를 setter 를 사용해서 새로운 정보로 바꾸기
////		m.setUserid(chMyID);
//		m.setPasswd(chMyPasswd);
////		m.setUsername(chMyname);
//		m.setEmail(chEmail);
//		m.setAge(chAge);
//		m.setPhone(chPhone);
//		m.setAddress(chAddress);
//		m.setGender(chGender);
//		
//		System.out.println("변경한 회원 정보 확인 : " + m);
//		
//		// 회원 정보 수정 서비스 실행하기
//		MemberService ms = new MemberService();
//
//		try {
//			ms.updateMember(m);
//			System.out.println("회원 정보 변경 성공!");
//			
//			//session.invalidate();
//			
////			 response.sendRedirect("index.jsp");
//			 
////			 System.out.println("회원 정보 변경 취소됨!");
////			if()
//			response.sendRedirect("/baseball/views/member/myPageForm.jsp");
//			
//		} catch (MemberException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			
//			System.out.println("회원 정보 변경 실패.");
//			
//			request.setAttribute("error-msg", "회원 정보 변경 실패..");
//			request.setAttribute("exception", e);			
//			request.getRequestDispatcher("views/common/errorPage.jsp")
//			.forward(request, response);			
//		}
//		
		
	}

}
