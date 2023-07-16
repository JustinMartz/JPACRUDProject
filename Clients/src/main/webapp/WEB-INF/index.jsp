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
				<li><a href="#home">Create New Entry</a></li>
				<li class="dropdown"><a href="javascript:void(0)"
					class="dropbtn">Find</a>
					<div class="dropdown-content">
						<a href="#">Find Client By ID</a> <a href="#">Find Client By
							Name</a> <a href="#">Find All Clients</a>
					</div></li>
				<li><a href="#news">Update</a></li>
				<li><a href="#destroy">Destroy</a></li>
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
					<td>${client.active }</td>
				</tr>
					
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>