package com.QA.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.QA.model.service.QAService;
import com.QA.model.vo.QA;
import com.common.PageInfo;
import com.common.Search;

/**
 * Servlet implementation class QList
 */
@WebServlet("/selectList.qa")
public class QList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<QA> list = new ArrayList<QA>();
		 
		  QAService qs = new QAService();
		  
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
			
			int listCount = qs.getListCount(condition, currentPage, limit,
					keyword);
					
			maxPage = (int)((double)listCount/limit + 0.9);
			
			startPage = ((int)((double)currentPage / limit + 0.9) - 1) * limit + 1;
			
			endPage = startPage + limit - 1;
			
			if( endPage > maxPage) { 
				endPage = maxPage;
			}
			
			list = qs.selectList(condition, keyword, currentPage, limit);
		  String page = null;
		  
		  if(list != null) { 
			  PageInfo pi = new PageInfo(currentPage, listCount, limit, 
	                   maxPage, startPage, endPage);
			  
			  Search s = new Search(condition, keyword);
			  
			  request.setAttribute("list", list); 
			  request.setAttribute("pi", pi);
			  request.setAttribute("s", s);			  
			  
			  page =
		  "views/qa/qaList.jsp";
		  
		  } else { request.setAttribute("error-msg", "공지사항 목록 조회 실패"); page =
		  "views/common/errorPage.jsp"; }
		  
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
