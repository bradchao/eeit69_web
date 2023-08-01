package tw.brad.tutor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad09")
@MultipartConfig(
		location = "C:\\Users\\User\\git\\repository_eeit69_web\\Web5\\src\\main\\webapp\\upload"
		)
public class Brad09 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Part part = request.getPart("upload");
		System.out.println(part.getSize());
		System.out.println(part.getContentType());
		System.out.println(part.getName());
		System.out.println(part.getSubmittedFileName());
		
		if (part.getSize() > 0) {
			part.write(part.getSubmittedFileName());
		}
		
		
	}

}
