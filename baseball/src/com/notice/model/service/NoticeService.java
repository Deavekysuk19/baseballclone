package com.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.common.JDBCTemplate.*;

import com.notice.model.dao.NoticeDAO;
import com.notice.model.vo.Notice;

public class NoticeService {
	
	private NoticeDAO nDAO = new NoticeDAO();
	private Connection con;
	
	// 입력
	public int insertNotice(Notice n) {
		
		con = getConnection();
		
		int result = nDAO.insertNotice(con,n);
		
		if(result>0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	// 글 총 갯수
	public int getListCount() {
		
		con = getConnection();
		
		int result = nDAO.getListCount(con);
		
		close(con);
		
		return result;
	}
	
	public ArrayList<Notice> selectList(int currentPage, int limit) {
		con = getConnection();
		
		ArrayList<Notice> list = nDAO.selectList(con, currentPage, limit);
		
		close(con);
		
		return list;
		
	}
	
	public Notice selectOne(int nno) {
		
		con = getConnection();
		
		Notice n = nDAO.selectOne(con, nno);
		
		if(n != null) {
		
			int result = nDAO.updateReadCount(con, nno);
			
			if(result > 0) commit(con);
			else rollback(con);
		}
		
		close(con);
		 return n;
	}

	public ArrayList<Notice> searchNotice(String condition, String keyword, 
																				int currentPage, int limit) {

		con = getConnection();
		ArrayList<Notice> list = null;
		
		if(condition != null && (condition.length()>0 && !condition.equals("null"))) {
			list = nDAO.searchList(con, condition, keyword
														, currentPage, limit);
			
		} else {
			list = nDAO.selectList(con,	currentPage, limit);
		}
		
		close(con);
		
		return list;
	}

	public int deleteNotice(int nno) {
		
		con = getConnection();
		
		int result = nDAO.deleteNotice(con,nno);
		
		if(result >0) commit(con);
		else rollback(con);
		
		close(con);
		return result;
	}

	public Notice updateView(int nno) {
		
		con = getConnection();
		Notice n = nDAO.selectOne(con, nno);
		
		close(con);
		
		return n;
	}
	
	public int updateNotice(Notice n) {
		con = getConnection();
		int result = nDAO.updateNotice(con, n);
		if(result >0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
	}

	public int getSelectListCount(String condition, int currentPage,
															int limit, String keyword) {
		
		con = getConnection();
		
		int result  = 0;
		
		if(condition != null && (condition.length()>0 && !condition.equals("null"))) {
			
			result = nDAO.getSelectListCount(con, condition, keyword);
			
		} else {
			
			result = nDAO.getListCount(con);
			
		}
		
		close(con);
		
		return result;
		
	}
	
	

}
