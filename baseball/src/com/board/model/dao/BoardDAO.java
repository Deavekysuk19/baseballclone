package com.board.model.dao;

import static com.common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.board.model.vo.Board;
import com.board.model.dao.BoardDAO;

public class BoardDAO {
	
	private Properties prop;
	
	public BoardDAO() {
		prop = new Properties();
		
		String filePath = BoardDAO.class
				.getResource("/config/board.properties")
				.getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertBoard(Connection con, Board b) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertBoard");
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, b.getBtitle());
			pstmt.setString(2, b.getBteamname());
			pstmt.setString(3, b.getBcontent());
			pstmt.setString(4, b.getBwriter());
			pstmt.setString(5, b.getBoardfile());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		
		}finally {
			close(pstmt);
			
		}
		
		return result;
	}
	
	public Board selectOne(Connection con, int bno) {
		Board b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				b = new Board();
				
				b.setBno(rset.getInt("bno"));
				b.setBtitle(rset.getString("btitle"));
				b.setBteamname(rset.getString("bteamname"));
				b.setBcontent(rset.getString("bcontent"));
				b.setBwriter(rset.getString("bwriter"));
//				b.setUserId(rset.getString("bwriter"));
				b.setBcount(rset.getInt("bcount"));
				b.setBdate(rset.getDate("bdate"));
				b.setBoardfile(rset.getString("boardfile"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return b;
	}
	
	public int updateReadCount(Connection con, int bno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateReadCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bno);
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	
	public int updateBoard(Connection con, Board b) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateBoard");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, b.getBtitle());
			pstmt.setString(2, b.getBteamname());
			pstmt.setString(3, b.getBcontent());
			pstmt.setString(4, b.getBoardfile());
			pstmt.setInt(5, b.getBno());
			
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

	public ArrayList<Board> selectList(Connection con, int currentPage, int limit) {
		ArrayList<Board> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBno(rset.getInt("bno"));
				b.setBtitle(rset.getString("btitle"));
				b.setBcontent(rset.getString("bcontent"));
				b.setBwriter(rset.getString("bwriter"));
//				b.setUserId(rset.getString("bwriter"));
				b.setBcount(rset.getInt("bcount"));
				b.setBdate(rset.getDate("bdate"));
				b.setBteamname(rset.getString("bteamname"));
				b.setBoardfile(rset.getString("boardfile"));
				
				list.add(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
				
		return list;
	}

	public int deleteBoard(Connection con, int bno) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteBoard");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Board> searchList(Connection con, String condition, String keyword, int currentPage, int limit) {
		ArrayList<Board> list = null; 
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch(condition) {
		case "writer": 
			sql = prop.getProperty("searchWriterBoard");
			break;
		case "team" : 
			sql = prop.getProperty("searchTeamBoard");
			break;
		case "title" : 
			sql = prop.getProperty("searchTitleBoard");
			break;
		case "content" : 
			sql = prop.getProperty("searchContentBoard");
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
			
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBno(rset.getInt("bno"));
				b.setBtitle(rset.getString("btitle"));
				b.setBteamname(rset.getString("bteamname"));
				b.setBcontent(rset.getString("bcontent"));
				b.setBwriter(rset.getString("bwriter"));
				b.setBcount(rset.getInt("bcount"));
				b.setBdate(rset.getDate("bdate"));
				b.setBoardfile(rset.getString("boardfile"));
				
				list.add(b);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int getSelectListCount(Connection con, String condition, String keyword) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch(condition) {
		case "writer": 
			sql = prop.getProperty("countWriterBoard");
			break;
		case "title" : 
			sql = prop.getProperty("countTitleBoard");
			break;
		case "content" : 
			sql = prop.getProperty("countContentBoard");
			break;
		case "teamname" :
			sql = prop.getProperty("countTeamBoard");
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
