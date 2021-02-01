<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	// Ideally set is done in some other program :: Servlet :: JSP
	request.setAttribute("city", "Mumbai");
	request.setAttribute("id", 100);
	
	List<String> list = Arrays.asList("A", "B", "C", "D");
	request.setAttribute("list", list);
	
	// get 
	List<String> list1 = (List<String>) request.getAttribute("list");
	
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

<%
	for(int i=0; i<list1.size(); i++) {
%>		
		<div style="color:green; font-family: cursive"><%= list1.get(i) %></div>
<% 	}
%>

</body>
</html>