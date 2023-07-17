<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create new client</title>
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
				<form action="createClient.do" method="POST">
				<div class="entries-data">
				<div class="left-column">
					<div><h2>First name: </h2><input type="text" name="firstName" required></div>
					<div><h2>Last name: </h2><input type="text" name="lastName" required></div>
					<div><h2>Birth date: </h2><input type="date" name="dateOfBirth" } value="2017-06-01"/></div>
					<div><h2>Intake date: </h2><input type="date" name="intakeDate" value="2017-06-01"} /></div>
					<div><h2>Last session: </h2><input type="datetime-local" name="lastSession" value="2017-06-01T08:30"></div>
				</div>
				<div class="right-column">
					<div>
						<label for="telNo"><h2>Phone number: </h2></label>
						<input name="phoneNumber" type="tel" maxlength=11/>
					</div>
				
					<div><h2>Presenting issue: </h2>
					<select name="presentingIssue">
  					<option value="Relationship Issues">Relationship Issues</option>
  					<option value="Depression">Depression</option>
 					<option value="Anxiety">Anxiety</option>
  					<option value="Sleep Issues">Sleep Issues</option>
  					<option value="Addiction">Addiction</option>
  					<option value="Panic Attacks">Panic Attacks</option>
  					<option value="Recent Loss">Recent Loss</option>
  					<option value="Life Transition">Life Transition</option>
  					<option value="PTSD">PTSD</option>
					</select>
					</div>
					<div><h2>Diagnosis: </h2><input type="text" name="diagnosis"></div>
					<div><h2>Referral source: </h2><input type="text" name="referralSource"></div>
					
				</div>
				</div>
				<div class="entries-footer">
					<button>Create</button>
				</form>
				<a href="index.do"><button>Go back</button></a>
				</div>
			</div>		
		</div>

</body>
</html>