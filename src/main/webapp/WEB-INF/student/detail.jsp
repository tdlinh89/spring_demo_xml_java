<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Student</title>
</head>
<body>
	<h1>Detail student</h1>
	<table border="1">
		<tr>
			<td>ID</td>
			<td>${student.id }</td>
		</tr>
		<tr>
			<td>Name</td>
			<td>${student.name }</td>
		</tr>
		<tr>
			<td>Age</td>
			<td>${student.age }</td>
		</tr>
		<tr>
			<td>Address</td>
			<td>${student.address }</td>
		</tr>
		<tr>
			<td>Birthday</td>
			<td>${student.birthday }</td>
		</tr>
	</table>
</body>
</html>