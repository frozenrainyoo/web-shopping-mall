<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp" %>    
<html>
<head>
<title><spring:message code="store.name"/> - ī�װ� ����</title>
</head>
<body>
<form  name="frm" action="userDetail.oz" method="post">
<spring:bind path="user">
  <font color="red"><c:out value="${status.errorMessage}"/></font>
</spring:bind>

<font color="red"><c:out value="${loginErrorMsg }"/></font>
<table>
	<tr>
		<td>���̵�</td>
		<td><c:out value="${user.id}"/></td>
	</tr>

	<tr>
		<td>�̸�</td>
		<td><c:out value="${user.name}"/></td>
	</tr>

	<tr>
		<td>�г���</td>
		<td><c:out value="${user.nick}"/></td>
	</tr>

	<tr>
		<td>����</td>
		<td><c:out value="${user.photo}"/></td>
	</tr>

	<tr>
		<td>������</td>
		<td><c:out value="${user.icon}"/></td>
	</tr>

	<tr>
		<td>��ȭ��ȣ</td>
		<td><c:out value="${user.tphone}"/></td>
	</tr>

	<tr>
		<td>�ڵ���</td>
		<td><c:out value="${user.hphone}"/></td>
	</tr>

	<tr>
		<td>������ȭ</td>
		<td><c:out value="${user.comtel}"/></td>
	</tr>

	<tr>
		<td>�̸���</td>
		<td><c:out value="${user.email}"/></td>
	</tr>

	<tr>
		<td>�����ȣ</td>
		<td><c:out value="${user.post}"/></td>
	</tr>

	<tr>
		<td>�ּ� 1 (street)</td>
		<td><c:out value="${user.address1}"/></td>
	</tr>

	<tr>
		<td>�ּ� 2 (town, state, nation)</td>
		<td><c:out value="${user.address2}"/></td>
	</tr>

	<tr>
		<td>����</td>
		<td><c:out value="${user.birthday}"/></td>
	</tr>

	<tr>
		<td>ȸ�����</td>
		<td>
			<spring:bind path="user.level">
			<input type="text"
				name="<c:out value="${status.expression}"/>"
				value="<c:out value="${status.value}"/>" maxlength="20">
				<font color="red"><c:out value="${status.errorMessage}"/></font>
			</spring:bind>
		</td>
	</tr>

	<tr>
		<td>�湮Ƚ��</td>
		<td><c:out value="${user.visit}"/></td>
	</tr>

	<tr>
		<td>�湮�ð�</td>
		<td><fmt:formatDate type="date" value="${user.visitTime}" /></td>
	</tr>

	<tr>
		<td>�ڱ�Ұ�</td>
		<td><c:out value="${user.intro}"/></td>
	</tr>

	<tr>
		<td>�޸�</td>
		<td>
			<spring:bind path="user.memo">
			<textarea name="<c:out value="${status.expression}"/>"><c:out value="${status.value}"/></textarea>
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