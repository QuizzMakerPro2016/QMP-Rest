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
import com.google.gson.GsonBuilder;
//import com.qmp.adapters.GroupeAdapter;
//import com.qmp.adapters.UtilisateurAdapter;
import com.qmp.rest.models.KGroupe;
import com.qmp.rest.models.KRealisation;
import com.qmp.rest.models.KUtilisateur;

import net.ko.framework.KoHttp;
import net.ko.framework.KoSession;
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
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}/quizzes")
	public String quizzes(@PathParam("id") int id) {
		/*
		KUtilisateur user = KoHttp.getDao(KUtilisateur.class).readById(id);
		KListObject<KGroupe_utilisateur> groups = user.getGroupe_utilisateurs();
		
		return new Gson().toJson(); */
		return null;
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}/quizzes/done")
	public String quizzesDone(@PathParam("id") int id) {
		KUtilisateur user = KoHttp.getDao(KUtilisateur.class).readById(id);
		KListObject<KRealisation> quizzes = user.getRealisations();
		return new Gson().toJson(quizzes.asAL());
	}

	@GET
	@Path("/recovery/{mail}")
	public String recovery() {
		return null;
		/* Todo */

	}

	@GET
	@Path("/{id}/groups")
	public String groups(@PathParam("id") int id) {
		/*KUtilisateur user = KoSession.kloadOne(KUtilisateur.class,id);
		GsonBuilder builder=new GsonBuilder();
		builder.registerTypeAdapter(KGroupe.class, new GroupeAdapter());
		builder.registerTypeAdapter(KUtilisateur.class, new UtilisateurAdapter());
		Gson gson=builder.create();
		return gson.toJson(user.getGroupes().asAL());*/
		return "null";
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