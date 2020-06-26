package com.board.model.service;

import java.sql.Connection;

import java.util.ArrayList;

import static com.common.JDBCTemplate.*;

import com.board.model.vo.Board;
import com.board.model.dao.BoardDAO;

public class BoardService {
	private Connection con;
	private BoardDAO bDAO = new BoardDAO();
	
	public int insertBoard(Board b) {
	
		con = getConnection();
		
		int result = bDAO.insertBoard(con,b);
		
		if(result>0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public Board selectOne(int bno) {
		
		con = getConnection();
		Board b =bDAO.selectOne(con, bno);
						
		if(b != null) {
			
			int result = bDAO.updateReadCount(con, bno);
			
			if(result > 0) commit(con);
			else rollback(con);
		}
		
		close(con);
		return b;
	}

	public int updateBoard(Board b) {
		
		con = getConnection();
		int result = bDAO.updateBoard(con,b);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int getListCount(String condition, int currentPage, int limit, String keyword) {
		
		con = getConnection();
		
		int result = 0;
		
		if(condition != null && (condition.length()>0 && !condition.equals("null"))) {
		
			result = bDAO.getSelectListCount(con, condition, keyword);
			
		} else {
			
			result = bDAO.getListCount(con);
			
		}
		
		close(con);
		
		return result;
	}

	public ArrayList<Board> selectList(String condition, String keyword, int currentPage, int limit) {
		
		con = getConnection();
		
		ArrayList<Board> list = null;
		
		if(condition != null && (condition.length()>0 && !condition.equals("null"))) {
			
			list = bDAO.searchList(con, condition, keyword, currentPage, limit);
			
		} else {
			
			list = bDAO.selectList(con, currentPage, limit);
			
		}
		close(con);
		
		return list;
	}

	public int deleteBoard(int bno) {
		con = getConnection();
		int result = bDAO.deleteBoard(con, bno);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	/*
	 * public ArrayList<Board> searchBoard(String condition, String keyword, int
	 * currentPage, int limit) { con = getConnection(); ArrayList<Board> list =
	 * null;
	 * 
	 * if(condition.length()>0) { list = bDAO.searchList(con,condition, keyword);
	 * }else { list = bDAO.selectList(con, currentPage, limit); } return list; }
	 */

}
