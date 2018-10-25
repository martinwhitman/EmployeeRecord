<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
   <%@ page isELIgnored="false" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
	$('#name').on('input', function() {
		var input=$(this);
		var is_name=input.val();
		if(is_name){input.removeClass("invalid").addClass("valid");}
		else{input.removeClass("valid").addClass("invalid");}
	});
	$('#beneficiary').on('input', function() {
		var input=$(this);
		var is_name=input.val();
		if(is_name){input.removeClass("invalid").addClass("valid");}
		else{input.removeClass("valid").addClass("invalid");}
	});
	$('#age').on('input', function() {
		var input=$(this);
		var age=input.val();
		if((Math.floor(age) == age && $.isNumeric(age))&&(parseInt(age)>17)){input.removeClass("invalid").addClass("valid");}
		else{input.removeClass("valid").addClass("invalid");}
	});
	$('#years').on('input', function() {
		var input=$(this);
		var years=input.val();
		if((Math.floor(years) == years && $.isNumeric(years))&&(parseInt(years)>-1)){input.removeClass("invalid").addClass("valid");}
		else{input.removeClass("valid").addClass("invalid");}
	});
	$("#submit").click(function(event){
		
		var error_free=true;
		
			var elementName=$("#name");
			var elementAge=$("#age");
			var elementBeneficiary=$("#beneficiary");
			var elementYears=$("#years");
			
			var errorName=$("#name error");
			var errorAge=$("#age error");
			var errorBeneficiary=$("#beneficiary error");
			var errorYears=$("#years error");
			
			var valid=elementName.hasClass("valid");
			if (!valid){errorName.removeClass("error").addClass("error_show"); error_free=false;}
			else{errorName.removeClass("error_show").addClass("error");}
			
			valid=elementAge.hasClass("valid");
			if (!valid){errorAge.removeClass("error").addClass("error_show"); error_free=false;}
			else{errorAge.removeClass("error_show").addClass("error");}
			
			valid=elementBeneficiary.hasClass("valid");
			if (!valid){errorBeneficiary.removeClass("error").addClass("error_show"); error_free=false;}
			else{errorBeneficiary.removeClass("error_show").addClass("error");}
			
			valid=elementYears.hasClass("valid");
			if (!valid){errorYears.removeClass("error").addClass("error_show"); error_free=false;}
			else{errorYears.removeClass("error_show").addClass("error");}
		
		if (!error_free){
			event.preventDefault(); 
			alert('ERROR IN RED FIELD, FORM NOT SUBMITTED');
		}
		else{
			alert('No errors: Form will be submitted');}
	});
});
</script>
<style>
#employee label{
	color:green;
	display: inline-block;
	width: 100px;
	text-align: right;
}
#submit{	
	background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
span.error{
	display: none;
	margin-left: 10px;
	
}		

span.error_show{
	color: red;
	margin-left: 10px;
}

input.invalid{
	border: 2px solid red;
}

input.valid{
	border: 2px solid green;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h1 style="color:blue;">Employee Record Form</h1>
<mvc:form modelAttribute="employee" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="name">Name</mvc:label></td>
	        <td><mvc:input path="name" id="name"/></td>
	        <td><span  class="error"id="name error">MUST ENTER A NAME</span></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="age">Age</mvc:label></td>
	        <td><mvc:input path="age" id="age" /></td>
	        <td><span class="error"id="age error" >MUST ENTER AN AGE OVER 18</span></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="yearsEmployed">Years Employed</mvc:label></td>
	        <td><mvc:input path="yearsEmployed" id="years"/></td>
	        <td><span class="error"id="years error" >MUST ENTER A NON-NEGATIVE NUMBER</span></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="insuranceBeneficiary">Insurance Beneficiary</mvc:label></td>
	        <td><mvc:input path="insuranceBeneficiary" id="beneficiary" /></td>
	        <td><span class="error" id="beneficiary error" >MUST NAME A BENEFICIARY</span></td>
	    </tr>
		
	    <tr>
            <td><mvc:label style="color:black" path="vestedFully">Fully Vested</mvc:label></td>
            <td><mvc:checkbox path="vestedFully" /></td>
        </tr>
        <tr>
        	<td></td>
	        <td colspan="2">
                <input id="submit" type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc"style="display:block; padding-left:100px ">View all Employees</a>

</body>
</html>