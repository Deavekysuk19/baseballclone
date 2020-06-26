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
import com.common.PageInfo;
import com.common.Search;



/**
 * Servlet implementation class BList
 */
@WebServlet("/selectList.cb")
public class BList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<Board> list = new ArrayList<Board>();
		BoardService bs = new BoardService();
				
		String condition = request.getParameter("con");
		String keyword = request.getParameter("keyword");
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		currentPage = 1;
		limit = 10;
		
		if(request.getParameter("currentPage") != null) {
			currentPage
			   = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = bs.getListCount(condition, currentPage, limit,
				keyword);
		
		System.out.println("총 게시글 수 : " + listCount);
		
		maxPage = (int)((double)listCount/limit + 0.9);
		startPage = ((int)((double)currentPage / limit + 0.9) - 1) * limit + 1;
		endPage = startPage + limit - 1;
		
		if( endPage > maxPage) {
			endPage = maxPage;
		}
		
		list = bs.selectList(condition, keyword, currentPage, limit);
		
		String page = "";
		
		if(list != null) {
			
			PageInfo pi = new PageInfo(currentPage, listCount, limit, 
					                   maxPage, startPage, endPage);
			
			Search s = new Search(condition, keyword);
			
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			request.setAttribute("s", s);
			
			page = "views/board/bList.jsp";
		} else {
			request.setAttribute("error-msg", "게시글 목록 조회 실패");
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
