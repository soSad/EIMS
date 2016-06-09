<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>数据处理页面</title>


</head>

<body>
	<%
		String userName = new String(request.getParameter("userName")
				.getBytes("ISO-8859-1"), "UTF-8");
		String passWord = new String(request.getParameter("passWord")
				.getBytes("ISO-8859-1"), "UTF-8");

		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;

		if (userName.equals("")) {
			response.sendRedirect("login.jsp");
			//跳转到指定的URL地址后，上个页面（跳转之前的原来页面）中的请求全部结束，原request对象将会消亡，
			//数据将会消失。紧接着，当前新页面会新建request对象，即产生新的request对象。
		}

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
			conn = DriverManager.getConnection(url, "root", "0000");
			stat = conn.createStatement();
			String query = "select * from user where userName = '"
					+ userName + "'" + "and passWord ='" + passWord + "'";
			rs = stat.executeQuery(query);
			if (rs.next()) {

				response.sendRedirect("main/main.jsp");

			} else {
				response.sendRedirect("login.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			stat.close();
			conn.close();
		}
	%>
</body>
</html>
