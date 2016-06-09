<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'lookClient.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<table align="center" width="500">
		<tr>
			<td>客户查询</td>
			<td><a
				href="http://localhost:8080/EIMS/clientManage/addClient.jsp">客户添加</a>
			</td>
			<td><a
				href="http://localhost:8080/EIMS/clientManage/updateClient.jsp">客户修改</a>
			</td>
			<td><a
				href="http://localhost:8080/EIMS/clientManage/deleteClient.jsp">客户删除</a>
			</td>
		</tr>
	</table>
	<br>
	<hr>
	<br>
	<table align="center" width="700" border="2">
		<tr>
			<th colspan="4">查看客户信息</th>
		</tr>
		<tr>
			<td>姓名</td>
			<td>电话</td>
			<td>地址</td>
			<td>邮箱</td>
		</tr>
		<%
			Connection conn = null;
			Statement stat = null;
			ResultSet rs = null;
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
			conn = DriverManager.getConnection(url, "root", "0000");
			String sql = "select * from client";
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while (rs.next()) {
		%>
		<tr>
			<td>
				<%=rs.getString("clientName")%>
			</td>
			<td>
				<%=rs.getString("clientTelephone")%>
			</td>
			<td>
				<%=rs.getString("clientAddress")%>
			</td>
			<td>
				<%=rs.getString("clientEmail")%>
			</td>
		</tr>
		<%
			}
		%>
	</table>


</body>
</html>
