<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<h3>Enter your username and password(custom page)</h3>
	<form method="post" action="j_spring_security_check">
		UserName :<input name="j_username" type="text" /> <br />
		Password :<input name="j_password" type="password" /> <br />
		<input value="Login" type="submit" />
		<input value="reset" type="reset" />
	</form>

	 <br />
	<c:if test="${param.status=='error'}">
		<label style="color:red">Invalid username or password!!</label>
	</c:if>
	<c:if test="${param.status=='logout'}">
		<label style="color:red">Logged out successfully!</label>
	</c:if>
</body>
</html>