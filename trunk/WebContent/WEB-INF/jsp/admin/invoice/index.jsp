<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>
<html>
<head>
<title>������ �޴� - ī�װ� ����</title>
</head>
<body>
<%@ include file="/WEB-INF/jsp/admin/menu.jsp" %>

<table>
	<tr>
		<td>�ֹ���ȣ</td>
		<td>�ֹ��Ͻ�</td>
		<td>������Ʈ</td>
		<td>�ֹ���</td>
		<td>������</td>
		<td>����</td>
		<td>�ֹ��Ͻ�</td></tr>
	
	<c:forEach items="${INVOICE_LIST}" var="invoice">
	<tr>
		<td><a href="invoiceDetail.oz?id=<c:out value="${invoice.id }"/>"><c:out value="${invoice.id }"/></a></td>
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