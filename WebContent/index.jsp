<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String path = request.getServletContext().getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="<%=path%>/js/semantic.min.js"></script>
	<script   src="https://code.jquery.com/jquery-2.2.1.min.js"   integrity="sha256-gvQgAFzTH6trSrAWoH1iPo9Xc96QxSZ3feW6kem+O00="   crossorigin="anonymous"></script>
	<link rel="stylesheet" href="<%=path%>/css/semantic.min.css">
	<link rel="stylesheet" href="<%=path%>/css/custom.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>QMP-REST-DOC</title>
</head>
<body>
<!-- HEADER -->
	<div class="ui inverted pointing menu" id="menu-large">
		<div class="ui container">
			<div class="header item">QMP-REST</div>
			<div class="active item">Index</div>
			<div class="ui dropdown item" id="dropdown-menu" tabindex="0">
			    Docs
			    <i class="dropdown icon"></i>
			    <div class="menu transition hidden" tabindex="-1">
			      <div class="item">User</div>
			      <div class="item">Group</div>
			      <div class="item">UserGroup</div>
			      <div class="item">Answer</div>
			      <div class="item">Quizz</div>
			      <div class="item">Question</div>
			      <div class="item">Domain</div>
			      <div class="item">Rank</div>	      
			    </div>
			  </div>
		</div>
	</div>
	<!-- Corps -->
	<div class="ui container material-shadow" id="background-white">
		<h2 class="ui dividing header">QuizzMakerPro API Doc</h2>
		<div class="ui message brown">
			<div class="content">
				<div class="header">
				The QMP-REST Api let you have access to all informations concerning users, quizz and more.
				</div>
			</div>
		</div>
		<p>This page gives you all the informations you need to know to use the API, you can navigate throughout the navbar or just click one of the button below. </p>
		<button class="ui basic button">
		  <i class="icon user"></i>
		  User
		</button>
		<button class="ui basic button">
		  <i class="icon user"></i>
		  Group
		</button>
		<button class="ui basic button">
		  <i class="icon user"></i>
		  UserGroup
		</button>
		<button class="ui basic button">
		  <i class="icon user"></i>
		  Quizz
		</button>
		<button class="ui basic button">
		  <i class="icon user"></i>
		  Question
		</button>
		<button class="ui basic button">
		  <i class="icon user"></i>
		  Answer
		</button>
		<button class="ui basic button">
		  <i class="icon user"></i>
		  Domain
		</button>
		<button class="ui basic button">
		  <i class="icon user"></i>
		  Rank
		</button>
		
	</div>
	
	<div class="ui inverted vertical footer segment">
    <div class="ui center aligned container">
    <img src="<%= path %>/images/logo-10.png" class="ui mini centered image">
      <div class="ui inverted section divider"></div>
      
      <div class="ui horizontal inverted small divided link list">
        <a class="item" href="#">Contact Us</a>
        <a class="item" href="#">Terms and Conditions</a>
        <a class="item" href="#">Privacy Policy</a>
      </div>
    </div>
  </div>
</body>
<script>
$('#dropdown-menu')
.dropdown()
;
</script>
</html>