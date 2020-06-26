package com.QA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.QA.model.service.QAService;
import com.QA.model.vo.QA;
import com.notice.model.service.NoticeService;
import com.notice.model.vo.Notice;

/**
 * Servlet implementation class QUpView
 */
@WebServlet("/qUpView.qa")
public class QUpView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QUpView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qno = Integer.parseInt(request.getParameter("qno"));
		
		QA q = new QAService().updateView(qno);
		
		String page = "";
		
		if(q != null) {
			request.setAttribute("qa", q);
			page = "views/qa/qaUpdate.jsp";
		} else {
			request.setAttribute("error-msg", "시글 수정 페이지 이동 실패");
			page = "views/common/errorPage.jsp";
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
