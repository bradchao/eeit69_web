package tw.brad.tutor;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad13")
public class Brad13 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String src = "C:\\Users\\User\\git\\repository_eeit69_web\\Web5\\src\\main\\webapp\\upload\\coffee.jpg";
		
		String str = request.getParameter("str");
		
		BufferedImage img = ImageIO.read(new File(src));
		Graphics2D g2d = img.createGraphics();
		
		g2d.setColor(Color.RED);
		Font font = new Font(null, Font.BOLD, 64);

		AffineTransform tran = new AffineTransform();
		for (int i=0; i<str.length(); i++) {
			String s = str.substring(i, i+1);
			double ang = Math.random()*60 - 30;
			tran.rotate(Math.toRadians(ang));
			Font font2 = font.deriveFont(tran);
			g2d.setFont(font2);
			g2d.drawString(s, 100 + (i*40), 200);
			tran.rotate(Math.toRadians(ang*-1));
		}
		
		response.setContentType("image/jpeg");
		ServletOutputStream out = response.getOutputStream();
		ImageIO.write(img, "jpeg", out);
		response.flushBuffer();
		
		FileOutputStream fout = 
			new FileOutputStream("C:\\Users\\User\\git\\repository_eeit69_web\\Web5\\src\\main\\webapp\\upload\\new.jpg");
		ImageIO.write(img, "jpeg", fout);
		fout.flush();
		fout.close();
		
		
		
	
	
	}

}
