package com.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {

	private static final long serialVersionUID = 7790L;
	
	private int bno;
	private String btitle;
	private String bcontent;
	private String bwriter;
	private int bcount;
	private Date bdate;
	private String bteamname;
	private String boardfile;
	
	public Board() {super();}

	public Board(int bno, String btitle, String bcontent, String bwriter, int bcount, Date bdate, String bteamname,
			String boardfile) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bwriter = bwriter;
		this.bcount = bcount;
		this.bdate = bdate;
		this.bteamname = bteamname;
		this.boardfile = boardfile;
	}

	public Board(String btitle, String bcontent, String bwriter, String bteamname, String boardfile) {
		super();
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bwriter = bwriter;
		this.bteamname = bteamname;
		this.boardfile = boardfile;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public int getBcount() {
		return bcount;
	}

	public void setBcount(int bcount) {
		this.bcount = bcount;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public String getBteamname() {
		return bteamname;
	}

	public void setBteamname(String bteamname) {
		this.bteamname = bteamname;
	}

	public String getBoardfile() {
		return boardfile;
	}

	public void setBoardfile(String boardfile) {
		this.boardfile = boardfile;
	}
	
	
	
	
	
}
