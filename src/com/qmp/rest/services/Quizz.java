/**
 * 
 */
package com.qmp.rest.services;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import net.ko.framework.KoHttp;
import net.ko.kobject.KListObject;

import com.google.gson.Gson;
import com.qmp.rest.models.KQuestionnaire;

/**
 * @author aleboisselier
 *
 */
@Path("/quizz")
public class Quizz extends RestBase {
	
	/**
	 * Return all Quizzes
	 * @return JSON Quizzes List
	 */
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/")
	public String index() {
		return getAll();
	}

	/**
	 * Return all Quizzes
	 * @return JSON Quizzes List
	 */
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/all")
	public String getAll() {
		KListObject<KQuestionnaire> quizzes = KoHttp.getDao(KQuestionnaire.class).readAll();
		return gson.toJson(quizzes.asAL());
	}
	

}
