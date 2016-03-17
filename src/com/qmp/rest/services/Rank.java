package com.qmp.rest.services;

import javax.ws.rs.Path;

import com.qmp.rest.models.KRang;



/**
 * @author aleboisselier
 * Answers REST Functions
 */
@Path("/rank")
public class Rank extends CrudRestBase {
		
	public Rank() {
		kobjectClass = KRang.class;
		displayName = "rank";
	}
	
}
