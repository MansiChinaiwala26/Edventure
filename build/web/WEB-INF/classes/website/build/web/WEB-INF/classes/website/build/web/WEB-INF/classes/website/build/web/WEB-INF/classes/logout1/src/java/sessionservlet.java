import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class sessionservlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String n=request.getParameter("name");
            out.print("Welcome: "+n );
            HttpSession session=request.getSession();
            session.setAttribute("uname", n);
            out.print("<a href='SessionTrack'>Check Session Tracking</a>");
         out.close();
        
            } 
        catch(Exception e) {
              System.out.println(e);
           }
    }
}
    
