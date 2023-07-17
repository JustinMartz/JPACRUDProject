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
				<li><a href="createClientPage.do">Create New Entry</a></li>
				<li><a href="index.do">List All Clients</a></li>
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
				<div><h2>Presenting issue: </h2>
					<select name="presentingIssue">
  					<option value="Relationship Issues" <c:if test="${client.presentingIssue == 'Relationship Issues' }">selected</c:if>>Relationship Issues</option>
  					<option value="Depression" <c:if test="${client.presentingIssue == 'Depression' }">selected</c:if>>Depression</option>
 					<option value="Anxiety" <c:if test="${client.presentingIssue == 'Anxiety' }">selected</c:if>>Anxiety</option>
  					<option value="Sleep Issues" <c:if test="${client.presentingIssue == 'Sleep Issues' }">selected</c:if>>Sleep Issues</option>
  					<option value="Addiction" <c:if test="${client.presentingIssue == 'Addiction' }">selected</c:if>>Addiction</option>
  					<option value="Panic Attacks" <c:if test="${client.presentingIssue == 'Panic Attacks' }">selected</c:if>>Panic Attacks</option>
  					<option value="Recent Loss" <c:if test="${client.presentingIssue == 'Recent Loss' }">selected</c:if>>Recent Loss</option>
  					<option value="Life Transition" <c:if test="${client.presentingIssue == 'Life Transition' }">selected</c:if>>Life Transition</option>
  					<option value="PTSD" <c:if test="${client.presentingIssue == 'PTSD' }">selected</c:if>>PTSD</option>
					</select>
					</div>
					<div><h2>Phone: </h2><input name="phoneNumber" type="tel" maxlength=11/ value="${client.phoneNumber}"></div>
					<div><h2>Diagnosis: </h2><input type="text" value="${client.diagnosis}" name="diagnosis"></div>
					<div><h2>Referral source: </h2><input type="text" value="${client.referralSource}" name="referralSource"></div>
					<div><fieldset>
    
    <div><h2>Status: </h2>
      <input type="radio" id="contactChoice1" name="active" value="true" <c:if test="${client.active == true }">checked</c:if>/>
      
      <label for="contactChoice1">Active</label>
      <input type="radio" id="contactChoice2" name="active" value="false" <c:if test="${client.active == false }">checked</c:if>/>
      <label for="contactChoice2">Inactive</label>
      
    </div>
    
  </fieldset></div>
				</div>
				</div>
				<div class="entries-footer">
				<input type="hidden" name="id" value="${client.id}">
					<button>Save</button>
				</form>
				<form action="displayClient.do">
				<input type="hidden" name="id" value="${client.id }" />
				<button>Go back</button>
				</form>
				</div>
			</div>		
		</div>					
	</body>
</html>
