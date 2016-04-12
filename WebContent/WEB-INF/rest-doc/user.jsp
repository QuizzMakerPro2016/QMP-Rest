<h3>Utilisateurs API</h3>

<div class="ui container">
	<div class="row">
		<div class="column">
			<div class="ui accordion">

				<!-- GET ALL-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/all</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer tous les utilisateurs</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>R�cup�rer tous les utilisateurs de la base de donn�es.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-all">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/all/{cd}" data-request="GET" data-container="div#get-users-all" data-form="form#get-users-all">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-all" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
							
						</form>
					</div>
				</div>
				
				<!-- GET COUNT-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/count</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer le nombre d'utilisateurs</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Donne le nombre d'utilisateurs enresgitr�s dans la base.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-count">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><b>(Optionnel)</b> <code>limit</code></td>
										<td><input type="text" name="param-limit" data-default=" " placeholder="limit"></td>
										<td>Limite de la recherche<br><b>D�faut :</b> tous les enregistrements</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/count/{limit}" data-request="GET" data-container="div#get-users-count" data-form="form#get-users-count">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-count" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>
				
				<!-- GET LIMIT-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/limit/{limit}</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer les utlisateurs (avec borne maximum)</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Donne le nombre d'utilisateurs enresgitr�s dans la base (avec borne maximum et minimum).</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-limit">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>limit</code></td>
										<td><input type="text" name="param-limit" data-default=" " placeholder="limit"></td>
										<td>Limite de la recherche</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/limit/{limit}" data-request="GET" data-container="div#get-users-limit" data-form="form#get-users-limit">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-limit" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>
				
				<!-- GET LIMIT OFFSET-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/limit/{offset}/{limit}</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer les utlisateurs (avec borne maximum et minimum)</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Donne le nombre d'utilisateurs enresgitr�s dans la base (avec borne maximum et minimum).</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-limit-offset">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>offset</code></td>
										<td><input type="text" name="param-offset" data-default=" " placeholder="offset"></td>
										<td>D�part de la recherche</td>
									</tr>
									<tr>
										<td><code>limit</code></td>
										<td><input type="text" name="param-limit" data-default=" " placeholder="limit"></td>
										<td>Limite de la recherche</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/limit/{offset}/{limit}/{cd}" data-request="GET" data-container="div#get-users-limit-offset" data-form="form#get-users-limit-offset">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-limit-offset" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>
				
				<!-- GET MODIFS-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/modif/{timestamp}</code></div>
						<div class="ui column right aligned nine wide description"><i>Savoir si des modifications ont eu lieu</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Permet de savoir si il y a eu des modifications sur un ou des utilisateurs (ajout/suppression/modification), depuis le timestamp pass� en param�tre.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-modif">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>timestamp</code></td>
										<td><input type="text" name="param-timestamp" data-default=" " placeholder="timestamp"></td>
										<td>Timestamp de la derni�re verification</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/modif/{timestamp}" data-request="GET" data-container="div#get-users-modif" data-form="form#get-users-modif">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-modif" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>

				<!-- GET-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer un utilisateur par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un utilisateur sp�cifique dans la base de donn�es, par son <code>id</code>.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-id">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="param-id" data-default="" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � rechercher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/{id}/{cd}" data-request="GET" data-container="div#get-users-id" data-form="form#get-users-id">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-id" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>
				
				<!-- GET QUIZZES-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/{id}/quiz</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer les questionnaires affect�s � un utilisateur</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un utilisateur sp�cifique dans la base de donn�es, par son <code>id</code>, et en affiche les questionnaires affect�s.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-user-quiz">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="param-id" data-default="" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � rechercher</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/{id}/quiz" data-request="GET" data-container="div#get-user-quiz" data-form="form#get-user-quiz">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-user-quiz" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>

				<!-- GET ONE MEMBER-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/{id}/one/{member}</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer le membre d'un utilisateur par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un utilisateur sp�cifique dans la base de donn�es, par son <code>id</code>, et donner le membre sp�cifi�. Ici, il s'agi de membre retournant une valeur "simple".</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-member">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="param-id" data-default="" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � rechercher</td>
									</tr>
									<tr>
										<td><code>member</code></td>
										<td>
											<div class="field">
												<select class="ui dropdown" name="param-gr-member" data-field="#param-member-get-users-member">
													<option value="id">ID</option>
													<option value="nom">Nom</option>
													<option value="prenom">Pr�nom</option>
													<option value="mail">Mail</option>
													<option value="password">Mot de Passe</option>
													<option value="rang">Rang</option>
												</select>
												<input type="hidden" value="id" data-default="id" name="param-member" id="param-member-get-users-member">
											</div>
										</td>
										<td>Membre de l'utilisateur � afficher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/{id}/one/{member}/{cd}" data-request="GET" data-container="div#get-users-member" data-form="form#get-users-member">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-member" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>
				
				<!-- GET ALL MEMBER-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/{id}/all/{member}</code></div>
						<div class="ui column right aligned nine wide description"><i>R�cup�rer le membre d'un utilisateur par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un utilisateur sp�cifique dans la base de donn�es, par son <code>id</code>, et donner le membre sp�cifi�. Ici, il s'agi de membre retournant une liste d'�l�ments.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="get-users-member-all">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="param-id" data-default="" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � rechercher</td>
									</tr>
									<tr>
										<td><code>member</code></td>
										<td>
											<div class="field">
												<select class="ui dropdown" name="param-gr-member" data-field="#param-member-get-users-member-all">
													<option value="questions">Questions</option>
													<option value="questionnaires">Questionnaires</option>
													<option value="realisations">R�alisations</option>
													<option value="groupes">Groupes</option>
												</select>
												<input type="hidden" value="id" data-default="id" name="param-member" id="param-member-get-users-member-all">
											</div>
										</td>
										<td>Membre de l'utilisateur � afficher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entit�s li�es.<br> <b>D�faut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="user/{id}/all/{member}/{cd}" data-request="GET" data-container="div#get-users-member-all" data-form="form#get-users-member-all">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-users-member-all" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>

			<!-- POST -->	

				<div class="title">
					<div class="ui grid post">
						<div class="ui column center aligned one wide request">POST</div>
						<div class="ui column six wide url"><code>/user/connect</code></div>
						<div class="ui column right aligned nine wide description"><i>V�rifie si un utilisateur peut se connecter</i></div>
					</div>
				</div>
				<div class="post-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>V�rifie que le couple <code>login</code>/<code>password</code> pass� par un formulaire HTTP correspondent bien � un utilisateur et qu'il peut donc se connecter.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="post-user">
							<div class="ui divider"></div>
							<h4><i class="file text outline icon"></i>Formulaire</h4>
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>mail</code></td>
										<td><input type="text" name="login" placeholder="mail"></td>
										<td>Adresse Email de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>password</code></td>
										<td><input type="text" name="password" placeholder="password"></td>
										<td>Mot de passe de l'utilisateur</td>
									</tr>
										<td><input type="hidden" name="cd" value="0"></td>

								</tbody>
							</table>

							<a class="ui right labeled icon button green btn-ajax" data-ajax="user/connect" data-request="POST" data-container="div#post-user" data-form="form#post-user">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="post-user" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>
				
				<!-- POST -->

				<div class="title">
					<div class="ui grid post">
						<div class="ui column center aligned one wide request">POST</div>
						<div class="ui column six wide url"><code>/user/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Mettre � jour un utilisateur</i></div>
					</div>
				</div>
				<div class="post-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Mettre � jour l'utilisateur d'id <code>{id}</code> avec les donn�es pass�es par un formulaire HTTP.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="post-user">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="param-id" data-default="" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � rechercher</td>
									</tr>
								</tbody>
							</table>
							
							<div class="ui divider"></div>

							<h4><i class="file text outline icon"></i>Formulaire</h4>
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>mail</code></td>
										<td><input type="text" name="mail" placeholder="mail"></td>
										<td>Adresse Email de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>password</code></td>
										<td><input type="text" name="password" placeholder="password"></td>
										<td>Mot de passe de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>nom</code></td>
										<td><input type="text" name="nom" placeholder="nom"></td>
										<td>Nom de Famille de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>prenom</code></td>
										<td><input type="text" name="prenom" placeholder="prenom"></td>
										<td>Pr�nom de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>idRang</code></td>
										<td><input type="text" name="idRang" placeholder="idRang"></td>
										<td>Identifiant du rang de l'utilisateur</td>
									</tr>
								</tbody>
							</table>

							<a class="ui right labeled icon button green btn-ajax" data-ajax="user/update/{id}" data-request="POST" data-container="div#post-user" data-form="form#post-user">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="post-user" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>


				<!-- PUT -->

				<div class="title">
					<div class="ui grid put">
						<div class="ui column center aligned one wide request">PUT</div>
						<div class="ui column six wide url"><code>/user/add</code></div>
						<div class="ui column right aligned nine wide description"><i>Ajouter un utilisateur</i></div>
					</div>
				</div>
				<div class="put-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Ajouter un nouvel utilisateur avec les donn�es pass�es par un formulaire HTTP.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="put-user">
							Aucun Param�tre pour cette fonction...
							
							<div class="ui divider"></div>

							<h4><i class="file text outline icon"></i>Formulaire</h4>
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>mail</code></td>
										<td><input type="text" name="mail" placeholder="mail"></td>
										<td>Adresse Email de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>password</code></td>
										<td><input type="text" name="password" placeholder="password"></td>
										<td>Mot de passe de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>nom</code></td>
										<td><input type="text" name="nom" placeholder="nom"></td>
										<td>Nom de Famille de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>prenom</code></td>
										<td><input type="text" name="prenom" placeholder="prenom"></td>
										<td>Pr�nom de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>idRang</code></td>
										<td><input type="text" name="idRang" placeholder="idRang"></td>
										<td>Identifiant du rang de l'utilisateur</td>
									</tr>
								</tbody>
							</table>

							<a class="ui right labeled icon button brown btn-ajax" data-ajax="user/add" data-request="PUT" data-container="div#put-user" data-form="form#put-user">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="put-user" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>

				<!-- DELETE -->

				<div class="title">
					<div class="ui grid delete">
						<div class="ui column center aligned one wide request">DELETE</div>
						<div class="ui column six wide url"><code>/user/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Supprimer un utilisateur existant</i></div>
					</div>
				</div>
		
				<div class="delete-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Supprime un utilisateur par son <code>{id}</code>.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Param�tres</h4>
						<form class="ui form" id="delete-user">
							<table class="ui celled table">
								<thead>
									<tr>
										<th>Nom</th>
										<th>Valeur</th>
										<th>Notes</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><code>id</code></td>
										<td><input type="text" name="param-id" id="id" placeholder="id"></td>
										<td>Identifiant de l'utilisateur � supprimer</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button red btn-ajax" data-ajax="user/{id}" data-request="DELETE" data-container="div#delete-user" data-form="form#delete-user">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="delete-user" style="margin-top:15px">
								<div class="msg"></div>
								<pre style="max-height:300px;display:none; padding:0"><code class="highlight" style="margin:0"></code></pre>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="<%=request.getServletContext().getContextPath()%>/js/doc.js">
	