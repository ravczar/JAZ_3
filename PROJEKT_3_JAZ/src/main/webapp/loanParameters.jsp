	<%@ page import="domain.LoanApplication"%>
	<%@page import="java.util.Random" %> 
	<%@page import="java.util.Date" %>
	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WNIOSEK FORM</title>
</head>
<body>

	<%!
		private Random generator = new Random();
	%>
	
	<%
		String number = "" + generator.nextInt();
	%>
	
	
		<jsp:useBean id="loan" class= "domain.LoanApplication" scope="session"/>
		<jsp:setProperty property="number" name="loan" value="<%=number %>"/>
		<jsp:setProperty property="date" name="loan" value="<%=new Date() %>"/>
	

	Wygenerowany numer wniosku: <%= loan.getNumber() %>
	<br/>
	Data wygenerowania: <%=loan.getDate() %>
	<br/>
	
	
<!--  -----------------Zapis do sesji  przez SCRYPTLET------------------------ -->
			<%
				session.setAttribute("formNo", loan.getNumber());
			%>
<!--  ----------------- http://duch.mimuw.edu.pl/~janusz/dydaktyka/2004-2005/info_zpp/prezentacje/jsp.html ------------------------ -->


	<form action= "person.jsp">
		<label>Wnioskowana kwota: <input type="text" id="amount" name="amount"/></label><br/>
		<label>Ilosc rat: <input type="text" id="installmentCount" name="installmentCount"/></label><br/>
		<input type ="submit" value="nastepny krok"/> <a href="index.jsp"><input type="button" value="Back to Main"></a>
	</form>
	
	
	
</body>
</html>