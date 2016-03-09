package com.qmp.rest.services;

import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;

import sun.security.krb5.internal.util.KrbDataOutputStream;
import net.ko.framework.KoHttp;
import net.ko.kobject.KListObject;

import com.google.gson.Gson;
import com.qmp.rest.models.KDomaine;
import com.qmp.rest.models.KReponse;

/**
 * @author Antoine
 * Domain REST Functions
 */
@Path("/domain")
public class Domain extends RestBase {
	
	/**
	 * Return all Domains
	 * @return JSON Domains List
	 */
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/")
	public String index() {
		return getAll();
	}

	/**
	 * Return all Domains
	 * @return JSON Domains List
	 */
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/all")
	public String getAll() {
		KListObject<KDomaine> domains = KoHttp.getDao(KDomaine.class).readAll();
		return new Gson().toJson(domains.asAL());
	}
	
	
	/**
	 * Get domain by ID
	 * @param id - Searched Domain's id
	 * @return JSON Domain with id parameter
	 */
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public String getOne(@PathParam("id") int id) {
		KDomaine domain = KoHttp.getDao(KDomaine.class).readById(id);
		if (!domain.isLoaded())
			return "null";
		return new Gson().toJson(domain);
	}
	
	/**
	 * Add a domain in DB using form passed in POST Request
	 * @param formParams POST form with domain data
	 * @return Error or Success Message
	 * @throws SQLException
	 */
	@PUT
	@Path("/")
	@Consumes("application/x-www-form-urlencoded")
	public String addOne(MultivaluedMap<String, String> formParams)
			throws SQLException {
		KDomaine domain = new KDomaine();

		String message = "{\"message\": \"Insert OK\"}";
		for (String param : formParams.keySet()) {
			try {
				String value = formParams.get(param) + "";
				value = value.replaceFirst("^\\[(.*)\\]$", "$1");
				domain.setAttribute(param, value, false);
			} catch (SecurityException | IllegalArgumentException
					| NoSuchFieldException | IllegalAccessException
					| InvocationTargetException e) {
				message = "{\"message\": \" "+e.toString()+" }";

			}
		}
		KoHttp.getDao(KDomaine.class).create(domain);
		return message;
	}
	
	/**
	 * Update a domain in DB using form passed in POST Request
	 * @param formParams POST form with domain data
	 * @return Error or Success Message
	 * @throws SQLException
	 */
	@POST
	@Path("/update")
	@Consumes("application/x-www-form-urlencoded")
	public String updateAnswer(MultivaluedMap<String, String> formParams)
			throws SQLException {
		int id = Integer.valueOf(formParams.get("id").get(0));
		KDomaine domain = KoHttp.getDao(KDomaine.class).readById(id);
		
		if (!domain.isLoaded())
			return "{\"message\": \"Error while loading Domain with id " + String.valueOf(id) + "\"}";

		String message = "{\"message\": \"Update OK\"}";
		for (String param : formParams.keySet()) {
			try {
				String value = formParams.get(param) + "";
				value = value.replaceFirst("^\\[(.*)\\]$", "$1");
				domain.setAttribute(param, value, false);
			} catch (SecurityException | IllegalArgumentException
					| NoSuchFieldException | IllegalAccessException
					| InvocationTargetException e) {
				message = "{\"message\": \" "+e.toString()+" }";

			}
		}
		KoHttp.getDao(KDomaine.class).update(domain);
		
		return message;
	}

}
