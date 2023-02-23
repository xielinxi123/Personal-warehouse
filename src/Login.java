import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML>");
        out.println("<HTML>");
        out.println("  <HEAD><TITLE>login</TITLE></HEAD>");
        out.println("  <BODY>");
        out.print("    this is login page");
        out.print(this.getClass());
        out.println("  </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML>");
        out.println("<HTML>");
        out.println("  <HEAD><TITLE>login</TITLE></HEAD>");
        out.println("  <BODY>");
        out.print("    this is login page");
        out.print(this.getClass());
        out.println("  </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();
    }
}
