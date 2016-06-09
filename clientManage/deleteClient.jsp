<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>删除客户</title>
    
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
    <form
		action="http://localhost:8080/EIMS/clientManage/deleteClientCheck.jsp"
		method="post">
		<table align="center" width="500">
			<tr>
				<td><a
					href="http://localhost:8080/EIMS/clientManage/lookClient.jsp">客户查询</a>
				</td>
				<td><a
					href="http://localhost:8080/EIMS/clientManage/addClient.jsp">客户添加</a>
				</td>
				<td><a
					href="http://localhost:8080/EIMS/clientManage/updateClient.jsp">客户修改</a>
				</td>
				<td>客户删除</td>
				
			</tr>
		</table>
		<br> <br> <br>
		<table align="center" width="300">
			<tr>
				<th colspan="2" align="center">修改客户信息</th>
			</tr>
			<tr>
				<td style="width: 57px; height: 28px">姓名</td>
				<td style="width: 205px; "><input type="text" name="clientName" /><br>输入要删除的客户姓名</td>
			</tr>
			
			<tr align="center">
				<td colspan="2"><input name="sure" type="submit" value="确认">
					&nbsp;&nbsp;&nbsp;&nbsp; <input name="clear" type="reset"
					value="取消"></td>
			</tr>
		</table>
	</form>
  </body>
</html>
