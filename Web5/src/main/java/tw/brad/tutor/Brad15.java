package tw.brad.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad15")
public class Brad15 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int max = 0;
		try {
			max = Integer.parseInt(request.getParameter("max"));
		}catch(Exception e) {}
		
		PrintWriter out = response.getWriter();
		out.print((int)(Math.random()*max+1));
	
	}

}
