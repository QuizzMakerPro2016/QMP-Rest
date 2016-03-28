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
		  <i class="user icon "></i>
		  User
		</button>
		<button class="ui basic button" id="btnGroup">
		  <i class="users icon"></i>
		  Group
		</button>
		<button class="ui basic button">
		  <i class=" users icon"></i>
		  UserGroup
		</button>
		<button class="ui basic button">
		  <i class="help icon"></i>
		  Quizz
		</button>
		<button class="ui basic button">
		  <i class="checkmark box icon"></i>
		  Question
		</button>
		<button class="ui basic button">
		  <i class="quote right icon"></i>
		  Answer
		</button>
		<button class="ui basic button">
		  <i class="university icon"></i>
		  Domain
		</button>
		<button class="ui basic button">
		  <i class="sitemap icon"></i>
		  Rank
		</button>
		<div class="content">
		
		</div>	

	<div id="response">
	<h3 style="text-align: center;"><i class="find icon"></i> Aucune documentation n'a encore été chargée ! Cliquez sur un bouton pour en charger une. <i class="find icon"></i></h3>
	</div>
	<%=KoHttp.kajaxIncludes(request) %>

<%@include file="WEB-INF/rest-doc/footer.jsp" %>