<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car ByPrice</title>
</head>
<body bgcolor="#E6E6FA">
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>
<h1>Best Choice Cars</h1>
<h3>Choose price range to select cars</h3>
<form action="<%=resultPath%>/selectprice" method="post">
<table>
<tr>
<td>
<input type="radio" name="price" value="499999" checked><5lacks<br>
</td>
</tr>
<tr>
<td>
<input type="radio" name="price" value="500000">>5lacks<br>
</td>
</tr>
<tr>
<td>
<input type="submit" value="Find Your Car"/>
<a href="<%=resultPath%>/">Back</a>
</td>
</tr>
</table>
</form>
</body>
</html>