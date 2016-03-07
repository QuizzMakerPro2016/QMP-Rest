package com.qmp.rest.services;

import javax.ws.rs.core.Context;

import net.ko.framework.KoHttp;

@Path("/user")
public class User extends RestBase{

	@GET
	@Path("/all")
	public void all(){
		/* Todo */
	}
	
	@GET
	@Path("/{id}")
	public void getOne(){
		/* Todo */
	}	

	@GET
	@Path("/{id}/quizzes")
	public void quizzes(){
		/* Todo */
	}
	
	@GET
	@Path("/{id}/quizzes/done")
	public void quizzesDone(){
		/* Todo */
		
	}
	
	@GET
	@Path("/recovery/{mail}")
	public void quizzesDone(){
		/* Todo */
		
	}
	
	@GET
	@Path("/{id}/groups")
	public void groups(){
		/* Todo */
		
	}
	
	@GET
	@Path("/checkConnected")
	public void checkConnected(){
		/* Todo */
	}
	
	@POST
	@Path("/{id}")
	public void updateUser(){
		/* Todo */
	}
	
	@PUT
	public void addUser(){
		/* Todo */
	}
	
	@DELETE
	@Path("/{id}")
	public void deleteUser(){
		/* Todo */
	}
	

}