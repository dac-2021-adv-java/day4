<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
 <%
		String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
		String DB_URL = "jdbc:mysql://192.168.64.5:3306/SAMPLEDB"; // in my case
		String DB_USER = "mysql"; // root
		String DB_PASSWORD = "mysql"; // ""

		//ST.2
		Class.forName(DB_DRIVER);

		// ST.3
		Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

		// ST.4 :: KEEP YOUR QUERY IN UPPSERCASE
		String sql = "SELECT * FROM STUDENT";
		
		// ST.5
		PreparedStatement ps = con.prepareStatement(sql);
		
		// ST.6
		ResultSet rs = ps.executeQuery();
			
 %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	//ST.7
	while(rs.next()) {
		int id = rs.getInt("id");
		String name = rs.getString("name");
%>		
	
		<div><%=id %> / <%=name %></div>

<% 		
	}
%>

</body>
</html>


<% con.close(); %>