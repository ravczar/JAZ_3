<%@page import="javax.servlet.http.HttpSession" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LOANS START PAGE</title>
</head>
<body>

  <fieldset>
	<legend>Witaj na stonie <strong>Pożyczek u Bronka</strong>-<em>"Komornik to Nasz przyjaciel</em>" </legend><br/><br/>
	<input type="radio" id ="wantsLoan" name="wantsLoan" value="redirect"> Chcę złożyć wniosek<br> <br/><br/>
	
	<p><a href="loanParameters.jsp"><input type="button" value="Przejdz dalej"></a></p>
  </fieldset>
  
</body>
</html>