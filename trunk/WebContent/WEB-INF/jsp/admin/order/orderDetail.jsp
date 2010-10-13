<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>    
<html>
<head>
<title><spring:message code="store.name"/> - �ǸŰ���</title>
</head>
<body>
<form name="frm" action="orderDetail.oz" method="post">
<font color="red"><c:out value="${loginErrorMsg }"/></font>
<table>
	<tr>
		<td>�Ϸù�ȣ</td>
		<td>
			<spring:bind path="order.orderId">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�ֹ���</td>
		<td>
			<spring:bind path="order.createDate">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>������Ʈ��</td>
		<td>
			<spring:bind path="order.lastUpdate">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>��ǰ��</td>
		<td>
			<spring:bind path="order.productName">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>��ǰ����</td>
		<td>
			<spring:bind path="order.price">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>��ǰ����</td>
		<td>
			<spring:bind path="order.amount">
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
			<spring:bind path="order.status">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="right">
			<input type="submit" value="���">
		</td>
	</tr>
</table>

<spring:bind path="order.invoiceId">
	<input type="hidden" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>" >
</spring:bind>
</form>

</body>
</html>