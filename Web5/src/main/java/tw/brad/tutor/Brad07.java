package tw.brad.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad07")
public class Brad07 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String x, y, r, op;
		x = y = r = op = "";
		if (request.getParameter("x") != null) {
			x = request.getParameter("x");
			y = request.getParameter("y");
			op = request.getParameter("op");
			
			int result, mod;
			
			switch (op) {
				case "1": 
					result = Integer.parseInt(x) + Integer.parseInt(y);
					r = result + "";
					break;
				case "2": 
					result = Integer.parseInt(x) - Integer.parseInt(y);
					r = result + "";
					break;
				case "3": 
					result = Integer.parseInt(x) * Integer.parseInt(y);
					r = result + "";
					break;
				case "4": 
					result = Integer.parseInt(x) / Integer.parseInt(y);
					mod = Integer.parseInt(x) % Integer.parseInt(y);
					r = result + " ...... " + mod;
					break;
			}
		}
		//---------------------------------------------------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<form>");
		out.printf("<input name='x' value='%s'>\n", x);
		out.println("<select name='op'>\n");
		out.printf("<option value='1' %s>+</option>\n", (op.equals("1")?"selected":""));
		out.printf("<option value='2' %s>-</option>\n", (op.equals("2")?"selected":""));
		out.printf("<option value='3' %s>x</option>\n", (op.equals("3")?"selected":""));
		out.printf("<option value='4' %s>/</option>\n", (op.equals("4")?"selected":""));
		out.println("</select>");
		out.printf("<input name='y' value='%s'>\n", y);
		out.println("<input type=\"submit\" value=\"=\">");
		out.println(r);
		out.println("</form>");
		
	}

}
