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
 * Servlet implementation class dangnhapcontroller
 */
@WebServlet("/dangnhapcontroller")
public class dangnhapcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		// lay ve txtun,txtpass,kt
		String un = request.getParameter("txtun");
		String pass = request.getParameter("txtpass");
		String kt = request.getParameter("kt");
		if(kt!=null)
			out.print("Gia tri cua kt "+kt);
		else
		if(un==null) { //neu chay lan dau
			RequestDispatcher rd= request.getRequestDispatcher("dangnhap.jsp");
			rd.forward(request, response);//chay ve dang nhap
		}
		else// neu da nhap un thi chuyen qua trang t1
		{
			HttpSession session= request.getSession();
			session.setAttribute("un",un);
			RequestDispatcher rd= request.getRequestDispatcher("t1.jsp");
			rd.forward(request, response);
			
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
