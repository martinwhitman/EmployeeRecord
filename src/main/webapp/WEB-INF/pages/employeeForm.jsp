<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
   <%@ page isELIgnored="false" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Employee Record Form</h2>
<mvc:form modelAttribute="employee" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="name">Name</mvc:label></td>
	        <td><mvc:input path="name" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="age">Age</mvc:label></td>
	        <td><mvc:input path="age" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="yearsEmployed">Years Employed</mvc:label></td>
	        <td><mvc:input path="yearsEmployed" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="insuranceBeneficiary">Insurance Beneficiary</mvc:label></td>
	        <td><mvc:input path="insuranceBeneficiary" /></td>
	    </tr>
		
	    <tr>
            <td><mvc:label path="vestedFully">Fully Vested</mvc:label></td>
            <td><mvc:checkbox path="vestedFully" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Employees</a>
</body>
</html>