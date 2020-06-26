package com.kh.test.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TestDao {
			
public static Connection getConnection() {
		
		Connection con = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@192.168.10.3:1521:xe",
					"kh", "kh");
			
			con.setAutoCommit(false);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	} 
	
	public static void close(Connection con) {
		try {
			if(con != null && !con.isClosed()) 
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null && ! stmt.isClosed())
				stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			
			if(rset != null && ! rset.isClosed())
				rset.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection con) {
		try {
			if(con != null && ! con.isClosed())
				con.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con) {
		try {
			if(con != null && ! con.isClosed())
				con.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Test> selectList(){
		List<Test> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = "SELECT * FROM TEST";
		
		try {
			pstmt = getConnection().prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Test>();
			
			while(rset.next()) {
				Test t = new Test();
				
				t.setTno(rset.getInt("Tno"));
				t.setWriter(rset.getString("writer"));
				t.setTitle(rset.getString("title"));
				t.setContent(rset.getString("content"));
				t.setDate(rset.getDate("date"));
				
				list.add(t);			
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
}
