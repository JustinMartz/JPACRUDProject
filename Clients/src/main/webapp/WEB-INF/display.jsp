<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${client.firstName } ${client.lastName }</title>
<link rel="stylesheet" type="text/css" href="styles/style.css">

</head>
<body>
<body>
	<div class="card-container">
		<div class="header-container">
			<h1>
				Client Portal</h1><span>12 days remaining of free trial</span>
			
		</div>
		<div class="nav-bar">
			<ul>
				<li><a href="#home">Create New Entry</a></li>
				<li class="dropdown"><a href="javascript:void(0)"
					class="dropbtn">Find</a>
					<div class="dropdown-content">
						<a href="#">Find Client By ID</a> <a href="#">Find Client By
							Name</a> <a href="index.do">Find All Clients</a>
					</div></li>
				<li><a href="#news">Update</a></li>
				<li><a href="#destroy">Destroy</a></li>
			</ul>
		</div>
		<div class="entries-container">
			<div class="entries-header"><h1>${client.firstName} ${client.lastName }</h1>
			<span>${fn:substring(client.phoneNumber, 0, 1)} (${fn:substring(client.phoneNumber, 1, 4)}) ${fn:substring(client.phoneNumber, 4, 7)}-${fn:substring(client.phoneNumber, 7, 11)} </span>
			<span>Status: <c:if test="${client.active == 'true'}"><span class="status-active">ACTIVE</span></c:if>
			<c:if test="${client.active == 'false'}"><span class="status-inactive">INACTIVE</span></c:if></span></div>
			<hr>
			<div class="entries-data">
				<div class="left-column">
					<div><h2>Client ID: </h2>${client.id }</div>
					<div><h2>Date of birth: </h2>${client.dateOfBirth}</div>
					<div><h2>Intake date: </h2>${client.intakeDate }</div>
					<div><h2>Last session: </h2>${client.lastSession }</div>
				</div>
				<div class="right-column">
					<div><h2>Presenting issue: </h2>${client.presentingIssue }</div>
					<div><h2>Diagnosis: </h2>${client.diagnosis }</div>
					<div><h2>Referral source: </h2>${client.referralSource }</div>
				</div>
			</div>
		</div>
		<div class="entries-footer">
		<form action="updateClient.do" method="POST">
						<input type="hidden" name="clientId" value="${client.id}">
				<button>Update ${client.firstName } ${client.lastName }</button>

			</form>
		<button>Delete ${client.firstName } ${client.lastName }</button>
		</div>
	</div>
</body>
</html>