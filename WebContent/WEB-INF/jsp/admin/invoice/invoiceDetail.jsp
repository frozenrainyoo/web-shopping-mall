<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>    
<html>
<head>
<title><spring:message code="store.name"/> - �ǸŰ���</title>
</head>
<body>
<form  name="frm" action="invoiceDetail.oz" method="post">
<font color="red"><c:out value="${loginErrorMsg }"/></font>
<table>
	<tr>
		<td>�Ϸù�ȣ</td>
		<td>
			<spring:bind path="invoice.id">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>������</td>
		<td>
			<spring:bind path="invoice.issueDate">
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
			<spring:bind path="invoice.lastUpdate">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>��ǰ���</td>
		<td>
			<spring:bind path="invoice.productCost">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>��ۺ��</td>
		<td>
			<spring:bind path="invoice.deliveryCost">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>���ҹ��</td>
		<td>
			<spring:bind path="invoice.paymethod">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>ó������</td>
		<td>
			<spring:bind path="invoice.status">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�޸�</td>
		<td>
			<spring:bind path="invoice.memo">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�����ھ��̵�</td>
		<td>
			<spring:bind path="invoice.buyerId">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�������̸�</td>
		<td>
			<spring:bind path="invoice.buyerName">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�������̸���</td>
		<td>
			<spring:bind path="invoice.buyerEmail">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>��������ȭ��ȣ</td>
		<td>
			<spring:bind path="invoice.buyerPhone">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�������̸�</td>
		<td>
			<spring:bind path="invoice.receiverName">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�������̸���</td>
		<td>
			<spring:bind path="invoice.receiverEmail">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>��������ȭ��ȣ</td>
		<td>
			<spring:bind path="invoice.receiverPhone">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>������ּ� 1</td>
		<td>
			<spring:bind path="invoice.address1">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>������ּ� 2</td>
		<td>
			<spring:bind path="invoice.address2">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�����ȣ</td>
		<td>
			<spring:bind path="invoice.postcode">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>��</td>
		<td>
			<spring:bind path="invoice.state">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td colspan="2" align="right">
			<input type="submit" value="������Ʈ">
		</td>
	</tr>
</table>
</form>

<table>
	<tr>
		<td>�ֹ���ȣ</td>
		<td>�ֹ��Ͻ�</td>
		<td>������Ʈ</td>
		<td>�ֹ���</td>
		<td>������</td>
		<td>����</td>
		<td>�ֹ��Ͻ�</td></tr>
	
	<c:forEach items="${ORDER_LIST}" var="order">
	<tr>
		<td><a href="orderDetail.oz?id=<c:out value="${invoice.id }"/>"><c:out value="${invoice.id }"/></a></td>
		<td><c:out value="${invoice.issueDate }"/></td>
		<td><c:out value="${invoice.lastUpdate }"/></td>
		<td><c:out value="${invoice.buyerName }"/></td>
		<td><c:out value="${invoice.receiverName }"/></td>
		<td><c:out value="${invoice.status }"/></td>
		<td><c:out value="${invoice.lastUpdate }"/></td>
	</tr>
</c:forEach>
</table>

</body>
</html>