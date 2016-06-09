<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>企业信息管理系统-登陆界面</title>
</head>

<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<center>
		<form action="loginCheck.jsp" method="post">
			<table border="0">
				<tr>
					<td>
						<table border="1" cellspacing="0" cellpadding="0" width="360"
							height="200">
							<tr height="130">
								<td align="center">please input user name<input type="text"
									name="userName" size="20"> <br> please input
									password<input type="password" name="passWord" size="20">
									<br> <input type="submit" value="登陆" size="12" />&nbsp;&nbsp;&nbsp;
									<input type="reset" value="清除" size="12" />
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
