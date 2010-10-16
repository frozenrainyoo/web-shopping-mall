<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>    
<html>
<head>
<title><spring:message code="store.name"/> - ��������</title>
</head>
<body>
<form  name="frm" action="edit.oz" method="post">
<spring:bind path="notice">
  <font color="red"><c:out value="${status.errorMessage}"/></font>
</spring:bind>

<spring:bind path="notice.noticeId">
	<input type="hidden"
		name ="<c:out value="${status.expression}"/>"
		value="<c:out value="${status.value}"/>">
</spring:bind>

<font color="red"><c:out value="${loginErrorMsg }"/></font>
<table>
	<tr>
		<td>��������</td>
		<td>
			<spring:bind path="notice.title">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>��������</td>
		<td>
			<spring:bind path="notice.content">
			<textarea name="<c:out value="${status.expression}"/>"><c:out value="${status.value}"/></textarea>
			<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="������Ʈ"> <input type="button" value="����" onclick="delfrm.submit()">
		</td>
	</tr>
</table>
</form>
<form name="delfrm" method="post" action="delete.oz">
	<spring:bind path="notice.noticeId">
	<input type="hidden"
		name ="nid"
		value="<c:out value="${status.value}"/>">
	</spring:bind>
</form>
</body>
</html>