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
 * Servlet implementation class maytinhcontroller
 */
@WebServlet("/maytinhcontroller")
public class maytinhcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public maytinhcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String aa=request.getParameter("aa");
		String bb=request.getParameter("bb");
		String nut=request.getParameter("but1");
		long a,b,kq=0;
		a= Long.parseLong("txta");
		b= Long.parseLong("txtb");
		if(nut.equals("+")){
			kq=a+b;
			}
		if(nut.equals("-")){
			kq=a-b;
			}
		request.setAttribute("aa", a);
		request.setAttribute("bb", b);
		request.setAttribute("kqua", kq);
		//Tra ket qua ve
		RequestDispatcher rd=request.getRequestDispatcher("maytinhcuchuoi.jsp");
		rd.forward(request, response);}
	

		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
