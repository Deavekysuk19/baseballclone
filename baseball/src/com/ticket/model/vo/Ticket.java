package com.ticket.model.vo;

import java.io.Serializable;

public class Ticket implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private int ticketNo;
	private String seat;
	private int userNo;
	private String day;
	private int stadiumId;
	private int price;
	private String soldOut;
	private String stadium;
	
	
	public Ticket() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Ticket(String seat, int userNo, String day, int stadiumId, int price, String stadium) {
		super();
		this.seat = seat;
		this.userNo = userNo;
		this.day = day;
		this.stadiumId = stadiumId;
		this.price = price;
		this.stadium = stadium;
	}


	public Ticket(int ticketNo, String seat, int userNo, String day, int stadiumId, int price, String soldOut,
			String stadium) {
		super();
		this.ticketNo = ticketNo;
		this.seat = seat;
		this.userNo = userNo;
		this.day = day;
		this.stadiumId = stadiumId;
		this.price = price;
		this.soldOut = soldOut;
		this.stadium = stadium;
	}


	public int getTicketNo() {
		return ticketNo;
	}


	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}


	public String getSeat() {
		return seat;
	}


	public void setSeat(String seat) {
		this.seat = seat;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	public int getStadiumId() {
		return stadiumId;
	}


	public void setStadiumId(int stadiumId) {
		this.stadiumId = stadiumId;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getSoldOut() {
		return soldOut;
	}


	public void setSoldOut(String soldOut) {
		this.soldOut = soldOut;
	}


	public String getStadium() {
		return stadium;
	}


	public void setStadium(String stadium) {
		this.stadium = stadium;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Ticketing [ticketNo=" + ticketNo + ", seat=" + seat + ", userNo=" + userNo + ", day=" + day
				+ ", stadiumId=" + stadiumId + ", price=" + price + ", soldOut=" + soldOut + ", stadium=" + stadium
				+ "]";
	}
	
	
	
	
}
