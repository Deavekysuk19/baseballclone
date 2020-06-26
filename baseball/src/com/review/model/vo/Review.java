package com.review.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

import com.review.model.vo.Attachment;

public class Review implements Serializable{

	private static final long serialVersionUID = 202006101L;
	
	private ArrayList<Attachment> attachments;


	private int rno;
	private String sno;
	private String rtitle;
	private String rcontent;
	private String rwriter;
	private int rcount;
	private Date rdate;
	private String rteamname;
	private String reviewfile;
	
	public Review() {super();}

	
	public Review(int rno, String sno, String rtitle, String rwriter, int rcount, String rteamname, String reviewfile) {
		super();
		this.rno = rno;
		this.sno = sno;
		this.rtitle = rtitle;
		this.rwriter = rwriter;
		this.rcount = rcount;
		this.rteamname = rteamname;
		this.reviewfile = reviewfile;
	}


	public Review(int rno, String sno, String rtitle, String rcontent, String rwriter, int rcount, Date rdate,
			String rteamname, String reviewfile) {
		super();
		this.rno = rno;
		this.sno = sno;
		this.rtitle = rtitle;
		this.rcontent = rcontent;
		this.rwriter = rwriter;
		this.rcount = rcount;
		this.rdate = rdate;
		this.rteamname = rteamname;
		this.reviewfile = reviewfile;
	}

	public Review(String sno, String rtitle, String rcontent, String rwriter, String rteamname, String reviewfile) {
		super();
		this.sno = sno;
		this.rtitle = rtitle;
		this.rcontent = rcontent;
		this.rwriter = rwriter;
		this.rteamname = rteamname;
		this.reviewfile = reviewfile;
	}
	
	public ArrayList<Attachment> getAttachments() {
		return attachments;
	}

	public void setAttachments(ArrayList<Attachment> attachments) {
		this.attachments = attachments;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getRtitle() {
		return rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public String getRwriter() {
		return rwriter;
	}

	public void setRwriter(String rwriter) {
		this.rwriter = rwriter;
	}

	public int getRcount() {
		return rcount;
	}

	public void setRcount(int rcount) {
		this.rcount = rcount;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	public String getRteamname() {
		return rteamname;
	}

	public void setRteamname(String rteamname) {
		this.rteamname = rteamname;
	}

	public String getReviewfile() {
		return reviewfile;
	}

	public void setReviewfile(String reviewfile) {
		this.reviewfile = reviewfile;
	}
	
	
	
	
	
	
}
