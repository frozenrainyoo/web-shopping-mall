<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>
<html>
<head>
<title>������ �޴� - ��ǰ����</title>
</head>
<body>
<%@ include file="/WEB-INF/jsp/admin/menu.jsp" %>

<table>
	<tr>
		<td>��ǰ��</td><td>�޴�</td>
	</tr>
	
	<c:forEach items="${ITEM_LIST}" var="item">
	<tr>
		<td>
			<a href="edtItem.oz?id=<c:out value="${item.itemId }"/>"><c:out value="${item.itemName }"/></a></td>
		<td>
			[<a href="delItem.oz?id=<c:out value="${item.itemId }"/>">-</a>] 
			[<a href="editItem.oz?id=<c:out value="${item.itemId }"/>">=</a>]</td>
	</tr>
	</c:forEach>
	
	<tr><td colspan="2">[<a href="addItem.oz">New Item</a>]</td></tr>
</table>
</body>
</html>