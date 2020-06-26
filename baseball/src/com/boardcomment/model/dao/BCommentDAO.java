package com.boardcomment.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.boardcomment.model.vo.BComment;
import static com.common.JDBCTemplate.*;

public class BCommentDAO {
	private Properties prop;
	
	public BCommentDAO() {
		prop = new Properties();
		
		String filePath = BCommentDAO.class
										.getResource("/config/comment.properties")
										.getPath();
		
		try {
			
			prop.load(new FileReader(filePath));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public int insertComment(Connection con, BComment bco) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertComment");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bco.getBno());
			pstmt.setString(2,  bco.getBccontent());
			pstmt.setString(3,  bco.getBcwriter());
			
			if(bco.getRefbcno() > 0) {
				pstmt.setInt(4,  bco.getRefbcno());
			} else {
				pstmt.setNull(4,  java.sql.Types.NULL);
			}
			
			pstmt.setInt(5,  bco.getBclevel());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<BComment> selectList(Connection con, int bno) {
		ArrayList<BComment> bclist = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bno);
			
			rset = pstmt.executeQuery();
			
			bclist = new ArrayList<BComment>();
			
			while(rset.next()) {
				BComment bco = new BComment();
				
				bco.setBcno(rset.getInt("bcno"));
				bco.setBno(rset.getInt("bno"));
				bco.setBccontent(rset.getString("bccontent"));
				bco.setBcwriter(rset.getString("bcwriter"));
				bco.setBcdate(rset.getDate("bcdate"));
				bco.setBclevel(rset.getInt("bclevel"));
				bco.setRefbcno(rset.getInt("refbcno"));
				
				bclist.add(bco);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return bclist;

}


}









