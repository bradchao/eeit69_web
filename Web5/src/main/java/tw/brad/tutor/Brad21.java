package tw.brad.tutor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad21")
public class Brad21 extends HttpServlet {
	private Connection conn = null;
	public Brad21() {
		try {
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(
				"jdbc:mysql://localhost/iii", prop);
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String sql = "INSERT INTO cust (cname,tel,birthday)" + 
				" VALUES ('servlet2', '222','1999-02-03')";
			Statement stmt = conn.createStatement();
			int count = stmt.executeUpdate(sql);
			
			System.out.println("OK4:" + count);
		}catch(Exception e) {
			System.out.println(e);
		}
	
	
	}

}
