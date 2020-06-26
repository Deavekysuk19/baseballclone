package com.QA.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.QA.model.dao.QADAO;
import com.QA.model.vo.QA;


public class QAService {

	private Connection con;
	private QADAO qDAO = new QADAO();
	
	// 입력
	public int insertQA(QA q) {
		
		con = getConnection();
		
		int result = qDAO.insertQA(con,q);
		
		if(result>0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	// 글 총 갯수
	public int getListCount(String condition, int currentPage, int limit, String keyword) {
		
		con = getConnection();
		
		int result = 0;
		
		if(condition != null && (condition.length()>0 && !condition.equals("null"))) {
		
			result = qDAO.getSelectListCount(con, condition, keyword);
			
		} else {
			
			result = qDAO.getListCount(con);
			
		}
		
		close(con);
		
		return result;
	}
	
	
	/*
	 * public ArrayList<QA> selectList() { con = getConnection();
	 * 
	 * ArrayList<QA> list = qDAO.selectList(con);
	 * 
	 * close(con);
	 * 
	 * return list; }
	 */
	 
	public ArrayList<QA> selectList(String condition, String keyword, int currentPage, int limit) {
		con = getConnection();
		
		ArrayList<QA> list = null;
		
		if(condition != null && (condition.length()>0 && !condition.equals("null"))) {
		
			list = qDAO.searchList(con, condition, keyword
													, currentPage, limit);
			
		} else {
			
			list = qDAO.selectList(con, currentPage, limit);
			
		}
		
		close(con);
		
		return list;
	}
	
	public QA selectOne(int qno) {
		
		con = getConnection();
		
		QA q = qDAO.selectOne(con, qno);
		
		if(q != null) {
		
			int result = qDAO.updateReadCount(con, qno);
			
			if(result > 0) commit(con);
			else rollback(con);
		}
		
		close(con);
		 return q;
	}

	public int deleteQA(int qno) {
		
		con = getConnection();
		
		int result = qDAO.deleteQA(con,qno);
		
		if(result >0) commit(con);
		else rollback(con);
		
		close(con);
		return result;
	}

	public QA updateView(int qno) {
		
		con = getConnection();
		QA n = qDAO.selectOne(con, qno);
		
		close(con);
		
		return n;
	}
	
	public int updateQA(QA q) {
		
		con = getConnection();
		int result = qDAO.updateQA(con, q);
		if(result >0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
		
	}
	
	
	
}
