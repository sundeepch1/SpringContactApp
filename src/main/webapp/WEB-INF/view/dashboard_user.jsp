<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<s:url var="url_css" value="/static/css/style.css" />
<s:url var="url_bg" value="/static/images/bg.jpg" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard - Contact Application</title>
<link href="${url_css}" rel="stylesheet" type="text/css" />
<link>
</head>
<body background="${url_bg}">
	<table border="1" width="80%" align="center">
		<tr>
			<td height="100px">
				<%-- Header --%>
				<jsp:include page="include/header.jsp" />
			</td>
		</tr>
		<tr>
			<td height="25px">
				<%-- Menu --%>
				<jsp:include page="include/menu.jsp" />
			</td>
		</tr>
		<tr>
			<td height="350px" valign="top">
				<%-- Page content area --%>
				<h1>User DashBoard</h1>
			</td>
		</tr>
		<tr>
			<td height="25px">
				<%-- Footer --%>
				<jsp:include page="include/footer.jsp" />
			</td>
		</tr>
	</table>
</body>
</html>