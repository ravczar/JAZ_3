<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADDRESS FORM</title>
</head>
<body>
		<jsp:useBean id="loan" class="domain.LoanApplication" scope="session" />
		<jsp:useBean id="person" class="domain.Person" scope="session" />
		<jsp:setProperty property="*" name="person" />
		
		
		
			Wniosek NO.: ${loan.number}<br/>
			Wnioskodawca : ${person.firstName} ${person.surname}<br/><br/>
			
			

	<form action="success.jsp">
	 <fieldset>
	    <legend>Podaj dane adresowe: </legend>
		<label>Miasto: <input type="text" id="city" name="city" /></label><br />
		<label>ZIP: <input type="text" id="zipCode" name="zipCode" /></label> <br /> 
		<label>Ulica: <input type="text" id="street" name="street" /></label> <br /> 
		<label>Numer domu: <input type="text" id="houseNumber" name="houseNumber" /></label> <br /> 
		<label>Numer lokalu: <input type="text" id="localNumber" name="localNumber" /></label> <br /> 
		<!-- Chcialem zmieniac typy inputu np. na "tel" dla numeru telefonu, ale eclipse wywala "undefined atribute value" zostaje rpzy text-->
		<label>Numer telefonu: <input type="text" id="phoneNumber" name="phoneNumber" /></label> <br /> 
		<br/>
		<input type="submit" value="nastepny krok" />
		<input type="reset" value="reset">
		<a href="index.jsp"><input type="button" value="Back to Main"></a>
	 </fieldset>	
	</form>

</body>
</html>