package com.qmp.rest.services;

import java.sql.SQLException;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import net.ko.framework.KoHttp;
import net.ko.framework.KoSession;

import com.qmp.rest.models.KGroupe_questionnaire;
import com.qmp.rest.models.KQuestion_questionnaire;

/**
 * @author Antoine
 *
 */
@Path("/quizzgroup")
public class QuizzGroup extends CrudRestBase {
	
	/**
	 * Assign a quizz to a group in DB using form passed in POST Request
	 * @param formParams POST form with idGroup and idQuizze data
	 * @return Error or Success Message
	 * @throws SQLException
	 */
	public QuizzGroup(){
		kobjectClass = KGroupe_questionnaire.class;
		displayName = "quizzgroup";
	}
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	@DELETE
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{idGroup}/{idQuizz}")
	public String delete(@PathParam("idGroup") int idGroup, @PathParam("idQuizz") int idQuizz){
		
		KGroupe_questionnaire usergroup = KoSession.kloadOne(KGroupe_questionnaire.class, "idGroup=" + String.valueOf(idGroup) + " AND idQuestionnaire=" + String.valueOf(idQuizz));
		if(!usergroup.isLoaded()){
			return "{\"message\": \"Error while loading Answer with idGroup =  " + String.valueOf(idGroup) + " and idQuizz =  " + String.valueOf(idQuizz) + "\"}";
		}else{
			try {
				KoHttp.getInstance().getDatabase().execute("DELETE FROM groupe_questionnaire WHERE idGroup="+String.valueOf(idGroup)+ " AND idQuestionnaire="+String.valueOf(idQuizz));
			} catch (Exception e) {
				return "{\"message\": \"" + e.getMessage() + "\"}";
			}
		}
		
		return "{\"message\": \"Delete OK\"}";
	}
	
	/**
	 * 
	 * @param idGroup
	 * @param idQuizz
	 * @return
	 */
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/exist/{idGroup}/{idQuizz}")
	public String get(@PathParam("idGroup") int idGroup, @PathParam("idQuizz") int idQuizz){
		
		KQuestion_questionnaire object = KoSession.kloadOne(KQuestion_questionnaire.class, "idGroup=" + String.valueOf(idGroup) + " AND idQuestionnaire=" + String.valueOf(idQuizz));
		if (object.isLoaded())
			return "true";
		else
			return "false";
	}
}
