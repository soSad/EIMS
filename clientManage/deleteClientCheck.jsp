<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>处理客户删除数据</title>

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
	<%
		String clientName = new String(request.getParameter("clientName")
				.getBytes("ISO-8859-1"), "UTF-8");
		Connection conn = null;
		Statement stat = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
			conn = DriverManager.getConnection(url, "root", "0000");
			stat = conn.createStatement();
			String sql = "delete from client where clientName='"
					+ clientName + "'";
			stat.execute(sql);
			response.sendRedirect("http://localhost:8080/EIMS/clientManage/lookClient.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			stat.close();
			conn.close();
		}
	%>
</body>
</html>
