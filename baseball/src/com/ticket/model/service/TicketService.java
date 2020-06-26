package com.ticket.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.ticket.model.dao.TicketDAO;
import com.ticket.model.vo.Ticket;

public class TicketService {
	private TicketDAO tDAO = new TicketDAO();
	private Connection con;
	
	public ArrayList<Ticket> selectList(int userno){
		con = getConnection();
		
		ArrayList<Ticket> list = tDAO.selectList(con,userno);
		
		close(con);
		
		return list;
		
	}
	
	public int insertTicket(Ticket t) {
		con = getConnection();
		
		int result = tDAO.insertTicket(con, t);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	public int deleteTicket(int userno) {
		con = getConnection();
		
		int result = tDAO.deleteTicket(con, userno);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	
}
