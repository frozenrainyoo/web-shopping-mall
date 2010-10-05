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
		<td align="center">��ǰ��</td>
		<td align="center">����</td>
		<td align="center">���</td>
		<td align="center">�Ǹŷ�</td>
		<td align="center">��ȸ��</td>
		<td align="center">�����</td>
		<td align="center">�������Ǹ���</td>
		<td align="center">�޴�</td>
	</tr>
	
	<c:forEach items="${ITEM_LIST}" var="item">
	<tr>
		<td><a href="edtItem.oz?id=<c:out value="${item.itemId }"/>"><c:out value="${item.itemName }"/></a></td>
		<td align="center"><c:out value="${item.price }"/></td>
		<td align="center"><c:out value="${item.amount }"/></td>
		<td align="center"><c:out value="${item.sold }"/></td>
		<td align="center"><c:out value="${item.visit }"/></td>
		<td align="center"><fmt:formatDate type="date" value="${item.lastUpdate}" /></td>
		<td align="center"><fmt:formatDate type="date" value="${item.lastSold}" /></td>
		<td>
			[<a href="delItem.oz?id=<c:out value="${item.itemId }"/>">-</a>] 
			[<a href="editItem.oz?id=<c:out value="${item.itemId }"/>">=</a>]</td>
	</tr>
	</c:forEach>
	
	<tr><td colspan="8" align="right">[<a href="addItem.oz">New Item</a>]</td></tr>
</table>
</body>
</html>