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