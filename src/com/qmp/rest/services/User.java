package com.qmp.rest.services;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;

@Path("/user")
public class User extends RestBase {

	@GET
	@Path("/all")
	public String all() {
		return null;
		/* Todo */
	}

	@GET
	@Path("/{id}")
	public String getOne() {
		return null;
		/* Todo */
	}

	@GET
	@Path("/{id}/quizzes")
	public String quizzes() {
		return null;
		/* Todo */
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