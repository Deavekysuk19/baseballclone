package com.boardcomment.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.boardcomment.model.service.BoardCommentService;
import com.boardcomment.model.vo.BComment;

/**
 * Servlet implementation class BCommentInsert
 */
@WebServlet("/bcInsert.do")
public class BCommentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BCommentInsert() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bcwriter = request.getParameter("bcwriter");
		int bno = Integer.parseInt(request.getParameter("bno"));
		String content = request.getParameter("replyContent");
		int refbcno = Integer.parseInt(request.getParameter("refbcno"));
		int bclevel = Integer.parseInt(request.getParameter("bclevel"));
		
		BComment bco = new BComment(bno, content, bcwriter, bclevel, refbcno);
		
		int result = new BoardCommentService().insertComment(bco);
		
		if(result > 0) {
			
			response.sendRedirect("selectOne.cb?bno=" + bno);
			
		} else {
			
			request.setAttribute("error-msg", "댓글 추가 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp")
						.forward(request, response);
			
		}		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
