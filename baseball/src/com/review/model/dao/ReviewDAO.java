package com.review.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import static com.common.JDBCTemplate.*;

import com.review.model.vo.Attachment;
import com.review.model.vo.Review;

public class ReviewDAO {
	
	private Properties prop = null;

	public ReviewDAO() {
		prop = new Properties();
		
		String filePath = ReviewDAO.class.getResource("/config/review.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public int insertReview(Connection con, Review r) {
		int result =0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, r.getSno() );
			pstmt.setString(2, r.getRtitle());
			pstmt.setString(3, r.getRcontent());
			pstmt.setString(4, r.getRwriter());
			pstmt.setString(5, r.getRteamname());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int getCurrentRno(Connection con) {
		int result =0;
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		String sql = prop.getProperty("currentRno");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public int insertAttachment(Connection con, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, at.getRno());
			pstmt.setString(2,  at.getOriginname());
			pstmt.setString(3, at.getFilepath());
			pstmt.setInt(4, at.getFlevel());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Review> selectList(Connection con) {
		ArrayList<Review> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Review>();
			while(rset.next()) {
				Review r = new Review();
				
				r.setRno(rset.getInt("rno"));
				r.setSno(rset.getString("sno"));
				r.setRtitle(rset.getString("rtitle"));
				r.setRwriter(rset.getString("rwriter"));
				r.setRcount(rset.getInt("rcount"));
				r.setRteamname(rset.getString("rteamname"));
				r.setReviewfile(rset.getString("originname"));
				
				list.add(r);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}

	public HashMap<String, Object> selectOne(Connection con, int rno) {
		HashMap<String, Object> hmap = null;
		ArrayList<Attachment> list = null;
		Review review = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rno);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Attachment>();
			
			while(rset.next()) {
				review = new Review();
				
				review.setRno(rset.getInt("rno"));
				review.setSno(rset.getString("sno"));
				review.setRtitle(rset.getString("rtitle"));
				review.setRcontent(rset.getString("rcontent"));
				review.setRwriter(rset.getString("rwriter"));
				review.setRcount(rset.getInt("rcount"));
				review.setRdate(rset.getDate("rdate"));
				review.setRteamname(rset.getString("rteamname"));
				 review.setReviewfile(rset.getNString("reviewfile")); 
				
				 
				Attachment att = new Attachment();
				
				att.setFno(rset.getInt("fno"));
				att.setRno(rset.getInt("rno")); 
				att.setOriginname(rset.getString("originname"));
				att.setFilepath(rset.getString("filepath"));
				att.setFlevel(rset.getInt("flevel"));
				att.setUploaddate(rset.getDate("uploaddate")); 
				
				list.add(att);
			
			
			}
			
			hmap = new HashMap<String, Object>();
			
			hmap.put("review", review);
			hmap.put("attachment", list);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return hmap;
	}

	public int updateAttachment(Connection con, Attachment at) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("updateAttachment");
		
		try {
		
			pstmt = con.prepareStatement(sql);
				
			pstmt.setString(1, at.getOriginname());
			pstmt.setInt(2, at.getFno());
				
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateReview(Connection con, Review r) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("updateReview");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, r.getRtitle());
			pstmt.setString(2, r.getRcontent());
			pstmt.setString(3, r.getSno());
			pstmt.setString(4, r.getRteamname());
			pstmt.setInt(5, r.getRno());
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteReview(Connection con, int rno) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("deleteReview");
		
		try {
		
			pstmt = con.prepareStatement(sql);
				
			pstmt.setInt(1, rno);
				
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateReadCount(Connection con, int rno) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateReadCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, rno);
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
}
