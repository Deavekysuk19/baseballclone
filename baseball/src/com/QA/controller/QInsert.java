package com.QA.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.QA.model.service.QAService;
import com.QA.model.vo.QA;



/**
 * Servlet implementation class QInsert
 */
@WebServlet("/qInsert.qa")
public class QInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QInsert() {
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
		
		QA q = new QA();
		
		q.setQtitle(title);
		q.setQcontent(content);
		q.setQwriter(writer);
		q.setQdate(writeDate);
		
		int result = new QAService().insertQA(q);
		
		if(result > 0) {
			
			response.sendRedirect("selectList.qa");
		
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
