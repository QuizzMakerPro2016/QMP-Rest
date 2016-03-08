package com.qmp.rest.services;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;
import com.qmp.rest.models.KUtilisateur;

import net.ko.framework.KoHttp;
import net.ko.kobject.KListObject;

@Path("/user")
public class User extends RestBase {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/all")
	public String all() {
		KListObject<KUtilisateur> users = KoHttp.getDao(KUtilisateur.class).readAll();
		return new Gson().toJson(users.asAL());
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public String getOne(@PathParam("id") int id) {
		KUtilisateur user = KoHttp.getDao(KUtilisateur.class).readById(id);
		if (!user.isLoaded())
			return "null";
		return new Gson().toJson(user);
	}

	@GET
	@Path("/{id}/quizzes")
	public String quizzes(@PathParam("id") int id) {
		/*KGroupe_questionnaire quizzes = KoHttp.getDao(KGroupe_questionnaire.class).readAll("utilisateur_id like '"+id+"'")
		if (!quizzes.isLoaded())
			return "null";
		return new Gson().toJson(quizzes);*/
		return null;
	}

	@GET
	@Path("/{id}/quizzes/done")
	public String quizzesDone() {
		return null;
		/* Todo */

	}

	@GET
	@Path("/recovery/{mail}")
	public String recovery() {
		return null;
		/* Todo */

	}

	@GET
	@Path("/{id}/groups")
	public String groups() {
		return null;
		/* Todo */

	}

	@GET
	@Path("/checkConnected")
	public String checkConnected() {
		return null;
		/* Todo */
	}

	@POST
	@Consumes()
	@Path("/{id}")
	public String updateUser() {
		return null;
		/* Todo */
	}

	@PUT
	public String addUser() {
		return null;
		/* Todo */
	}

	@DELETE
	@Path("/{id}")
	public String deleteUser() {
		return null;
		/* Todo */
	}

}