<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>
<html:html>
<head>
<title><bean:message key="itemMenu.title"/></title>
</head>
<body>
	<div align="center" class="body">
		<h2><bean:message key="itemMenu.title"/></h2>
		
		<table border="1">
			<tr class="header">
				<td align="center" width="80">��ǰID</td>
				<td align="center" width="320">��ǰ��</td>
				<td align="center" width="100">����</td>
			</tr>
			
			<logic:iterate id="item" name="itemMenuForm" property="itemList">
				<tr class="record">
					<td align="center">
						<bean:write name="item" property="itemId"/>
					</td>
					<td align="left">
						<bean:write name="item" property="itemName"/>
					</td>
					<td align="right">
						<bean:write name="item" property="price"/> ��
					</td>
			</logic:iterate>
		</table>
	
	</div>
</body>
</html:html>