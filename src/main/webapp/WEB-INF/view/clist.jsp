<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="url_css" value="/static/css/style.css" />
<s:url var="url_bg" value="/static/images/bg.jpg" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact List - Contact Application</title>
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
				<h3>Contact List</h3> <c:if test="${param.act eq 'sv'}">
					<p class="success">Contact Saved Successfully</p>
				</c:if> <c:if test="${param.act eq 'del'}">
					<p class="success">Contact Deleted Successfully</p>
				</c:if>

				<table width="100%">
					<tr>
						<td align="right">
							<form action="<s:url value="/user/contact_search"/>">
								<input type="text" name="freeText" value="${param.freeText}"
									placeholder="Enter Text To Search">
								<button>Find</button>
							</form>
						</td>
					</tr>
				</table>
				<form action="<s:url value="/user/bulk_cdelete"/>">
					<button>Delete Selected Records</button>
					<br />
					<br />
					<table border="1" cellpadding="3" width="100%">
						<tr>
							<th>SELECT</th>
							<th>CID</th>
							<th>NAME</th>
							<th>PHONE</th>
							<th>EMAIL</th>
							<th>ADDRESS</th>
							<th>REMARK</th>
							<th>ACTION</th>
						</tr>

						<c:if test="${empty contactList}">
							<tr>
								<td align="center" colspan="8" class="error">No Records
									Present</td>
							</tr>
						</c:if>

						<c:forEach var="c" items="${contactList}" varStatus="st">
							<tr>
								<td align="center"><input type="checkbox" name="cid"
									value="${c.contactId}" /></td>
								<td>${c.contactId}</td>
								<td>${c.name}</td>
								<td>${c.phone}</td>
								<td>${c.email}</td>
								<td>${c.address}</td>
								<td>${c.remark}</td>
								<s:url var="url_del" value="/user/del_contact">
									<s:param name="cid" value="${c.contactId}" />
								</s:url>
								<s:url var="url_edit" value="/user/edit_contact">
									<s:param name="cid" value="${c.contactId}" />
								</s:url>
								<td><a href="${url_edit}">Edit</a> | <a href="${url_del}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</form>
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