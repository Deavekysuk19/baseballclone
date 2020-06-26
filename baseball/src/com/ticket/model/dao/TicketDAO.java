package com.ticket.model.dao;

import static com.common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.ticket.model.vo.Ticket;

public class TicketDAO {
   private Properties prop;

   public TicketDAO() {
      prop = new Properties();

      String filePath = TicketDAO.class.getResource("/config/ticketing.properties").getPath();

      try {
         prop.load(new FileReader(filePath));

      } catch (IOException e) {
         e.printStackTrace();
      }

   }


   public ArrayList<Ticket> selectList(Connection con, int userno) {
      ArrayList<Ticket> list = null;
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      String sql = prop.getProperty("selectTicket");
      
      try {
         pstmt = con.prepareStatement(sql);
         
         pstmt.setInt(1, userno);
   
         rset = pstmt.executeQuery();
      
         list = new ArrayList<Ticket>();
      
      while(rset.next()) {
         Ticket t = new Ticket();
         
         t.setTicketNo(rset.getInt("ticketno"));
         t.setSeat(rset.getString("seat"));
         t.setUserNo(rset.getInt("userno"));
         t.setDay(rset.getString("day"));
         t.setStadiumId(rset.getInt("stadiumid"));
         t.setPrice(rset.getInt("price"));
         t.setSoldOut(rset.getString("soldout"));
         t.setStadium(rset.getString("stadium"));
         
         list.add(t);
      }
      
      }catch(SQLException e) {
         e.printStackTrace();
         
      }finally {
         close(rset);
         close(pstmt);
      }
      return list;
   }


   public int insertTicket(Connection con, Ticket t) {
      int result = 0;
      PreparedStatement pstmt = null;
      String sql = prop.getProperty("insertTicket");
      
      try {
         pstmt = con.prepareStatement(sql);
         /*
         
         pstmt.setDate(3, t.getDay());
         pstmt.setInt(4, t.getStadiumId());
         */

         pstmt.setString(1, t.getSeat());
         pstmt.setInt(2, t.getUserNo());
         pstmt.setString(3, t.getDay());
         pstmt.setInt(4, t.getPrice());
         pstmt.setString(5, t.getStadium());
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt);
      }
   
      return result;
   }
   
   public int deleteTicket(Connection con, int userno) {
      int result = 0;
      PreparedStatement pstmt = null;
      
      String sql = prop.getProperty("deleteTicket");
      
      try {
         pstmt = con.prepareStatement(sql);
         
         pstmt.setInt(1, userno);
         result = pstmt.executeUpdate();
         
      } catch(SQLException e) {
         
         e.printStackTrace();
      } finally {
         close(pstmt);
      }
      
      return result;
   }

   /*
   public Ticket selectOne(Connection con, int userno) {
      Ticket t = null;
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      
      String sql = prop.getProperty("selectOne");
      
      try {
         pstmt = con.prepareStatement(sql);
         
         pstmt.setInt(1, userno);
         
         rset = pstmt.executeQuery();
         
         if(rset.next()) {
            t = new Ticket();
            
            t.setTicketNo(rset.getInt("ticketNo"));
            t.setSeat(rset.getString("seat"));
            t.setUserNo(rset.getInt("userNo"));
            t.setDay(rset.getDate("day"));
            t.setStadiumId(rset.getInt("stadiumId"));
            t.setPrice(rset.getInt("price"));
            t.setSoldOut(rset.getString("soldOut"));
            t.setStadium(rset.getString("stadium"));
            
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return t;
   }
   */
   

}