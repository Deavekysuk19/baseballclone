package com.member.model.dao;

import java.io.FileReader;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.common.exception.MemberException;
import com.member.model.vo.Member;

import static com.common.JDBCTemplate.*;

public class MemberDAO {
	
	
	private Properties prop;
	
	public MemberDAO() {
		prop = new Properties();
		
		String filePath = MemberDAO.class
				          .getResource("/config/member.properties")
				          .getPath();
		
		// System.out.println(filePath);
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	

	public Member selectMember(Connection con, Member m) throws MemberException {
		// TODO Auto-generated method stub
		// 1. 사용할 변수 선언
				Member result = null; // 결과를 담을 객체
				PreparedStatement pstmt = null; // 쿼리 실행할 객체
				ResultSet rset = null; // Select 결과를 받아 올 객체
				
				String sql = prop.getProperty("selectMember");
				
				try {
					pstmt = con.prepareStatement(sql);		
					
					pstmt.setString(1, m.getUserid());
					pstmt.setString(2, m.getPasswd());
					
					rset = pstmt.executeQuery();					
					
					System.out.println("result 조회 전 : " + result);
					
					if(rset.next()) {
						result = new Member();
						
						result.setUserno(rset.getInt("userno"));
						result.setUserid(m.getUserid());
						result.setPasswd(m.getPasswd());
						result.setUsername(rset.getString("name"));
						result.setPhone(rset.getString("phone"));
						result.setEmail(rset.getString("email"));
						result.setAddress(rset.getString("address"));
						result.setAge(rset.getInt("age"));
						result.setGender(rset.getString("gender"));
					}
					
					System.out.println("로그인정보조회 : " + result);
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
					throw new MemberException("[DAO 에러 발생] : " + e.getMessage());
				} finally {
					close(rset);
					close(pstmt);
				}				
				
		return result;
	}

	public int insertMember(Connection con, Member m) throws MemberException {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserid());
			pstmt.setString(2, m.getPasswd());
			pstmt.setString(3, m.getUsername());
			pstmt.setString(4, m.getPhone());
			pstmt.setString(5, m.getEmail());
			pstmt.setString(6, m.getAddress());
			pstmt.setInt(7, m.getAge());
			pstmt.setString(8, m.getGender());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new MemberException("[DAO 에러] : " + e.getMessage());
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateMember(Connection con, Member m) throws MemberException {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
//			pstmt.setString(1, m.getUserid());
			pstmt.setString(1, m.getPasswd());
//			pstmt.setString(3, m.getUsername());
			pstmt.setString(2, m.getPhone());
			pstmt.setString(3, m.getEmail());
			pstmt.setString(4, m.getAddress());
			pstmt.setInt(5, m.getAge());
			pstmt.setString(6, m.getGender());
			pstmt.setString(7, m.getUserid());
			
			result = pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new MemberException("[DAO 에러 발생] : " + e.getMessage());
		} finally {
			close(pstmt);
		}	
		
		return result;
		
	}
	
	public int deleteMember(Connection con, String userid) throws MemberException {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userid); // prop
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new MemberException("[DAO 에러 발생] : " + e.getMessage());
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int idDupCheck(Connection con, String uid) {
		int result = 0;
		PreparedStatement pt = null;
		ResultSet rs = null;
		String sendingSQL = prop.getProperty("idDupCheck");
		
		try {
			pt = con.prepareStatement(sendingSQL);
			pt.setString(1, uid);
			
			rs = pt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pt);
		}
		
		return result;
	}
	
public Member otherSelectMember(Connection con, Member m) throws MemberException {
		
		Member result = null; // 결과를 담을 객체
		PreparedStatement pstmt = null; // 쿼리 실행할 객체
		ResultSet rset = null; // Select 결과를 받아 올 객체
		
		String sql = prop.getProperty("otherSelectMember");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, m.getUsername());
			pstmt.setString(2, m.getEmail());
			pstmt.setString(3, m.getPhone());
			
			rset = pstmt.executeQuery();
			
			System.out.println("result : " + result);
			
			if(rset.next()) {
				result = new Member();

				result.setUserno(rset.getInt("USERNO"));
				result.setUserid(rset.getString("USERID"));
				result.setPasswd(rset.getString("PASSWD"));
				
				result.setUsername(m.getUsername());
				result.setPhone(m.getPhone());
				result.setEmail(m.getEmail());
				
				result.setAddress(rset.getString("address"));
				result.setAge(rset.getInt("age"));
				result.setGender(rset.getString("gender"));
			}
			
			System.out.println("이메일 로그인 정보조회 : " + result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			throw new MemberException("▶ DAO 에러 발생 ◀ " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}	
		
		return result;
	}

public int updatePwdMember(Connection con, Member m) throws MemberException {
	int result = 0;
	
	PreparedStatement pstmt = null;
	String sql = prop.getProperty("updatePwdMember");
	
	try {
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, m.getPasswd());
		pstmt.setString(2, m.getUserid());
		
		result = pstmt.executeUpdate();			
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		throw new MemberException("[DAO 에러 발생] : " + e.getMessage());
	} finally {
		close(pstmt);
	}	
	
	return result;		
}
	
	

}
