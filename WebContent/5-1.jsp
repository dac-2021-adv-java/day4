<%
	// 1. Neither we Set 
	// 2. Include
	// 3. Forward
	String city = (String)session.getAttribute("city");
	int id = (Integer)session.getAttribute("id");
%>    

<html>
<body>

<h1>Session 5.1 Demo</h1>
<div>
	<%= city %>
	<%= id %>
</div>	

</body>
</html>
