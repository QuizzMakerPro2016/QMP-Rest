package com.qmp.rest.services;

import java.sql.SQLException;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;

import com.qmp.rest.models.KQuestionnaire;

import net.ko.framework.KoHttp;
import net.ko.kobject.KListObject;


/**
 * @author aleboisselier
 * Quizz REST Functions
 */
@Path("/quizz")
public class Quizz extends CrudRestBase {
	public Quizz() {
		super();
		kobjectClass = KQuestionnaire.class;
		displayName = "questionnaire";
	}
}
