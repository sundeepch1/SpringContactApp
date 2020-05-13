<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="url_css" value="/static/css/style.css" />
<s:url var="url_bg" value="/static/images/bg.jpg" />
<s:url var="url_csave" value="/user/save_contact" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Form - Contact Application</title>
<link href="${url_css}" rel="stylesheet" type="text/css" />
<link>
</head>
<body background="${url_bg}">
	<table border="1" width="80%" align="center">
		<tr>
			<td height="100px">
				<%-- Header --%> <jsp:include page="include/header.jsp" />
			</td>
		</tr>
		<tr>
			<td height="25px">
				<%-- Menu --%> <jsp:include page="include/menu.jsp" />
			</td>
		</tr>
		<tr>
			<td height="350px" valign="top">
				<%-- Page content area --%>
				<h3>Contact Form</h3> 
				<c:if test="${err!=null}">
					<p class="error">${err}</p>
				</c:if> 
				<f:form action="${url_csave}" modelAttribute="command">
					<table border="1">
						<tr>
							<td>Name</td>
							<td><f:input path="name" /></td>
						</tr>
						<tr>
							<td>Phone</td>
							<td><f:input path="phone" /></td>
						</tr>
						<tr>
							<td>Email</td>
							<td><f:input path="email" /></td>
						</tr>
						<tr>
							<td>Address</td>
							<td><f:textarea path="address" /></td>
						</tr>
						<tr>
							<td>Remark</td>
							<td><f:textarea path="remark" /></td>
						</tr>
						<tr>
							<td colspan="2" align="right">
								<button>Save</button>
							</td>
						</tr>
					</table>
				</f:form>
			</td>
		</tr>
		<tr>
			<td height="25px">
				<%-- Footer --%> <jsp:include page="include/footer.jsp" />
			</td>
		</tr>
	</table>
</body>
</html>