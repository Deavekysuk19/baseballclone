package com.QA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.QA.model.service.QAService;
import com.QA.model.vo.QA;

/**
 * Servlet implementation class QselectOne
 */
@WebServlet("/selectOne.qa")
public class QselectOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QselectOne() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qno = Integer.parseInt(request.getParameter("qno"));
			
			
			QAService qs = new QAService();
			
			QA q = qs.selectOne(qno);
			String page = null;
			
			if(q != null) {
				request.setAttribute("qa", q);
				page = "views/qa/qaDetail.jsp";
			} else {
				request.setAttribute("error-msg", "공지사항 상세보기 실패");
				page = "/views/common/errorPage.jsp";
			}
			
			request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
