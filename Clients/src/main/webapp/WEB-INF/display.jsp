<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
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
							Name</a> <a href="#">Find All Clients</a>
					</div></li>
				<li><a href="#news">Update</a></li>
				<li><a href="#destroy">Destroy</a></li>
			</ul>
		</div>
		<div class="entries-container">
			<div class="entries-header"><h1>${client.firstName} ${client.lastName }</h1>
			<span>${fn:substring(client.phoneNumber, 0, 1)} (${fn:substring(client.phoneNumber, 1, 4)}) ${fn:substring(client.phoneNumber, 4, 7)}-${fn:substring(client.phoneNumber, 7, 11)} </span><span>Active: ${client.active}</span></div>
			<hr>
			<div class="entries-data">
			<h2>Client ID: </h2>${client.id }
			<h2>Date of birth: </h2>${client.dateOfBirth }
			</div>
		</div>
		<div class="entries-footer">
		<button>Update ${client.firstName } ${client.lastName }</button>
		<button>Destroy ${client.firstName } ${client.lastName }</button>
		</div>
	</div>
</body>
</html>