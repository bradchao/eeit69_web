package tw.brad.tutor;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad10")
@MultipartConfig(
		location = "C:\\Users\\User\\git\\repository_eeit69_web\\Web5\\src\\main\\webapp\\upload"
		)
public class Brad10 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String account = request.getParameter("account");
		System.out.println(account);
		String ip = request.getRemoteAddr();
		
		int i = 0;
		Collection<Part> parts = request.getParts();
		for (Part part : parts) {
//			System.out.println(part.getName());
//			System.out.println(part.getContentType());
//			System.out.println(part.getSize());
			
			System.out.println(part.getSubmittedFileName() + ":" + part.getContentType() + ":" + part.getSize() );
			if (part.getContentType() != null && part.getSize() > 0) {
				part.write(getUploadNameV2(ip, part.getSubmittedFileName(), i++));
				//System.out.println(getUploadName(ip, part.getSubmittedFileName(), i++));
				//part.write(part.getSubmittedFileName());
			}
		}
	}
	
	private String getUploadNameV2(String ip, String sname, int index) {
		return ip + "_" + index + "_" + sname;
	}
	
	private String getUploadName(String ip, String sname, int index) {
		ip = ip.replace(':', '_');
		String[] snames = sname.split("\\.");	// xxx.jpg, aaa.bbb.png, ccc
		String subname = "";
		if (snames.length > 1) {
			subname = "." + snames[snames.length - 1];
		}
		
		return "" + ip + "_" + index + subname;
	}

}
