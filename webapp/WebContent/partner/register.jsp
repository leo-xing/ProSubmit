<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Partner</title>
<link type="text/css" rel="stylesheet" href="/ProSubmit/resources/lib/bootstrap/css/bootstrap.css"> 
<link type="text/css" rel="stylesheet" href="/ProSubmit/resources/css/prosubmit.css"> 

<script type="text/javascript" src="/ProSubmit/resources/js/jquery.js"></script>
<script type="text/javascript" src="/ProSubmit/resources/js/md5.js"></script>
<script type="text/javascript" src="/ProSubmit/resources/js/prosubmit.js"></script>
<script type="text/javascript" src="/ProSubmit/resources/lib/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<div id="body-mask"></div>
	<a id="home-icon-link" href="/ProSubmit/" title="Home">
		<img src="/ProSubmit/resources/icons/home.png" alt="Home"/>
	</a>
	
	<form id="partner-register" action="" class="box-shadow">
		<img src="/ProSubmit/resources/icons/logo-lg.png"/>
		<h4>Register to become a partner with us</h4>
		<div id="partner-register-error-message" class="alert alert-danger"></div>
		
		<fieldset>
    <legend>Personalia:</legend>
    
			<label for="firstname">First Name:</label>
			<input id="firstname" type="text" class="form-control" maxLength="25" value="Sujit"/>
			
			<label for="lastname">Last Name:</label>
			<input id="lastname" type="text" class="form-control" maxLength="25" value="Jagdev"/>
			
			<label for="email">Email:</label>
			<input id="email" type="email" class="form-control" value="burrellramone@gmail.com"/>
			
			<label for="password">Password:</label>
			<input id="password" type="text" class="form-control" maxLength="50" value="prosubmit123"/>
			
			<label for="confirm-password">Confirm Password:</label>
			<input id="confirm-password" type="text" class="form-control" maxLength="50" value="prosubmit123"/>
		</fieldset><br/>

    <fieldset>
    <legend>Company:</legend>
    
			<label for="company">Company:</label>
			<input id="company" type="text" class="form-control" maxLength="100" value="Husla Inc."/>
			
			<label for="url">URL:</label>
      <input id="url" type="text" class="form-control"/>
			
			<label for="jobtitle">Job Title:</label>
			<input id="jobtitle" type="text" class="form-control"/>
			
			<label for="tel">Tel:</label>
			<input id="tel" type="text" class="form-control" maxLength="16" value="1-416-555-3333"/>
			
			<label for="extension">Ext:</label>
	    <input id="extension" type="text" class="form-control" maxLength="10"/>
	    
			<label for="company-addredd">Company Address:</label>
			<input id="company-address" type="text" class="form-control" value="1232 Terrence Ave. Toronto,Ontario M1Y-2K8"/>
		</fieldset>
		<br/>
		<button type="button" class="btn btn-primary" onclick="return proSubmit.registerPartner()">Register Now!</button>
		<br/><br/>
	</form>
</body>
</html>