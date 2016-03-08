package com.qmp.rest.models;

import net.ko.kobject.KObject;
import net.ko.persistence.annotation.Entity;
import net.ko.persistence.annotation.Table;


/**
* Classe KQuestion
*/
@SuppressWarnings("serial")
@Entity
@Table(name="question")
public class KQuestion extends KObject {
	private String libelle;
	private boolean open;
	private int questionnaire_id;

	public KQuestion() {
		super();
		//
	}
	/**
	 * return the value of libelle
	 * @return libelle
	 */
	public String getLibelle(){
		return this.libelle;
	}
	/**
	 * return the value of open
	 * @return open
	 */
	public boolean isOpen(){
		return this.open;
	}
	/**
	 * return the value of questionnaire_id
	 * @return questionnaire_id
	 */
	public int getQuestionnaire_id(){
		return this.questionnaire_id;
	}

	/**
	 * set the value of libelle
	 * @param aLibelle
	 */
	public void setLibelle(String aLibelle){
		this.libelle=aLibelle;
	}
	/**
	 * set the value of open
	 * @param aOpen
	 */
	public void setOpen(boolean aOpen){
		this.open=aOpen;
	}
	/**
	 * set the value of questionnaire_id
	 * @param aQuestionnaire_id
	 */
	public void setQuestionnaire_id(int aQuestionnaire_id){
		this.questionnaire_id=aQuestionnaire_id;
	}
	@Override
	public String toString() {
		return " [questionnaire_id] = " + questionnaire_id+" [libelle] = " + libelle+" [open] = " + open;
	}
}