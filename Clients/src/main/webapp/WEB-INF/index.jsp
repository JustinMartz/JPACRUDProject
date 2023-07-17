<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles/style.css">
<meta charset="UTF-8">
<title>Client Portal</title>
</head>
<body>
	<div class="card-container">
		<div class="header-container">
			<h1>Client Portal</h1><span>12 days remaining of free trial</span>
		</div>
		<div class="nav-bar">
			<ul>
				<li><a href="createClientPage.do">Create New Entry</a></li>
				<li><a href="index.do">List All Clients</a></li>
			</ul>
		</div>
		<div class="entries-container">
			<table>
				<thead>
					<tr>
						<th scope="col">Client ID</th>
						<th scope="col">Name</th>
						<th scope="col">Status</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="client" items="${clients }">
				<tr>
					<td>${client.id }</td>
					<td><a href="displayClient.do?id=${client.id}">${client.firstName } ${client.lastName }</a></td>
					<td><c:if test="${client.active == 'true'}"><span class="status-active">ACTIVE</span></c:if><c:if test="${client.active == 'false'}"><span class="status-inactive">INACTIVE</span></c:if></td>
				</tr>
					
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>