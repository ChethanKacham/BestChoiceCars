<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car ByBrand</title>
</head>
<body bgcolor="#E6E6FA">
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>
<form action="<%=resultPath%>/selectedbrand" method="post">
<h1>BestChoice Cars</h1>
<h3>Choose Brand to find avaiable models</h3>
<table border="1">
<tr>
<td>
Brand:
</td>
<td>
<select name="BrandName">
  <option value="Hyundai">Hyundai</option>
  <option value="Tata">Tata</option>
  <option value="Maruthi Suzuki">Maruthi Suzuki</option>
  <option value="Honda">Honda</option>
</select><br/>
</td>
</tr>
<tr>
<td>
<input type="submit" value="Find Models"/>
<a href="<%=resultPath%>/">Back</a>
</td>
</tr>
</table>
</form>
</body>
</html>