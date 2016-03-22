<%@include file="WEB-INF/rest-doc/header.jsp" %>
<%@page import="net.ko.framework.KoHttp"%>
		<h2 class="ui dividing header">QuizzMakerPro API Doc</h2>
		<div class="ui message brown">
			<div class="content">
				<div class="header">
				L'API QMP-REST vous permet d'accéder aux informations des questionnaires, des utilisateurs...
				</div>
			</div>
		</div>
		<p>Cette page vous permet d'accéder aux differentes sections de la documentation de l'API. </p>
		<h6></h6>
		<button class="ui basic button" id="btnUser">
		  <i class="alarm icon"></i>
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
		<div class="content">
		
		</div>	
	
	<a href="#" class="btn" id="btnOk">Okay...</a>

	<div id="response">
	
	</div>
	<%=KoHttp.kajaxIncludes(request) %>

<%@include file="WEB-INF/rest-doc/footer.jsp" %>