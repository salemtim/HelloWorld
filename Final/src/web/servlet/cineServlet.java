package web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cineServlet")
public class cineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public cineServlet() {
        super();
        
    }
	protected void doGet(HttpServletRequest requ, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		requ.setCharacterEncoding("utf-8");
		resp.getWriter().print("Hello các bạn");
		
		String name = requ.getParameter("ten");
		int age = Integer.parseInt(requ.getParameter("tuoi"));
		
		requ.setAttribute("ten", name);
		requ.setAttribute("tuoi", age);
		requ.setAttribute("text", "good");
		//Gọi trang
		requ.getRequestDispatcher("Phim.jsp").forward(requ, resp);
	}
	protected void doPost(HttpServletRequest requ, HttpServletResponse resp) throws ServletException, IOException {
		requ.setAttribute("text", "good");
		requ.getRequestDispatcher("Phim.jsp").forward(requ, resp);
	}

}
