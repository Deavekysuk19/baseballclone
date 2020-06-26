package com.QA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.QA.model.service.QAService;
import com.notice.model.service.NoticeService;

/**
 * Servlet implementation class QDelete
 */
@WebServlet("/qDelete.qa")
public class QDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qno = Integer.parseInt(request.getParameter("qno"));
		
		QAService qs = new QAService();
		
		int result = qs.deleteQA(qno);
		
		if(result > 0) {
			response.sendRedirect("selectList.qa");
		} else {
			request.setAttribute("error-msg", "공지사항 삭제 실패");
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
