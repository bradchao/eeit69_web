package tw.brad.tutor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad08")
public class Brad08 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		String gender = request.getParameter("gender");
		
		String[] hobbies = request.getParameterValues("hobby");
		
		System.out.println(account + ":" + passwd + ":" + gender);
		if (hobbies != null) {
			for(String hobby : hobbies) {
				System.out.println(hobby);
			}
		}
		
		response.setContentType("text/html; charset=utf-8");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
//		System.out.println("doPost()");
//		
//		request.setCharacterEncoding("UTF-8");
//		String account = request.getParameter("account");
//		String passwd = request.getParameter("passwd");
//		
//		System.out.println(account + ":" + passwd);
//		
//		response.setContentType("text/html; charset=utf-8");		
	}

}
