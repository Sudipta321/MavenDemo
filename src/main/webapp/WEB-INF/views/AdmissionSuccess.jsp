<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission Success</title>
</head>
<body>
<h1>${headerMessagesg}</h1>
<a href="<c:url value="j_spring_security_logout" />">  Logout</a>
 <h3>Congratulation ! The Engineering College has processed your form successfully </h3>
 <h2>Details submitted by you !!!</h2>
 <table>
	 <tr>
	     <td>Student Name :</td>
	     <td>${student1.studentName}</td>
	 </tr>
	 <tr>
	     <td>Student Hobby :</td>
	     <td>${student1.studentHobby}</td>
	 </tr>
	 <tr>
	     <td>Student Mobile :</td>
	     <td>${student1.studentMobile}</td>
	 </tr>
	 <tr>
	     <td>Student DOB :</td>
	     <td>${student1.studentDOB}</td>
	 </tr>
	 <tr>
	     <td>Student Skills :</td>
	     <td>${student1.studentSkills}</td>
	 </tr>
	  <tr>
	     <td>Student Address :</td>
	 </tr>
	 <tr>
	      <td>Country :</td>
	      <td>${student1.studentAddress.country}</td>
	 </tr>
	 <tr>
	      <td>State :</td>
	      <td>${student1.studentAddress.state}</td>
	 </tr>
	 <tr>
	      <td>City :</td>
	      <td>${student1.studentAddress.city}</td>
	 </tr>
	 <tr>
	      <td>Pincode :</td>
	      <td>${student1.studentAddress.pincode}</td>
	 </tr>
 </table>
</body>
</html>