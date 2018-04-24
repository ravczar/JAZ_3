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


@WebFilter("/person.jsp")
public class personFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) request).getSession(true);
		HttpServletResponse responsE = (HttpServletResponse) response;
			
		if (request.getParameter("amount") == null || request.getParameter("amount").equals("") || request.getParameter("installmentCount") == null|| request.getParameter("installmentCount").equals("")) {
		responsE.sendRedirect("/loanParameters.jsp");
		}
		if (session.getAttribute("formNo") == null) {
			responsE.sendRedirect("/loanParameters.jsp");
		}
		
		session.setAttribute("PersonFIXED", "ok");

		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

}
}
