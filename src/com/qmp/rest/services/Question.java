/**
 * 
 */
package com.qmp.rest.services;

import javax.ws.rs.Path;

import com.qmp.rest.models.KQuestion;


/**
 * @author aleboisselier
 *
 */
@Path("/question")
public class Question extends CrudRestBase {
	public Question() {
		kobjectClass = KQuestion.class;
		displayName = "question";
	}
}
