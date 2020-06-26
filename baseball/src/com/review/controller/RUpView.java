package com.review.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.review.model.service.ReviewService;

/**
 * Servlet implementation class RUpView
 */
@WebServlet("/rUpView.rv")
public class RUpView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RUpView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rno = Integer.parseInt(request.getParameter("rno"));
		
		HashMap<String, Object> hmap = new ReviewService().getUpdateView(rno);
		
		String page ="";
		
		if(hmap != null && hmap.get("attachment") != null) {
			
			page ="views/review/reviewUpdate.jsp";
			
			request.setAttribute("review", hmap.get("review"));
			request.setAttribute("fileList", hmap.get("attachment"));
		}else {
			
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 수정 페이지 조회 실패!");
					
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
