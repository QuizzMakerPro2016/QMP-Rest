package com.qmp.rest.services;

import javax.ws.rs.core.Context;

import net.ko.framework.KoHttp;

@Path("/group")
public class User extends RestBase{

	@GET
	@Path("/all")
	public void all(){
	}
	
	@GET
	@Path("/{id}")
	public void getOne(){
		
	}	
	
	@GET
	@Path("/{id}/quizzes")
	public void quizzes(){
		
	}
	
	@GET
	@Path("/{id}/users")
	public void users(){
		
	}
	
	@PUT
	public void addGroup(){
		
	}
	
	@POST
	@Path("/{id}")
	public void updateGroup(){
		
	}
	
	@POST
	@Path("/{id}")
	public void deleteGroup(){
		
	}

}