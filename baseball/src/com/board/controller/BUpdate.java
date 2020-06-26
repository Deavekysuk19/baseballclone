package com.board.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.board.model.service.BoardService;
import com.board.model.vo.Board;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class BUpdate
 */
@WebServlet("/bUpdate.cb")
public class BUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardService bs = new BoardService();
		
		int maxSize = 1024 * 1024 * 10; 
		
		if(! ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("error-msg", 
					             "multipart로 전송되지 않았습니다.");
			
			request.getRequestDispatcher("views/common/errorPage.jsp")
			       .forward(request, response);
	
		}
		String root = request.getServletContext().getRealPath("/");
		String savePath = root + "resources/boardUploadFiles";
		
		MultipartRequest mre = new MultipartRequest(
				request, savePath, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());
		
		int bno = Integer.parseInt(mre.getParameter("bno"));
		String title = mre.getParameter("title");
		String content = mre.getParameter("content");
		String teamname = mre.getParameter("teamname");
		String fileName = mre.getFilesystemName("file");
		
		System.out.println(bno);
		System.out.println(title);
		System.out.println(content);
		System.out.println(teamname);
		System.out.println(fileName);
		
		Board b = bs.selectOne(bno);
		
		if(fileName != null && fileName.length() > 0) {

			if(b.getBoardfile() != null) {
				File originFile = new File(savePath+"/"+b.getBoardfile());
				System.out.println("파일 삭제 확인 : " + originFile.delete());
			}
			
			b.setBoardfile(fileName);
		}
		
		b.setBtitle(title);
		b.setBcontent(content);
		b.setBteamname(teamname);
		
		int result = new BoardService().updateBoard(b);
		
		if(result > 0) {
			response.sendRedirect("selectList.cb");
		} else {
			request.setAttribute("error-msg", "게시글 수정 실패!");
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
