package com.member.model.service;

import static com.common.JDBCTemplate.*;

import java.sql.Connection;

import com.common.exception.MemberException;
import com.member.model.dao.MemberDAO;
import com.member.model.vo.Member;

public class MemberService {
	
	private Connection con;
	private MemberDAO mDAO = new MemberDAO();

	public Member selectMember(Member m) throws MemberException {
		con = getConnection();
		Member result = mDAO.selectMember(con, m);
		
		close(con);
		
		if(result == null) throw new MemberException("[Service에러] : 로그인 실패!");
		
		return result;
		
	}

	public int insertMember(Member m) throws MemberException {
		con = getConnection();
		int result = mDAO.insertMember(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;		
		
	}
	
	public int updateMember(Member m) throws MemberException {
		con = getConnection();
		
		int result = mDAO.updateMember(con, m);
		
		if( result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;		
	}
	
	public int deleteMember(String userid) throws MemberException {
		con = getConnection();
		int result = mDAO.deleteMember(con, userid);
		
		if( result > 0 ) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
	}
	
	public int idDupCheck(String uid) {
		con = getConnection();
		
		int result = mDAO.idDupCheck(con, uid);
		
		close(con);
		
		return result;
	}

	public Member otherSelectMember(Member m) throws MemberException {
		con = getConnection();

		Member result = mDAO.otherSelectMember(con, m);
		
		close(con);
		
		if(result == null) throw new MemberException("[Service에러] : 다른 방식 로그인 실패!");
		
		return result;
	}

	public int updatePwdMember(Member m) throws MemberException {
		con = getConnection();
		
		int result = mDAO.updatePwdMember(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	

}
