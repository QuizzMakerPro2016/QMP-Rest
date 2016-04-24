/**
 * 
 */
package com.qmp.rest.services;

import java.sql.SQLException;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.qmp.rest.models.KGroupe;
import com.qmp.rest.models.KGroupe_utilisateur;
import com.qmp.rest.models.KQuestion_questionnaire;

import net.ko.framework.KoHttp;
import net.ko.framework.KoSession;

/**
 * @author Antoine
 *
 */
@Path("/usergroup")
public class UserGroup extends CrudRestBase {
	
	/**
	 * Assign a user to a group in DB using form passed in POST Request
	 * @param formParams POST form with idUtilisateur and idGroupe data
	 * @return Error or Success Message
	 * @throws SQLException
	 */
	public UserGroup() {
		kobjectClass = KGroupe_utilisateur.class;
		displayName = "usergroup";
	}
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	@DELETE
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{idUser}/{idGroup}")
	public String delete(@PathParam("idUser") int idUser, @PathParam("idGroup") int idGroup){
		
		KGroupe_utilisateur usergroup = KoSession.kloadOne(KGroupe_utilisateur.class, "idUtilisateur=" + String.valueOf(idUser) + " AND idGroupe=" + String.valueOf(idGroup));
		if(!usergroup.isLoaded()){
			return "{\"message\": \"Error while loading Relation with idUser =  " + String.valueOf(idUser) + " and idGroup =  " + String.valueOf(idGroup) + "\"}";
		}else{
			try {
				KoHttp.getInstance().getDatabase().execute("DELETE FROM groupe_utilisateur WHERE idUtilisateur="+String.valueOf(idUser)+ " AND idGroupe="+String.valueOf(idGroup));
			} catch (Exception e) {
				return "{\"message\": \"" + e.getMessage() + "\"}";
			}
		}
		
		return "{\"message\": \"Delete OK\"}";
	}
	
	/**
	 * 
	 * @param idUser
	 * @param idGroup
	 * @return
	 */
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/exist/{idUser}/{idQuizz}")
	public String get(@PathParam("idUser") int idUser, @PathParam("idGroup") int idGroup){
		
		KQuestion_questionnaire object = KoSession.kloadOne(KQuestion_questionnaire.class, "idUtilisateur=" + String.valueOf(idUser) + " AND idGroupe=" + String.valueOf(idGroup));
		if (object.isLoaded())
			return "true";
		else
			return "false";
	}

}
