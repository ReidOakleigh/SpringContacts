<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contacts</title>
<link href="styles.css" rel="stylesheet" />
</head>
<body>
	<table>
		<tr>
			<th>Name</th>
			<th>Street</th>
			<th>City</th>
			<th>State</th>
			<th>Phone</th>
			<th>Rel</th>
		</tr>
		<c:forEach items="${requestScope.contacts}" var="contact" >
			<tr>
				<td>${contact.name}</td>
				<td>${contact.address.street}</td>				
				<td>${contact.address.city}</td>
				<td class="st">${contact.address.state}</td>			
 				<td>${contact.phone}</td>
				<td>${contact.relationship}</td>
			</tr>
		</c:forEach>
	</table>
  <br/>
  <a href="index.html">Main Menu</a>
</body>
</html>