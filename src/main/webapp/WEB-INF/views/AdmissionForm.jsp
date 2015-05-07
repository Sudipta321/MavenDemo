<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission Form</title>
</head>
<body>
<h1>${headerMessagesg}</h1>
<h2>HI :${username}!!! PLEASE FILL UP STUDENT ADMISSION FORM FOR ENGINEERING COURCES</h2>
<form:errors path="student1.*"/>
<a href="<c:url value="j_spring_security_logout" />">  Logout</a>
<form action="/MavenDemo/submitAdmissionForm" method="post">
  <table>
  <tr>
    <td>Student's Name :</td>
    <td><input type="text" name="studentName"/></td>
  </tr>
  <tr>
    <td>Student's Hobby :</td>
    <td><input type="text" name="studentHobby"/></td>
  </tr>
  <tr>
    <td>Student's Mobile :</td>
    <td><input type="text" name="studentMobile"/></td>
  </tr>
  <tr>
    <td>Student's DOB :</td>
    <td><input type="text" name="studentDOB"/></td>
  </tr>
  <tr>
    <td>Student's Skills set :</td>
    <td><select name="studentSkills" multiple>
		    <option value="Java Core">Java Core</option>
		    <option value="Spring Core">Spring Core</option>
		    <option value="Spring MVC">Spring MVC</option>
        </select>
    </td>
  </tr>
  <tr>
    <td>Student's Address :</td>
  </tr>
  <tr>
    <td>Country :</td>
    <td><input type="text" name="studentAddress.country"/></td>
  </tr>
  <tr>
    <td>State :</td>
    <td><input type="text" name="studentAddress.state"/></td>
  </tr>
  <tr>
    <td>City :</td>
    <td><input type="text" name="studentAddress.city"/></td>
  </tr>
  <tr>
    <td>Pincode :</td>
    <td><input type="text" name="studentAddress.pincode"/></td>
  </tr>
  <tr>
    <td><input type="submit" value="SUBMIT"/></td>
  </tr>
  </table>
</form>
</body>
</html>