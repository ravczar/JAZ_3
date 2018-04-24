<%@page import="domain.LoanApplication" %>
<%@page import="domain.LoanParameters" %>
<%@page import="java.util.ArrayList" %>
<%@page import="service.LoanService" %>
<%@ page import="domain.Address"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wyświetlanie zgłoszeń</title>
</head>
<body>

<jsp:useBean id="loanService" class="service.LoanService" scope="application"/>
<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"/>
<jsp:useBean id="person" class="domain.Person" scope="session"/>
<jsp:useBean id="address" class="domain.Address" scope="session"/>

<jsp:setProperty property="*" name="address" />
	<% 
		loan.setParameters(parameters);
		loan.setPerson(person);
		loan.setAddress(address);
		loanService.add(loan);
	%>
	

<table border="1px solid black" bgcolor="#ffffcc">
   <thead>
      <tr>
         <th>Wniosek NO </th> <th>Imie </th> <th>Nazwisko </th> <th>Kwota </th> <th>Ilość Rat </th> <th>MIASTO </th> <th>KOD </th> <th>ULICA </th> <th>Nr domu </th> <th>Nr lokal </th> <th>Telefon NO. </th>
      </tr>
   </thead>
     <tbody>
   					<%
					for(LoanApplication loanApplication : loanService.getAll()){
					%>

					<tr>
									<th><%=loanApplication.getNumber() %> </th>
									<th><%=loanApplication.getPerson().getFirstName() %> </th>
									<th><%=loanApplication.getPerson().getSurname() %> </th>
									<th><%=loanApplication.getParameters().getAmount() %> </th>
									<th><%=loanApplication.getParameters().getInstallmentCount()%> </th>
									<th><%=loanApplication.getAddress().getCity()%> </th>
									<th><%=loanApplication.getAddress().getZipCode()%> </th>
									<th><%=loanApplication.getAddress().getStreet()%> </th>
									<th><%=loanApplication.getAddress().getHouseNumber()%> </th>
									<th><%=loanApplication.getAddress().getLocalNumber()%> </th>
									<th><%=loanApplication.getAddress().getPhoneNumber()%> </th>							
					</tr>
					<%
					}
					%>
     </tbody>
</table>

<p><a href="index.jsp"><input type="button" value="Back to Main"></a></p>
</body>
</html>