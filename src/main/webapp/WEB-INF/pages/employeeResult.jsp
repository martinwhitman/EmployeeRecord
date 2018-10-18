<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Employee Record Result</h2>
    <table>
        <tr>
            <td>Name</td>
            <td>${e.name}</td>
        </tr>
         <tr>
            <td>Age</td>
            <td>${e.age}</td>
        </tr>
        <tr>
            <td>Years Employed</td>
            <td>${e.yearsEmployed}</td>
        </tr>
        <tr>
            <td>Insurance Beneficiary</td>
            <td>${e.insuranceBeneficiary}</td>
        </tr>
        <tr>
            <td>Fully Vested</td>
            <td>${e.vestedFully}</td>
        </tr>
       
        
        </table>
<a href = "viewAll.mvc">View all Employees</a>
</body>
</html>