<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
	String auth = request.getParameter("auth");
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form>
	<% if ("0".equals(auth)) {
	%>
		<div style="color:red">
			Authentiction Fails
		</div>	
	<% }%>
	
	<div>
		UserName <input type="text" >
	</div>
	
	<div>
		Password <input type="password" >
	</div>
	
	<div>
		<input type="submit" value="Login">
	</div>
	
</form>

</body>
</html>