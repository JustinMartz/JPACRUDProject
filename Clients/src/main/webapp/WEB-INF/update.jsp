<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update ${client.firstName} ${client.lastName}</title>
<link rel="stylesheet" type="text/css" href="styles/style.css">

</head>
	<body>
		<div class="card-container">
			<div class="header-container">
				<h1>Client Portal</h1>
				<span>12 days remaining of free trial</span>

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
			</ul>
		</div>
			<div class="update-container">
				<form action="saveInfo.do" method="POST">
				<div class="entries-data">
				<div class="left-column">
					<div><h2>First name: </h2><input type="text" value="${client.firstName}" name="firstName"></div>
					<div><h2>Last name: </h2><input type="text" value="${client.lastName}" name="lastName"></div>
					<div><h2>Birth date: </h2><input type="date" value="${client.dateOfBirth}" name="dateOfBirth" } /></div>
					<div><h2>Intake date: </h2><input type="date" value="${client.intakeDate}" name="intakeDate" } /></div>
					<div><h2>Last session: </h2><input type="datetime-local" name="lastSession" value="${client.lastSession }"></div>
				</div>
				<div class="right-column">
					<div><h2>Diagnosis: </h2><input type="text" value="${client.diagnosis}" name="diagnosis"></div>
					<div><h2>Referral source: </h2><input type="text" value="${client.referralSource}" name="referralSource"></div>
					<div><fieldset>
    
    <div><h2>Status: </h2>
      <input type="radio" id="contactChoice1" name="active" value="${client.active }" <c:if test="${client.active == true }">checked</c:if>/>
      
      <label for="contactChoice1">Active</label>
      <input type="radio" id="contactChoice2" name="active" value="${client.active }" <c:if test="${client.active == false }">checked</c:if>/>
      <label for="contactChoice2">Inactive</label>
      
    </div>
    
  </fieldset></div>
				</div>
				</div>
				<input type="hidden" name="id" value="${client.id}">
					<button>Save</button>
				</form>
				<a href="displayClient.do?id=${client.id}"><button>Go back</button></a>
			</div>		
		</div>					
	</body>
</html>
