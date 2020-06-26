package com.notice.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.notice.model.service.NoticeService;
import com.notice.model.vo.Notice;

/**
 * Servlet implementation class NInsert
 */
@WebServlet("/nInsert.no")
public class NInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String date = request.getParameter("date");
		
		Date writeDate = new Date(new GregorianCalendar().getTimeInMillis());
		
		if(date != null && ! date.equals("")) {
			
			String[] dateArr = date.split("-");
			int[] intArr = new int[dateArr.length];
			
			for(int i = 0 ; i < dateArr.length ; i++) {
				intArr[i] = Integer.parseInt(dateArr[i]);
			}
			writeDate = new Date(new GregorianCalendar(
									intArr[0], intArr[1] - 1, intArr[2]).getTimeInMillis());
		}
		
		Notice n = new Notice();
		
		n.setNtitle(title);
		n.setNcontent(content);
		n.setNwriter(writer);
		n.setNdate(writeDate);
		
		int result = new NoticeService().insertNotice(n);
		
		if(result > 0) {
			
			response.sendRedirect("searchNotice.no");
		
		} else {
			
			request.setAttribute("error-msg", "공지사항 등록 실패");
			/*
			 * request.getRequestDispatcher("views/common/errorPage.jsp") .forward(request,
			 * response);
			 */
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
