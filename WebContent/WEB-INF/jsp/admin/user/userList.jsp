<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>
<html>
<head>
<title>������ �޴� - ȸ�� ����</title>
</head>
<body>
<%@ include file="/WEB-INF/jsp/admin/menu.jsp" %>

<table>
	<tr><td>���̵�</td><td>�̸�</td><td>�г���</td></tr>
	
	<c:forEach items="${USER_LIST}" var="user">
	<tr>
		<td>
			<a href="detail.oz?id=<c:out value="${user.id }"/>"><c:out value="${user.id }"/></a></td>
		<td>
			<c:out value="${user.name }"/></td>
		<td>
			<c:out value="${user.nick }"/></td>
	</tr>
	</c:forEach>
	
</table>
</body>
</html>