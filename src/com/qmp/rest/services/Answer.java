package com.qmp.rest.services;

import javax.servlet.ServletContext;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import net.ko.framework.KoHttp;
import net.ko.kobject.KListObject;

import com.google.gson.Gson;
import com.qmp.rest.models.KReponse;

@Path("/answer")
public class Answer extends RestBase{
	
	@Context
	protected ServletContext context;

	@Context
	public void setServletContext(ServletContext context) {
		this.context = context;
		KoHttp.kstart(context);
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/all")
	public String all() {
		KListObject<KReponse> answers = KoHttp.getDao(KReponse.class).readAll();
		return new Gson().toJson(answers.asAL());
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public String getOne(@PathParam("id") int id) {
		KReponse answer = KoHttp.getDao(KReponse.class).readById(id);
		if (!answer.isLoaded())
			return "null";
		return new Gson().toJson(answer);
	}

}
