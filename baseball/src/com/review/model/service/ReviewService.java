package com.review.model.service;

import java.io.File;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import static com.common.JDBCTemplate.*;

import com.review.model.dao.ReviewDAO;
import com.review.model.vo.Attachment;
import com.review.model.vo.Review;

public class ReviewService {
	
	private Connection con;
	private ReviewDAO rDAO = new ReviewDAO();
	
	
	
	public int insertReview(Review r, ArrayList<Attachment> list) {
			
		con = getConnection();
		
		int result =0;
		
		// 게시글 추가 쿼리
		int result1 = rDAO.insertReview(con, r);
		// 첨부파일에 게시글 번호 붙이기
		if(result1 > 0) {
			int rno = rDAO.getCurrentRno(con);
			for(int i =0; i<list.size();i++) {
				list.get(i).setRno(rno);
			}
		}
		int result2 =0;
		for(int i=0; i<list.size();i++) {
			list.get(i).setFlevel(i==0? 0 : 1);
			result2 = rDAO.insertAttachment(con, list.get(i));
			
			if(result2 <=0) break;
		}
		if(result1>0 && result2>0) {
			commit(con);
			result = 1;
		}else rollback(con);
		
		return result;
	}



	public ArrayList<Review> selectList() {
		
		con = getConnection();

		ArrayList<Review> list = rDAO.selectList(con);
		
		close(con);
		return list;
	}



	public HashMap<String, Object> selectOne(int rno) {
		con = getConnection();
		
		HashMap<String, Object> hmap = rDAO.selectOne(con, rno);
		
		if(hmap != null) {
			
			int result = rDAO.updateReadCount(con, rno);
			
			if(result > 0) commit(con);
			else rollback(con);
		}
		
		close(con);
		return hmap;
	}



	public HashMap<String, Object> getUpdateView(int rno) {
		
		Connection con = getConnection();
		
		HashMap<String, Object> hmap = rDAO.selectOne(con, rno);
		
		close(con);
		
		return hmap;
	}



	public int updateReview(Review r, ArrayList<Attachment> list) {
		int result = 0;
		
		Connection con = getConnection();
		
		int result1 = rDAO.updateReview(con, r);
		
		if(result1 > 0) {
			int result2 = 0;
			
			for(Attachment at : list) {
				result2 = rDAO.updateAttachment(con, at);
				
				if(result2 == 0) break;
			}		
			
			if(result2 > 0) {
				commit(con);
				result = 1;
			} else rollback(con);
		}
		
		close(con);
		
		return result;
	}



	public int deleteReview(int rno, String savePath) {
		con = getConnection();
		HashMap<String, Object> hmap = rDAO.selectOne(con, rno);
		
		int result = rDAO.deleteReview(con, rno);
		
		if(result > 0) {
			ArrayList<Attachment> list = (ArrayList<Attachment>)hmap.get("attachment");
			
			for (Attachment at : list) {
				File f = new File(savePath + at.getOriginname());
				f.delete();
			}
			
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}
	
	
	
	
	
	
}
