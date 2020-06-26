package com.review.model.vo;

import java.io.Serializable;

import java.sql.Date;

public class Attachment implements Serializable{

	private static final long serialVersionUID = 202006100L;
	
	private int fno;
	private int rno;
	private String originname;
	private String filepath;
	private int flevel;
	private Date uploaddate;
	
	public Attachment() {super();}

	public Attachment(int fno, int rno, String originname, String filepath, int flevel,
			Date uploaddate) {
		super();
		this.fno = fno;
		this.rno = rno;
		this.originname = originname;
		this.filepath = filepath;
		this.flevel = flevel;
		this.uploaddate = uploaddate;
	}

	public Attachment(String originname, String filepath) {
		super();
		this.originname = originname;
		this.filepath = filepath;
	}

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}


	public String getOriginname() {
		return originname;
	}

	public void setOriginname(String originname) {
		this.originname = originname;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public int getFlevel() {
		return flevel;
	}

	public void setFlevel(int flevel) {
		this.flevel = flevel;
	}

	public Date getUploaddate() {
		return uploaddate;
	}

	public void setUploaddate(Date uploaddate) {
		this.uploaddate = uploaddate;
	}


}
