package filter;

import javax.servlet.Filter;
import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;

import javax.servlet.annotation.WebFilter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/adress.jsp")
public class addressFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
	  HttpSession session = ((HttpServletRequest) request).getSession(true);
	  HttpServletResponse responsE = (HttpServletResponse) response;
			
		if (
				request.getParameter("firstName") == null || 
				request.getParameter("firstName").equals("") || 
				request.getParameter("surname") == null || 
				request.getParameter("surname").equals("") || 
				request.getParameter("pesel") == null || 
				request.getParameter("pesel").equals("")
			) 
		{
			responsE.sendRedirect("/person.jsp");
		}
		
		if (session.getAttribute("PersonFIXED") == null) {
			responsE.sendRedirect("/person.jsp");
		}
		session.setAttribute("AddressFIXED", "ok");
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

}
}
