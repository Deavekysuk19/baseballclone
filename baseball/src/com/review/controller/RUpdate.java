package com.review.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import com.oreilly.servlet.MultipartRequest;
import com.review.model.service.ReviewService;
import com.review.model.vo.Attachment;
import com.review.model.vo.Review;

/**
 * Servlet implementation class RUpdate
 */
@WebServlet("/rUpdate.rv")
public class RUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReviewService rs = new ReviewService();
		
		if(!ServletFileUpload.isMultipartContent(request)) {
		}
		
		int maxSize = 1024 * 1024 * 10;
		
		String root = request.getServletContext()
				     .getRealPath("/resources");
		
		String savePath = root + "/reviewUploadFiles/";
		
		MultipartRequest mre = new MultipartRequest(
											request, savePath,
											maxSize, "UTF-8");
		

		int rno = Integer.parseInt(mre.getParameter("rno"));
		System.out.println("rno : " + rno);
		
		HashMap<String, Object> hmap = rs.selectOne(rno);
		ArrayList<String> originFiles = new ArrayList<String>();

		Enumeration<String> files = mre.getFileNames();
		
		while(files.hasMoreElements()) {
			
			String name = files.nextElement();
			originFiles.add(mre.getOriginalFileName(name));
		}
		
		// 이전 썸네일 게시글의 내용 변경하기
		Review r = (Review)hmap.get("review");
		
		r.setRtitle(mre.getParameter("title"));
		r.setRcontent(mre.getParameter("content"));
		r.setSno(mre.getParameter("seatnum"));
		r.setRteamname(mre.getParameter("teamname"));
		
		ArrayList<Attachment> list
		   = (ArrayList<Attachment>)hmap.get("attachment");

		for(int i = originFiles.size() - 1 ; i >= 0 ; i--) {
			int j = originFiles.size() - i - 1;
			
			if(originFiles.get(i) != null) {
				new File(savePath + list.get(j).getOriginname()).delete();
				
				list.get(j).setFilepath(savePath);
				list.get(j).setOriginname(originFiles.get(i));
			}
		}
		
		int result = rs.updateReview(r, list);
		
		if( result > 0) {
			response.sendRedirect("selectList.rv");
		} else {
			request.setAttribute("msg", "파일 전송 실패!");
			
			request.getRequestDispatcher("views/common/errorPage.jsp")
			.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
