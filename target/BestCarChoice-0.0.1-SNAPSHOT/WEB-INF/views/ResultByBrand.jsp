<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result By Brand</title>
</head>
<body bgcolor="#E6E6FA">
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>
<h1>BestChoice Cars</h1>
<h3>Choose a car to Buy</h3>
<form action="<%=resultPath%>/resultcarbrand" method="post">
<table border="1">
<tr>
		<th></th>
        <th>Brand</th>
        <th>Model</th>
        <th>Year</th>
        <th>Kms</th>
        <th>Price</th>
        <th>Fuel</th>
</tr>
  <c:forEach items="${result}" var="item">
    <tr>
    <td> <input type="radio" name="brand" value="${item.brand}  ${item.model}"><br></td>
      <td><c:out value="${item.brand}" /></td>
       <td><c:out value="${item.model}" /></td>
       <td><c:out value="${item.year}" /></td>
       <td><c:out value="${item.kms}" /></td>
       <td><c:out value="${item.price}" /></td>
        <td><c:out value="${item.fuel}" /></td>
    </tr>
  </c:forEach>
  <tr>
  	<td></td>
  	<td colspan="7">
  		<input type="submit" value="Book Car"/>
  		<a href="<%=resultPath%>/bybrand">Back</a>
 		 <a href="<%=resultPath%>/">Home</a>
 	 </td>
  </tr>
</table>
</form>
</body>
</html>