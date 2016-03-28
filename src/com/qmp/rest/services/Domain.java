package com.qmp.rest.services;

import javax.ws.rs.Path;

import com.qmp.rest.models.KDomaine;

/**
 * @author Antoine
 * Domain REST Functions
 */
@Path("/domain")
public class Domain extends CrudRestBase {
	
	public Domain() {
		super();
		kobjectClass = KDomaine.class;
		displayName = "domain";
	}
	
}
