<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>
<html>
<head>
<title>������ �޴� - Feedback ����</title>
</head>
<body>
<%@ include file="/WEB-INF/jsp/admin/menu.jsp" %>

<table>
	<tr>
		<td>Feedback</td><td>����</td><td>�ۼ���</td><td>�޴�</td>
	</tr>
	
	<c:forEach items="${FEEDBACK_LIST}" var="feedback">
	<tr>
		<td>
			<c:out value="${feedback.comment }"/>
		</td>
		<td><c:out value="${feedback.point}"/></td>
		<td><c:out value="${feedback.writerName}"/></td>
		<td>
			[<a href="delete.oz?fid=<c:out value="${feedback.id }"/>"">-</a>] 
			[<a href="editCategory.oz?id=<c:out value="${feedback.itemId }"/>"">=</a>] 
		</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>