package com.qmp.rest.services;

import java.sql.SQLException;

import javax.ws.rs.DELETE;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import net.ko.framework.KoHttp;
import net.ko.framework.KoSession;

import com.qmp.rest.models.KQuestion_questionnaire;

/**
 * @author Antoine
 *
 */
@Path("/questquizz")
public class QuestionQuizz extends CrudRestBase {
	
	/**
	 * Assign a question to a quizz in DB using form passed in POST Request
	 * @param formParams POST form with idQuestion and idQuizz data
	 * @return Error or Success Message
	 * @throws SQLException
	 */
	public QuestionQuizz(){
		kobjectClass = KQuestion_questionnaire.class;
		displayName = "questquizz";
	}
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	@DELETE
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{idQuestion}/{idQuizz}")
	public String delete(@PathParam("idQuestion") int idQuestion, @PathParam("idQuizz") int idQuizz){
		
		KQuestion_questionnaire usergroup = KoSession.kloadOne(KQuestion_questionnaire.class, "idQuestion=" + String.valueOf(idQuestion) + " AND idQuestion=" + String.valueOf(idQuizz));
		if(!usergroup.isLoaded()){
			return "{\"message\": \"Error while loading Answer with idQuestion =  " + String.valueOf(idQuestion) + " and idQuizz =  " + String.valueOf(idQuizz) + "\"}";
		}else{
			try {
				KoHttp.getDao(KQuestion_questionnaire.class).delete(usergroup);
			} catch (SQLException e) {
				return "{\"message\": \"" + e.getMessage() + "\"}";
			}
		}
		
		return "{\"message\": \"Delete OK\"}";
	}
}
