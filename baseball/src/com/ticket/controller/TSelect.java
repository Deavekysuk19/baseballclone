package com.ticket.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ticket.model.service.TicketService;
import com.ticket.model.vo.Ticket;

/**
 * Servlet implementation class TSelect
 */
@WebServlet("/SelectT.do")
public class TSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TSelect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userno = Integer.parseInt(request.getParameter("userno"));
		
		
		ArrayList<Ticket> list = new ArrayList<Ticket>();
		
		TicketService ts = new TicketService();
		
		list = ts.selectList(userno);
		
		String page = null;
		
		if(list != null) {
			request.setAttribute("list", list);
			page = "views/ticketing/ticket.jsp";
			
		} else {
			request.setAttribute("error-msg", "공지사항 목록 조회 실패");
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
