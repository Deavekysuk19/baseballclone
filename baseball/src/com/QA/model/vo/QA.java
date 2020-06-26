package com.QA.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class QA  implements Serializable{

	private static final long serialVersionUID = 2613L;
	
	private int qno;
	private String qtitle;
	private String qcontent;
	private String qwriter;
	private int qcount;
	private Date qdate;
	
	public QA() {super();}

	public QA(int qno, String qtitle, String qcontent, String qwriter, int qcount, Date qdate) {
		super();
		this.qno = qno;
		this.qtitle = qtitle;
		this.qcontent = qcontent;
		this.qwriter = qwriter;
		this.qcount = qcount;
		this.qdate = qdate;
	}
	

	public QA(String qtitle, String qcontent, String qwriter) {
		super();
		this.qtitle = qtitle;
		this.qcontent = qcontent;
		this.qwriter = qwriter;
	}

	public int getQno() {
		return qno;
	}

	public void setQno(int qno) {
		this.qno = qno;
	}

	

	public String getQtitle() {
		return qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public String getQwriter() {
		return qwriter;
	}

	public void setQwriter(String qwriter) {
		this.qwriter = qwriter;
	}

	public int getQcount() {
		return qcount;
	}

	public void setQcount(int qcount) {
		this.qcount = qcount;
	}

	public Date getQdate() {
		return qdate;
	}

	public void setQdate(Date qdate) {
		this.qdate = qdate;
	}
	
}
