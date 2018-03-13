import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class check extends HttpServlet {
    protected void doPost( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();



        String username = request.getParameter("username");
        String pass = request.getParameter("pwd");



        if(Valid.checkUser(username, pass))
        {

//            RequestDispatcher rs = request.getRequestDispatcher("Welcome.jsp");
            HttpSession session=request.getSession ();
            session.setAttribute ( "username",username );
//            rs.forward (request, response;);

            response.sendRedirect ( "Welcome.jsp" );
        }
        else
        {
            out.println("Username or Password incorrect");
            RequestDispatcher rs = request.getRequestDispatcher("index.html");
            rs.include(request, response);
//            response.sendRedirect ( "index.html" );
        }
    }
}