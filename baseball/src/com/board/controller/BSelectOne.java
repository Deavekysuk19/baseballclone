package com.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.service.BoardService;
import com.board.model.vo.Board;
import com.boardcomment.model.service.BoardCommentService;
import com.boardcomment.model.vo.BComment;


/**
 * Servlet implementation class BSelectOne
 */
@WebServlet("/selectOne.cb")
public class BSelectOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BSelectOne() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		Board b = new BoardService().selectOne(bno);
		ArrayList<BComment> bclist = new BoardCommentService().selectList(bno);
		
		String page ="";
		
		if(b != null) {
			request.setAttribute("board", b);
			request.setAttribute("bclist", bclist);
			page = "/views/board/bDetail.jsp";
		} else {
			request.setAttribute("error-msg", "게시글 상세 보기 실패");
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
