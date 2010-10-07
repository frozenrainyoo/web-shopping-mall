<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>    
<html>
<head>
<title><spring:message code="store.name"/> - ��ǰ ����</title>
</head>
<script type="text/javascript" src="/WEB-INF/js/jquery-1.4.2.js"></script>     
<script type="text/javascript">                                         
	$(document).ready(function() {
	   $("a").click(function() {
	     alert("Hello world!");
	   });
	 });
</script>
<body>
<a href="">test</a>
<form  name="frm" action="addItem.oz" method="post">
<font color="red"><c:out value="${loginErrorMsg }"/></font>
<table>
	<tr>
		<td>��ǰ ��</td>
		<td>
			<spring:bind path="item.itemName">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<spring:bind path="item.price">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>�̹��� URL</td>
		<td>
			<spring:bind path="item.pictureUrl">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>���</td>
		<td>
			<spring:bind path="item.amount">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>ī�װ� 1</td>
		<td>
			<spring:bind path="item.categoryId1">
			<select name="<c:out value="${status.expression}"/>">
			<c:forEach items="${CATEGORY_LIST }" var="category">
				<option value="<c:out value="${category.id }"/>"><c:out value="${category.name }"/></option>
			</c:forEach>
			</select>
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>ī�װ� 2</td>
		<td>
			<spring:bind path="item.categoryId2">
			<select name="<c:out value="${status.expression}"/>">
			<c:forEach items="${CATEGORY_LIST }" var="category">
				<option value="<c:out value="${category.id }"/>"><c:out value="${category.name }"/></option>
			</c:forEach>
			</select>
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>ī�װ� 3</td>
		<td>
			<spring:bind path="item.categoryId3">
			<select name="<c:out value="${status.expression}"/>">
			<c:forEach items="${CATEGORY_LIST }" var="category">
				<option value="<c:out value="${category.id }"/>"><c:out value="${category.name }"/></option>
			</c:forEach>
			</select>
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>�̺�Ʈ 1</td>
		<td>
			<spring:bind path="item.eventId1">
			<select name="<c:out value="${status.expression}"/>">
			<c:forEach items="${EVENT_LIST }" var="event">
				<option value="<c:out value="${event.eventId }"/>"><c:out value="${event.eventName }"/></option>
			</c:forEach>
			</select>
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>�̺�Ʈ 2</td>
		<td>
			<spring:bind path="item.eventId2">
			<select name="<c:out value="${status.expression}"/>">
			<c:forEach items="${EVENT_LIST }" var="event">
				<option value="<c:out value="${event.eventId }"/>"><c:out value="${event.eventName }"/></option>
			</c:forEach>
			</select>
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>�̺�Ʈ 3</td>
		<td>
			<spring:bind path="item.eventId3">
			<select name="<c:out value="${status.expression}"/>">
			<c:forEach items="${EVENT_LIST }" var="event">
				<option value="<c:out value="${event.eventId }"/>"><c:out value="${event.eventName }"/></option>
			</c:forEach>
			</select>
			<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<spring:bind path="item.description">
			<textarea rows="20" cols="80" name="<c:out value="${status.expression}"/>"><c:out value="${status.value}"/></textarea>
			<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="submit" value="�߰�">
		</td>
	</tr>
</table>
</form>
</body>
</html>