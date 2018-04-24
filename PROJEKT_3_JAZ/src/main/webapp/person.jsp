<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PERSON FORM</title>
</head>
	<body>
		
		<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"/>
		<jsp:useBean id="loan" class= "domain.LoanApplication" scope="session"></jsp:useBean>
		
		<jsp:setProperty property="amount" name="parameters" param="amount"/>
		<jsp:setProperty property="installmentCount" name="parameters" param="installmentCount"/>
		
		<!-- Metody wyświetlania danych z beana -->
		################# Pierwsza metoda wyświetlania ###############<br/>
		Numer Wniosku: <jsp:getProperty property="number" name="loan"/><br/>
		Wnioskowana Kwota:<jsp:getProperty property="amount" name="parameters"/><br/>
		################# Druga metoda wyświetlania ##################<br/>
		Numer Wniosku: ${loan.number}<br/>
		Wnioskowana kwota: ${parameters.amount}<br/> 
		#############################################################<br/> <br/> 
	
	
	<form action= "address.jsp">
		<label>Imie: <input type="text" id="firstName" name="firstName"/></label><br/>
		<label>Nazwisko: <input type="text" id="surname" name="surname"/></label><br/>
		<label>Nr PESEL: <input type="text" id="pesel" name="pesel"/></label><br/>
		<input type ="submit" value="nastepny krok"/>
		<a href="index.jsp"><input type="button" value="Back to Main"></a>
	</form>
			
	</body>
</html>

