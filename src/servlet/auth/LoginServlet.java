package servlet.auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.util.logging.resources.logging;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
       
	private static final long serialVersionUID = 5507869635662534577L;
	Logger log = Logger.getLogger("Servlet");
		
	
	public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("/Dash/login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Map<String, String[]> a = request.getParameterMap();
		
		for (Map.Entry<String, String[]> entre : a.entrySet()) {
			for ( String elem: entre.getValue() ) {
				log.info(elem);
			}
		}
		
		if( request.getParameter("email").equals("admin") && request.getParameter("password").equals("admin")){
				out.println("SUCCESSS");
		}
		else {
			out.println("ECHEC !!!");
			try {
				wait(400000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("index.jsp");
		}
		
		
		//request.getSession().setAttribute(arg0, arg1);
		
		
		response.sendRedirect("header.jsp");
	}

}
