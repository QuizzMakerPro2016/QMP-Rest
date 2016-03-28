package com.qmp.rest.services;

import javax.ws.rs.Path;

import com.qmp.rest.models.KReponse;



/**
 * @author aleboisselier
 * Answers REST Functions
 */
@Path("/answer")
public class Answer extends CrudRestBase {
		
	public Answer() {
		kobjectClass = KReponse.class;
		displayName = "answer";
	}
	
}
