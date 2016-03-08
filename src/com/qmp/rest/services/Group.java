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
import com.qmp.rest.models.KGroupe;

import net.ko.framework.KoHttp;
import net.ko.kobject.KListObject;

@Path("/group")
public class Group extends RestBase {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/all")
	public String all() {
		KListObject<KGroupe> groups = KoHttp.getDao(KGroupe.class).readAll();
		return new Gson().toJson(groups.asAL());
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public String getOne(@PathParam("id") int id) {
		KGroupe group = KoHttp.getDao(KGroupe.class).readById(id);
		if (!group.isLoaded())
			return "null";
		return new Gson().toJson(group);
	}

	@GET
	@Path("/{id}/quizzes")
	public String quizzes() {
		return null;

	}

	@GET
	@Path("/{id}/users")
	public String users() {
		return null;

	}

	@PUT
	public String addGroup() {
		return null;

	}

	@POST
	@Consumes()
	@Path("/{id}")
	public String updateGroup() {
		return null;

	}

	@DELETE
	@Path("/{id}")
	public String deleteGroup() {
		return null;

	}

}