package com.review.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.common.MyRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import com.review.model.service.ReviewService;
import com.review.model.vo.Attachment;
import com.review.model.vo.Review;

/**
 * Servlet implementation class RInsert
 */
@WebServlet("/rInsert.rv")
public class RInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("error-msg", "멀티 파트 형식으로 보내주세요~");
			request.getRequestDispatcher("views/common/errorPage.jsp")
			       .forward(request, response);
		}
		
		
		int maxSize = 1024 * 1024 * 10;
		
	
		String root = request.getServletContext().getRealPath("/resources");
		String savePath = root + "/reviewUploadFiles/"; 	
		
		MultipartRequest mre = new MultipartRequest(
									request, savePath, maxSize,
									"UTF-8");
		
		/* ArrayList<String> saveFiles = new ArrayList<String>(); */
		ArrayList<String> originFiles = new ArrayList<String>();
		

		Enumeration<String> files = mre.getFileNames();
		
		while(files.hasMoreElements()) {
			
			String name = files.nextElement();
			
			/* saveFiles.add(mre.getFilesystemName(name)); */
			originFiles.add(mre.getOriginalFileName(name)); 
			
		}
		
		Review r = new Review();
		
		r.setRtitle(mre.getParameter("title"));
		r.setRcontent(mre.getParameter("content"));
		r.setRwriter(mre.getParameter("writer"));
		r.setSno(mre.getParameter("seatnum"));
		r.setRteamname(mre.getParameter("teamname"));
	
		
		
		ArrayList<Attachment> list = new ArrayList<Attachment>();
		
		for(int i = originFiles.size() - 1 ; i >= 0 ; i--) {
			
			Attachment at = new Attachment();
			
			at.setFilepath(savePath);
			at.setOriginname(originFiles.get(i));
			
			list.add(at);
		}
		
		ReviewService rs = new ReviewService();
		int result = rs.insertReview(r, list);
		
		if(result > 0) {
			response.sendRedirect("selectList.rv");
		} else {
			request.setAttribute("error-msg", "사진 게시글 등록 실패");
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
