package com.boardcomment.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.boardcomment.model.dao.BCommentDAO;
import com.boardcomment.model.vo.BComment;
import static com.common.JDBCTemplate.*;

public class BoardCommentService {
	private Connection con;
	private BCommentDAO bcoDAO = new BCommentDAO();

	public int insertComment(BComment bco) {
		con = getConnection();
		
		int result = bcoDAO.insertComment(con, bco);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
	}

	public ArrayList<BComment> selectList(int bno) {
		con = getConnection();
		ArrayList<BComment> bclist = bcoDAO.selectList(con, bno);
		
		close(con);
		
		return bclist;
	}

}











