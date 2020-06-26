package com.boardcomment.model.vo;

import java.sql.Date;

public class BComment {

	private int bcno;
	private int bno;
	private String bccontent;
	private String bcwriter;
	private Date bcdate;
	private int bclevel;
	private int refbcno;
	
	public BComment() {
		super();
	}
	
	

	public BComment(int bcno, int bno, String bccontent, String bcwriter, Date bcdate, int bclevel, int refbcno) {
		super();
		this.bcno = bcno;
		this.bno = bno;
		this.bccontent = bccontent;
		this.bcwriter = bcwriter;
		this.bcdate = bcdate;
		this.bclevel = bclevel;
		this.refbcno = refbcno;
	}
	
	

	public BComment(int bno, String bccontent, String bcwriter, int bclevel, int refbcno) {
		super();
		this.bno = bno;
		this.bccontent = bccontent;
		this.bcwriter = bcwriter;
		this.bclevel = bclevel;
		this.refbcno = refbcno;
	}



	public int getBcno() {
		return bcno;
	}

	public void setBcno(int bcno) {
		this.bcno = bcno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBccontent() {
		return bccontent;
	}

	public void setBccontent(String bccontent) {
		this.bccontent = bccontent;
	}

	public String getBcwriter() {
		return bcwriter;
	}

	public void setBcwriter(String bcwriter) {
		this.bcwriter = bcwriter;
	}

	public Date getBcdate() {
		return bcdate;
	}

	public void setBcdate(Date bcdate) {
		this.bcdate = bcdate;
	}

	public int getBclevel() {
		return bclevel;
	}

	public void setBclevel(int bclevel) {
		this.bclevel = bclevel;
	}

	public int getRefbcno() {
		return refbcno;
	}

	public void setRefbcno(int refbcno) {
		this.refbcno = refbcno;
	}
	
	
	
	
	
}
