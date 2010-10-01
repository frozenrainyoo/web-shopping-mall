<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>    
<html>
<head>
<title><spring:message code="store.name"/> - ī�װ� ����</title>
</head>
<body>
<form  name="frm" action="editCategory.oz" method="post">
<spring:bind path="category">
  <font color="red"><c:out value="${status.errorMessage}"/></font>
</spring:bind>

<spring:bind path="category.parent">
	<input type="hidden"
		name ="<c:out value="${status.expression}"/>"
		value="<c:out value="${status.value}"/>">
</spring:bind>

<spring:bind path="category.id">
	<input type="hidden"
		name ="<c:out value="${status.expression}"/>"
		value="<c:out value="${status.value}"/>">
</spring:bind>

<spring:bind path="category.depth">
	<input type="hidden"
		name ="<c:out value="${status.expression}"/>"
		value="<c:out value="${status.value}"/>">
</spring:bind>

<font color="red"><c:out value="${loginErrorMsg }"/></font>
<table>
	<tr>
		<td>ī�װ���</td>
		<td>
			<spring:bind path="category.name">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="������Ʈ">
		</td>
	</tr>
</table>
</form>
</body>
</html>