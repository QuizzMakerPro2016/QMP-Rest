package com.qmp.rest.models;

import com.google.gson.annotations.Expose;

import net.ko.kobject.KObject;
import net.ko.persistence.annotation.Entity;
import net.ko.persistence.annotation.Table;
import net.ko.kobject.KListObject;


/**
* Classe KQuestion
*/
@SuppressWarnings("serial")
@Entity
@Table(name="question")
public class KQuestion extends KObject {
	
	private int idQuestionnaire;
	
	@Expose
	private String libelle;
	@Expose
	private boolean type;
	@Expose
	private KListObject<KReponse> reponses;
	@Expose
	private KQuestionnaire questionnaire;
	@Expose
	private int idUtilisateur;
	@Expose
	private KUtilisateur utilisateur;

	public KQuestion() {
		super();
		hasMany(KReponse.class);
		hasAndBelongsToMany(KQuestion_questionnaire.class, KQuestionnaire.class);
		belongsTo(KUtilisateur.class);
	}
	/**
	 * return the value of idQuestionnaire
	 * @return idQuestionnaire
	 */
	public int getIdQuestionnaire(){
		return this.idQuestionnaire;
	}
	/**
	 * return the value of libelle
	 * @return libelle
	 */
	public String getLibelle(){
		return this.libelle;
	}
	/**
	 * return the value of type
	 * @return type
	 */
	public boolean isType(){
		return this.type;
	}
	/**
	 * return the value of reponses
	 * @return reponses
	 */
	public KListObject<KReponse> getReponses(){
		return this.reponses;
	}
	/**
	 * return the value of questionnaire
	 * @return questionnaire
	 */
	public KQuestionnaire getQuestionnaire(){
		return this.questionnaire;
	}

	/**
	 * set the value of idQuestionnaire
	 * @param aIdQuestionnaire
	 */
	public void setIdQuestionnaire(int aIdQuestionnaire){
		this.idQuestionnaire=aIdQuestionnaire;
	}
	/**
	 * set the value of libelle
	 * @param aLibelle
	 */
	public void setLibelle(String aLibelle){
		this.libelle=aLibelle;
	}
	/**
	 * set the value of type
	 * @param aType
	 */
	public void setType(boolean aType){
		this.type=aType;
	}
	/**
	 * set the value of reponses
	 * @param aReponses
	 */
	public void setReponses(KListObject<KReponse> aReponses){
		this.reponses=aReponses;
	}
	/**
	 * set the value of questionnaire
	 * @param aQuestionnaire
	 */
	public void setQuestionnaire(KQuestionnaire aQuestionnaire){
		this.questionnaire=aQuestionnaire;
	}
	
	
	/**
	 * @return the createdBy
	 */
	public int getIdUtilisateur() {
		return idUtilisateur;
	}
	/**
	 * @param createdBy the createdBy to set
	 */
	public void setIdUtilisateur(int createdBy) {
		this.idUtilisateur = createdBy;
	}
	/**
	 * @return the utilisateur
	 */
	public KUtilisateur getUtilisateur() {
		return utilisateur;
	}
	/**
	 * @param utilisateur the utilisateur to set
	 */
	public void setUtilisateur(KUtilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}
	
	@Override
	public String toString() {
		return " [libelle] = " + libelle+" [idQuestionnaire] = " + idQuestionnaire+" [type] = " + type;
	}
}