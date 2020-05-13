<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<s:url var="url_css" value="/static/css/style.css" />
<s:url var="url_bg" value="/static/images/bg.jpg" />
<s:url var="url_jqlib" value="/static/js/jquery-3.2.1.min.js" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List - Contact Application</title>
<link href="${url_css}" rel="stylesheet" type="text/css" />
<script src="${url_jqlib}"></script>
<script type="text/javascript">
	function changeStatus(uid, lstatus){
		$.ajax({
			url: 'change_status',
			data: {userId: uid, loginStatus: lstatus},
			success: function(data){
				alert(data);
			}
		})
	}
</script>
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
				<h3>User List</h3>
				<table width="100%" border="1">
					<tr>
						<th>SR</th>
						<th>USER ID</th>
						<th>NAME</th>
						<th>PHONE</th>
						<th>EMAIL</th>
						<th>ADDRESS</th>
						<th>USERNAME</th>
						<th>STATUS</th>
					</tr>
					<c:forEach var="u" items="${userList}" varStatus="st">
						<tr>
							<td>${st.count}</td>
							<td>${u.userId}</td>
							<td>${u.name}</td>
							<td>${u.phone}</td>
							<td>${u.email}</td>
							<td>${u.address}</td>
							<td>${u.loginName}</td>
							<td>
								<select id="id_${u.userId}" onchange="changeStatus(${u.userId}, $(this).val())">
									<option value="1">Active</option>
									<option value="2">Block</option>
								</select>
								<script type="text/javascript">
									$('#id_${u.userId}').val(${u.loginStatus})
								</script>
							</td>
						</tr>
					</c:forEach>
				</table>
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