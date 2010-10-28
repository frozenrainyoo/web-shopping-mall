<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title><spring:message code="store.name"/></title>
</head>
<body>

[Shopping cart]
<div>
<table>
<tr><td>��ǰ��</td><td>����</td><td>����</td></tr>
<c:forEach items="${CART}" var="order">
<form name="cartForm">
<tr>
	<input type="hidden" name="id" value="<c:out value="${order.orderId}"/>">
	<td><a href="item.oz?id=<c:out value="${order.itemId }"/>"><c:out value="${order.productName }"/></a></td>
	<td>
		<input type="text" name="amount" value=<c:out value="${order.amount }"/>> 
		<input type="button" value="������Ʈ">
	</td>
	<td><input type="button" value="����"></td>
</tr> 
</form>
</c:forEach>
</table>
[<a href="<spring:message code="store.path"/>/cart/checkout.oz">����</a>] [<a href="<spring:message code="store.path"/>/category.oz">���ΰ��</a>]
</div>
</body>
</html>