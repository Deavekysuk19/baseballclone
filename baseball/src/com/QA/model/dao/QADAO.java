package com.QA.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.QA.model.vo.QA;

public class QADAO {
	
	private Properties prop;
	
		public QADAO() {
			prop = new Properties();
		
			String filePath = QADAO.class.getResource("/config/qa.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 입력
	public int insertQA(Connection con, QA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertQA");
		
		try {
			pstmt = con.prepareStatement(sql);
		
			pstmt.setString(1, q.getQtitle());
			pstmt.setString(2, q.getQcontent());
			pstmt.setString(3, q.getQwriter());
			pstmt.setDate(4, q.getQdate());
		
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int getListCount(Connection con) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	
	/*
	 * public ArrayList<QA> selectList(Connection con) { ArrayList<QA> list= null;
	 * PreparedStatement pstmt = null; ResultSet rset = null; String sql
	 * =prop.getProperty("selectList");
	 * 
	 * try { pstmt = con.prepareStatement(sql);
	 * 
	 * rset = pstmt.executeQuery();
	 * 
	 * list = new ArrayList<QA>();
	 * 
	 * while(rset.next()) { QA q = new QA();
	 * 
	 * q.setQno(rset.getInt(1)); q.setQtitle(rset.getString(2));
	 * q.setQcontent(rset.getString(3)); q.setQwriter(rset.getString(4));
	 * q.setQcount(rset.getInt(5)); q.setQdate(rset.getDate(6));
	 * 
	 * list.add(q); }
	 * 
	 * } catch(SQLException e) { e.printStackTrace(); } finally { close(rset);
	 * close(pstmt); }
	 * 
	 * return list; }
	 */
	 
	public ArrayList<QA> selectList(Connection con, int currentPage, int limit) {
		ArrayList<QA> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			// 1. 마지막 행의 번호
			// 2. 첫 행의 번호
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<QA>();
			
			while(rset.next()) {
				 QA q = new QA();
				  
				  q.setQno(rset.getInt("qno")); 
				  q.setQtitle(rset.getString("qtitle"));
				  q.setQcontent(rset.getString("qcontent")); 
				  q.setQwriter(rset.getString("qwriter"));
				  q.setQcount(rset.getInt("qcount")); 
				  q.setQdate(rset.getDate("qdate"));
				
				list.add(q);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
				
		return list;
	}

	public int updateReadCount(Connection con, int qno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateReadCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, qno);
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	// 하나 선택
	public QA selectOne(Connection con, int qno) {
		QA q = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				q = new QA();
				
				q.setQno(rset.getInt("qno"));
				q.setQtitle(rset.getString("qtitle"));
				q.setQcontent(rset.getString("qcontent"));
				q.setQwriter(rset.getString("qwriter"));
				q.setQcount(rset.getInt("qcount"));
				q.setQdate(rset.getDate("qdate"));
			}
			
		} catch(SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}		
		
		return q;
	}

	public ArrayList<QA> searchList(Connection con, String condition, 
														String keyword, int currentPage, int limit) {
		
		ArrayList<QA> list = null; 
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch(condition) {
		case "writer": 
			sql = prop.getProperty("searchWriterQA");
			break;
		case "title" : 
			sql = prop.getProperty("searchTitleQA");
			break;
		case "content" : 
			sql = prop.getProperty("searchContentQA");
			break;
		}
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			  
			pstmt.setString(1, keyword);
			pstmt.setInt(2, endRow);
			pstmt.setInt(3, startRow);	
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<QA>();
			
			while(rset.next()) {
				QA q = new QA();
				
				q.setQno(rset.getInt("qno"));
				q.setQtitle(rset.getString("qtitle"));
				q.setQcontent(rset.getString("qcontent"));
				q.setQwriter(rset.getString("qwriter"));
				q.setQcount(rset.getInt("qcount"));
				q.setQdate(rset.getDate("qdate"));
				     
				list.add(q);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int deleteQA(Connection con, int qno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteQA");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, qno);
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateQA(Connection con, QA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateQA");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, q.getQtitle());
			pstmt.setString(2, q.getQcontent());
			pstmt.setInt(3, q.getQno());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}	
		
		return result;
	}

	public int getSelectListCount(Connection con, String condition, String keyword) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch(condition) {
		case "writer": 
			sql = prop.getProperty("countWriterQA");
			break;
		case "title" : 
			sql = prop.getProperty("countTitleQA");
			break;
		case "content" : 
			sql = prop.getProperty("countContentQA");
			break;
		}
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, keyword);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

}
