package com.ticket.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ticket.model.service.TicketService;
import com.ticket.model.vo.Ticket;

/**
 * Servlet implementation class TInsert
 */
@WebServlet("/InsertT.do")
public class TInsert extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      /*
      
      
      String day = request.getParameter("day");
      
      System.out.println("날짜 값 확인 : " + day);
      Date writeDate = new Date(new GregorianCalendar().getTimeInMillis());
      
      if(day != null && ! day.equals("")) {
         
         String[] dateArr = day.split("-");
         int[] intArr = new int[dateArr.length];
         
         for(int i = 0 ; i < dateArr.length ; i++) {
            intArr[i] = Integer.parseInt(dateArr[i]);
         }
         
         writeDate = new Date(new GregorianCalendar(
                           intArr[0], intArr[1] - 1, intArr[2]
                  ).getTimeInMillis());
      }
      int stadiumId = Integer.parseInt(request.getParameter("stadiumId"));
      */
      String day = request.getParameter("buyer_tel");
      int userNo = Integer.parseInt(request.getParameter("buyer_postcode"));
      String seat = request.getParameter("buyer_addr");
      int price = Integer.parseInt(request.getParameter("pri"));
      String stadium = request.getParameter("buyer_name");
      // System.out.println(seat + ", "+ stadium + ", " + request.getParameter("pri"));
      //System.out.println(request.getParameter("buyer_postcode"));
      
      String sp= ",";
      String[] sArray = seat.split(sp);
      
      
      Ticket t = new Ticket();
      TicketService ts = new TicketService();
      int result=0;
      /*
      
      
      t.setDay(writeDate);
      t.setStadiumId(stadiumId);
      */
      for(int i=0;i<sArray.length;i++) {
         
         t.setDay(day);
         t.setSeat(sArray[i]);
         t.setUserNo(userNo);
         t.setPrice((price/sArray.length));
         t.setStadium(stadium);
         
         
         
         result = ts.insertTicket(t);
      }
      
      if(result > 0) {
         response.sendRedirect("index.jsp");
      } else {
         request.setAttribute("error-msg", "공지사항 등록 실패");
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