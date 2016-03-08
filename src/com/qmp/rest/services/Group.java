package com.qmp.rest.services;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;

@Path("/group")
public class Group extends RestBase {

	@GET
	@Path("/all")
	public String all() {
		return null;
	}

	@GET
	@Path("/{id}")
	public String getOne() {
		return null;

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