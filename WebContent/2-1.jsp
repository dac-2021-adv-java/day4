<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	// Ideally set is done in some other program :: Servlet :: JSP
	request.setAttribute("city", "Mumbai");
	request.setAttribute("id", 100);
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Using Expression Language. 
<div> ${requestScope.city}  ${requestScope.id} </div>

</body>
</html>