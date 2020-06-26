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
 * Servlet implementation class QUpdate
 */
@WebServlet("/qUpdate.qa")
public class QUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qno = Integer.parseInt(request.getParameter("qno"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		QA q = new QA();
		
		q.setQno(qno);
		q.setQcontent(content);
		q.setQtitle(title);
		
		int result = new QAService().updateQA(q);
		
		if (result > 0) {
			
			response.sendRedirect("selectList.qa");
			
		} else {
			
			request.setAttribute("msg", "공지사항 수정 실패!!");
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
