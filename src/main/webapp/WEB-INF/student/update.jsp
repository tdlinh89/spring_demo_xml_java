<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update new student</title>
	<link rel="stylesheet" href="/resources/css/index.css">
</head>
<body>
	<h1>Update new Student</h1>
	<form:form action="/student/update" method="post" modelAttribute="updateStudent">
		<table border="1">
			<tr>
				<td>ID</td>
				<td>${updateStudent.id }</td>
			</tr>
			<tr>
				<td>Name</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Age</td>
				<td>
					<form:input path="age" />
					<form:errors path="age" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td><input type="reset" value="Reset"></td>
				<td><form:button>Update</form:button></td>
			</tr>
		</table>
		<form:hidden path="id"/>
	</form:form>
</body>
</html>