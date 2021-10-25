<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booked By Price</title>
</head>
<body bgcolor="#E6E6FA">
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>

<h1>Best Choice Cars</h1>
<h2>Congratulations!!! you have successfully booked ${brandmodel} car</h2>
<h2>Thankyou!!! Have a good day!!! </h2>
<a href="<%=resultPath%>/">Home</a>
</body>
</html>