package com.kh.test.model;

import java.sql.Date;

public class Test {
	private int tno;
	private String writer;
	private String title;
	private String content;
	private Date date;
	
	public Test() {
		super();
	}

	public Test(int tno, String writer, String title, String content, Date date) {
		super();
		this.tno = tno;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.date = date;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
