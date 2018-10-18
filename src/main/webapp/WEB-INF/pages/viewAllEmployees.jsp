<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Employees</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Name</td>
				<td>${item.name}</td>
			</tr>
			<tr>
				<td>Age</td>
				<td>${item.age}</td>
			</tr>
			<tr>
				<td>Years Employed</td>
				<td>${item.yearsEmployed}</td>
			</tr>
			<tr>
				<td>Insurance Beneficiary</td>
				<td>${item.insuranceBeneficiary}</td>
			</tr>
			<tr>
				<td>Fully Vested</td>
				<td>${item.vestedFully}</td>
			</tr>
			

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new employee</a>
</body>
</html>