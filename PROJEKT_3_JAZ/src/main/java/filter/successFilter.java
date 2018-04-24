package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/success.jsp")
public class successFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpSession session = ((HttpServletRequest) request).getSession(true);
		HttpServletResponse resp = (HttpServletResponse) response;
		
		if (
				request.getParameter("city") == null || 
				request.getParameter("city").equals("") || 
				request.getParameter("zipCode") == null || 
				request.getParameter("zipCode").equals("") || 
				request.getParameter("street") == null || 
				request.getParameter("street").equals("") || 
				request.getParameter("houseNumber") == null || 
				request.getParameter("houseNumber").equals("") || 
				request.getParameter("localNumber") == null || 
				request.getParameter("localNumber").equals("") || 
				request.getParameter("phoneNumber") == null || 
				request.getParameter("phoneNumber").equals("")
			) 
		{
			resp.sendRedirect("/adress.jsp");
		}
		
		if (session.getAttribute("AddressFIXED") == null) {
			resp.sendRedirect("/adress.jsp");
		} 
		session.setAttribute("AllFIXED", "ok");
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}