<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles/style.css">

</head>
<body>
	<div class="card-container">
	<div class="header-container">
			<h1>
				Client Portal</h1><span>12 days remaining of free trial</span>
			
		</div>
		<div class="nav-bar">
			<ul>
				<li><a href="createClientPage.do">Create New Entry</a></li>
				<li><a href="index.do">List All Clients</a></li>
			</ul>
		</div>
<div style='margin: 2em;'><h1 style='font-size: 2em;'>${message }</h1></div>
	</div>

</body>
</html>