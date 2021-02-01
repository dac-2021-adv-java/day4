<%
	// ....after lot of computation
	session.setAttribute("city", "Mumbai");
	session.setAttribute("id", 100);
	
	
	String city = (String)session.getAttribute("city");
	int id = (Integer)session.getAttribute("id");
%>    

<html>
<head>
</head>

<body>

<h1>Session Demo</h1>
<div>
	<%= city %>
	<%= id %>
</div>


<form action="logout.jsp" >
	<button type="submit">LOGOUT</button>
</form>	

</body>
</html>
