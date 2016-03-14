package com.qmp.rest.models;

import net.ko.kobject.KListObject;
import net.ko.kobject.KObject;
import net.ko.persistence.annotation.Entity;
import net.ko.persistence.annotation.Table;

import com.google.gson.annotations.Expose;


/**
* Classe KGroupe
*/
@SuppressWarnings("serial")
@Entity
@Table(name="groupe")
public class KGroupe extends KRestObject {
	@Expose
	private String code;
	@Expose
	private String libelle;
	@Expose
	private KListObject<KQuestionnaire> questionnaires;
	@Expose
	private KListObject<KUtilisateur> utilisateurs;


	public KGroupe() {
		super();
		hasAndBelongsToMany(KGroupe_questionnaire.class, KQuestionnaire.class);
		hasAndBelongsToMany(KGroupe_utilisateur.class, KUtilisateur.class);
	}
	/**
	 * return the value of code
	 * @return code
	 */
	public String getCode(){
		return this.code;
	}
	/**
	 * return the value of libelle
	 * @return libelle
	 */
	public String getLibelle(){
		return this.libelle;
	}


	/**
	 * set the value of code
	 * @param aCode
	 */
	public void setCode(String aCode){
		this.code=aCode;
	}
	/**
	 * set the value of libelle
	 * @param aLibelle
	 */
	public void setLibelle(String aLibelle){
		this.libelle=aLibelle;
	}
	
	public KListObject<KQuestionnaire> getQuestionnaires() {
		return questionnaires;
	}

	public void setQuestionnaires(KListObject<KQuestionnaire> questionnaires) {
		this.questionnaires = questionnaires;
	}

	public KListObject<KUtilisateur> getUtilisateurs() {
		return utilisateurs;
	}

	public void setUtilisateurs(KListObject<KUtilisateur> utilisateurs) {
		this.utilisateurs = utilisateurs;
	}
	
	@Override
	public String toString() {
		return " [code] = " + code+" [libelle] = " + libelle;
	}
}