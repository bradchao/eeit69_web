package tw.brad.tutor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.apis.Brad19M;

@WebServlet("/Brad18C")
public class Brad18C extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// 1. 接收參數
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		
		if (x != null && y != null) {
			
			// 2. 演算法
			try {
				Brad19M model = new Brad19M(x, y);
				int result = model.plus();
				
				request.setAttribute("x", x);
				request.setAttribute("y", y);
				request.setAttribute("result", result+"");
				request.setAttribute("view", "view2");
				
				// 3. 呈現 View
				RequestDispatcher dispatcher = request.getRequestDispatcher("Brad20V");
				dispatcher.forward(request, response);
			}catch(Exception e) {
				System.out.println(e);
			}
		}else {
			request.setAttribute("x", "");
			request.setAttribute("y", "");
			request.setAttribute("result", "");
			request.setAttribute("view", "view1");
			
			// 3. 呈現 View
			RequestDispatcher dispatcher = request.getRequestDispatcher("Brad20V");
			dispatcher.forward(request, response);
			
		}
		
	}

}
