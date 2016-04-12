
<h3>Groupes API</h3>
<div class="ui container">
	<div class="row">
		<div class="column">
			<div class="ui accordion">

				<!-- GET ALL-->
				<div class="title">
					<div class="ui grid get">
						<div class="ui column center aligned one wide request">GET</div>
						<div class="ui column six wide url"><code>/group/all</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer tous les groupes</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Récupérer tous les groupes de la base de données.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="get-group-all">
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
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="group/all/{cd}" data-request="GET" data-container="div#get-group-all" data-form="form#get-group-all">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-group-all" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/count</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer le nombre de groupes</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Donne le nombre de groupes enresgitrés dans la base.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="get-group-count">
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
										<td>Limite de la recherche<br><b>Défaut :</b> tous les enregistrements</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="group/count/{limit}" data-request="GET" data-container="div#get-group-count" data-form="form#get-group-count">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-group-count" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/limit/{limit}</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer les groupes (avec borne maximum)</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Récupère les groupes enresgitrés dans la base (avec borne maximum et minimum).</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="get-group-limit">
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
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="group/limit/{limit}" data-request="GET" data-container="div#get-group-limit" data-form="form#get-group-limit">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-group-limit" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/limit/{offset}/{limit}</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer les groupes (avec borne maximum et minimum)</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Récupère les groupes enresgitrés dans la base (avec borne maximum et minimum).</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="get-group-limit-offset">
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
										<td>Départ de la recherche</td>
									</tr>
									<tr>
										<td><code>limit</code></td>
										<td><input type="text" name="param-limit" data-default=" " placeholder="limit"></td>
										<td>Limite de la recherche</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entités liées.<br> <b>Défaut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="group/limit/{offset}/{limit}/{cd}" data-request="GET" data-container="div#get-group-limit-offset" data-form="form#get-group-limit-offset">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-group-limit-offset" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/modif/{timestamp}</code></div>
						<div class="ui column right aligned nine wide description"><i>Savoir si des modifications ont eu lieu</i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Permet de savoir si il y a eu des modifications sur un ou des groupes (ajout/suppression/modification), depuis le timestamp passé en paramètre.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="get-group-modif">
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
										<td>Timestamp de la dernière verification</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="group/modif/{timestamp}" data-request="GET" data-container="div#get-group-modif" data-form="form#get-group-modif">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-group-modif" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer un groupe par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un groupe spécifique dans la base de données, par son <code>id</code>.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="get-group-id">
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
										<td>Identifiant du groupe à rechercher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entités liées.<br> <b>Défaut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="group/{id}/{cd}" data-request="GET" data-container="div#get-group-id" data-form="form#get-group-id">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-group-id" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/{id}/one/{member}</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer le membre d'un groupe par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un groupe spécifique dans la base de données, par son <code>id</code>, et donner le membre spécifié. Ici, il s'agi de membre retournant une valeur "simple".</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="get-groups-member">
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
										<td>Identifiant du groupe à rechercher</td>
									</tr>
									<tr>
										<td><code>member</code></td>
										<td>
											<div class="field">
												<select class="ui dropdown" name="param-gr-member" data-field="#param-member-get-groups-member">
													<option value="id">ID</option>
													<option value="code">Code</option>
													<option value="libelle">Libelle</option>
												</select>
												<input type="hidden" value="id" data-default="id" name="param-member" id="param-member-get-groups-member">
											</div>
										</td>
										<td>Membre du groupe à afficher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entités liées.<br> <b>Défaut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="group/{id}/one/{member}/{cd}" data-request="GET" data-container="div#get-groups-member" data-form="form#get-groups-member">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-groups-member" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/{id}/all/{member}</code></div>
						<div class="ui column right aligned nine wide description"><i>Récupérer le membre d'un groupe par son <code>id</code></i></div>
					</div>
				</div>
				<div class="get-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Rechercher un groupe spécifique dans la base de données, par son <code>id</code>, et donner le membre spécifié. Ici, il s'agi de membre retournant une liste d'éléments.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="get-groups-member-all">
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
										<td>Identifiant du groupe à rechercher</td>
									</tr>
									<tr>
										<td><code>member</code></td>
										<td>
											<div class="field">
												<select class="ui dropdown" name="param-gr-member" data-field="#param-member-get-groups-member-all">
													<option value="questionnaires">Questionnaires</option>
													<option value="utilisateurs">Utilisateurs</option>
												</select>
												<input type="hidden" value="id" data-default="id" name="param-member" id="param-member-get-groups-member-all">
											</div>
										</td>
										<td>Membre du groupe à afficher</td>
									</tr>
									<tr>
										<td><b>(Optionnel)</b> <code>cd</code></td>
										<td><input type="text" name="param-cd" data-default="1" placeholder="cd"></td>
										<td>"Constraint Depth" = profondeur de recherche des entités liées.<br> <b>Défaut : </b> 1</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button blue btn-ajax" data-ajax="group/{id}/all/{member}/{cd}" data-request="GET" data-container="div#get-groups-member-all" data-form="form#get-groups-member-all">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="get-groups-member-all" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Mettre à jour un groupe</i></div>
					</div>
				</div>
				<div class="post-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Mettre à jour le groupe d'id <code>{id}</code> avec les données passées par un formulaire HTTP.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="post-group">
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
										<td>Identifiant du groupe à rechercher</td>
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
										<td><code>libelle</code></td>
										<td><input type="text" name="libelle" placeholder="libelle"></td>
										<td>Libelle du groupe</td>
									</tr>
									<tr>
										<td><code>code</code></td>
										<td><input type="text" name="code" placeholder="code"></td>
										<td>Code du groupe</td>
									</tr>
								</tbody>
							</table>

							<a class="ui right labeled icon button green btn-ajax" data-ajax="group/update/{id}" data-request="POST" data-container="div#post-group" data-form="form#post-group">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="post-group" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/add</code></div>
						<div class="ui column right aligned nine wide description"><i>Ajouter un groupe</i></div>
					</div>
				</div>
				<div class="put-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Ajouter un nouveau groupe avec les données passées par un formulaire HTTP.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="put-group">
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
										<td><code>libelle</code></td>
										<td><input type="text" name="libelle" placeholder="libelle"></td>
										<td>Libelle du groupe</td>
									</tr>
									<tr>
										<td><code>code</code></td>
										<td><input type="text" name="code" placeholder="code"></td>
										<td>Code du groupe</td>
									</tr>
								</tbody>
							</table>

							<a class="ui right labeled icon button brown btn-ajax" data-ajax="group/add" data-request="PUT" data-container="div#put-group" data-form="form#put-group">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="put-group" style="margin-top:15px">
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
						<div class="ui column six wide url"><code>/group/{id}</code></div>
						<div class="ui column right aligned nine wide description"><i>Supprimer un groupe existant</i></div>
					</div>
				</div>
		
				<div class="delete-content content"><br>
					<div style="margin:15px;">
						<h4><i class="tag icon"></i>Description</h4>
						<p>Supprime un groupe par son <code>{id}</code>.</p>

						<div class="ui divider"></div>

						<h4><i class="settings icon"></i>Paramètres</h4>
						<form class="ui form" id="delete-group">
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
										<td>Identifiant du groupe à supprimer</td>
									</tr>
								</tbody>
							</table>
							<a class="ui right labeled icon button red btn-ajax" data-ajax="group/{id}" data-request="DELETE" data-container="div#delete-group" data-form="form#delete-group">
							  <i class="right arrow icon"></i>
							  Tester
							</a>
							<div id="delete-group" style="margin-top:15px">
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
	