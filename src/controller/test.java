package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Tao ra doi tuong out
		PrintWriter out = response.getWriter();
		out.print("<html><body>Xin chao Sevlet</body></html>");
		//Da co san request va response
		//Tao ra 1 doi session
		HttpSession session=request.getSession();
		session.setAttribute("s", (long)4*4);
		//Dieu huong ve trang vd.jsp
		//Tao ra bien request de gui ve vd.jsp
		request.setAttribute("ht", "Le Thanh Nam");
		request.setAttribute("tong", (long)4*4);
		String[] ds= {"haha","hy","hue","dada"};
		request.setAttribute("dsht", ds);
		//Dieu huong ve trang vd.jsp va truyen 3 bien: ht,tong, dsht
		RequestDispatcher rd = request.getRequestDispatcher("vd.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
