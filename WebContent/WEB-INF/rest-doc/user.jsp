
<div class="ui container">
	<div class="row">
		<div class="column">
			<div class="ui accordion">

				<!-- GET ALL-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/all</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer tous les utilisateurs</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Récupérer tous les utilisateurs de la base de données.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
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
										<td>"Constraint Depth" = profondeur de recherche des entités liées.<br> <b>Défaut : </b> 1</td>
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

				<!-- GET-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer un utilisateur par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un utilisateur spécifique dans la base de données, par son <code>id</code>.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
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
										<td>Identifiant de l'utilisateur à rechercher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entités liées.<br> <b>Défaut : </b> 1</td>
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

				<!-- GET-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/user/{id}/one/{member}</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer le membre d'un utilisateur par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un utilisateur spécifique dans la base de données, par son <code>id</code>, et donner le membre spécifié.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
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
										<td>Identifiant de l'utilisateur à rechercher</td>
									</tr>
									<tr>
										<td><code>member</code></td>
										<td>
											<div class="field">
												<select class="ui dropdown" name="param-gr-member" data-field="#param-member-get-users-member">
													<option value="id">ID</option>
													<option value="nom">Nom</option>
													<option value="prenom">Prénom</option>
													<option value="mail">Mail</option>
													<option value="password">Mot de Passe</option>
													<option value="rang">Rang</option>
													<option value="questions">Questions</option>
													<option value="questionnaires">Questionnaires</option>
													<option value="realisations">Réalisations</option>
													<option value="groupes">Groupes</option>
												</select>
												<input type="hidden" value="id" data-default="id" name="param-member" id="param-member-get-users-member">
											</div>
										</td>
										<td>Membre de l'utilisateur à afficher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entités liées.<br> <b>Défaut : </b> 1</td>
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

				<!-- POST -->

				<div class="title">
					<div class="ui grid post">
						<div class="ui column center aligned one wide request">POST</div>
						<div class="ui column six wide url"><code>/user/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Mettre à jour un utilisateur</i></div>
					</div>
				</div>
				<div class="post-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Mettre à jour l'utilisateur d'id <code>{id}</code> avec les données passées par un formulaire HTTP.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
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
										<td>Identifiant de l'utilisateur à rechercher</td>
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
										<td>Prénom de l'utilisateur</td>
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
						<div class="ui column six wide url"><code>/user</code></div>
						<div class="ui column right aligned nine wide description"><i>Ajouter un utilisateur</i></div>
					</div>
				</div>
				<div class="put-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Ajouter un nouvel utilisateur avec les données passées par un formulaire HTTP.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form">
							Aucun Paramètre pour cette fonction...
							
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
										<td>Prénom de l'utilisateur</td>
									</tr>
									<tr>
										<td><code>idRang</code></td>
										<td><input type="text" name="idRang" placeholder="idRang"></td>
										<td>Identifiant du rang de l'utilisateur</td>
									</tr>
								</tbody>
							</table>

							<button class="ui right labeled icon button brown">
							  <i class="right arrow icon"></i>
							  Tester
							</button>
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

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form">
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
										<td><input type="text" name="count" id="count" placeholder="id"></td>
										<td>Identifiant de l'utilisateur à supprimer</td>
									</tr>
								</tbody>
							</table>
							<button class="ui right labeled icon button red">
							  <i class="right arrow icon"></i>
							  Tester
							</button>
						</form>
					</div>
				</div>


			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="<%=request.getServletContext().getContextPath()%>/js/doc.js">
	