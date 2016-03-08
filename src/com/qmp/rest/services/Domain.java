package com.qmp.rest.services;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import net.ko.framework.KoHttp;
import net.ko.kobject.KListObject;

import com.google.gson.Gson;
import com.qmp.rest.models.KDomaine;

@Path("/domain")
public class Domain extends RestBase {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/")
	public String index() {
		return getAll();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/all")
	public String getAll() {
		KListObject<KDomaine> domains = KoHttp.getDao(KDomaine.class).readAll();
		return new Gson().toJson(domains.asAL());
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public String getOne(@PathParam("id") int id) {
		KDomaine domain = KoHttp.getDao(KDomaine.class).readById(id);
		if (!domain.isLoaded())
			return "null";
		return new Gson().toJson(domain);
	}

}
