package com.qmp.rest.models;

import javax.persistence.Id;

import com.google.gson.annotations.Expose;

import net.ko.kobject.KObject;
import net.ko.persistence.annotation.Entity;
import net.ko.persistence.annotation.Table;


/**
* Classe KQuestion_questionnaire
*/
@SuppressWarnings("serial")
@Entity
@Table(name="question_questionnaire")
public class KQuestion_questionnaire extends KRestObject {
	@Id
	private int idQuestion;
	@Id
	private int idQuestionnaire;
	
	@Expose
	private KQuestionnaire questionnaire;
	@Expose
	private KQuestion question;
	
	public KQuestion_questionnaire() {
		super();
		belongsTo(KQuestionnaire.class);
		belongsTo(KQuestion.class);
	}
	
	
	/**
	 * return the value of idQuestion
	 * @return idQuestion
	 */
	public int getIdQuestion(){
		return this.idQuestion;
	}
	/**
	 * return the value of idQuestionnaire
	 * @return idQuestionnaire
	 */
	public int getIdQuestionnaire(){
		return this.idQuestionnaire;
	}

	/**
	 * set the value of idQuestion
	 * @param aIdQuestion
	 */
	public void setIdQuestion(int aIdQuestion){
		this.idQuestion=aIdQuestion;
	}
	/**
	 * set the value of idQuestionnaire
	 * @param aIdQuestionnaire
	 */
	public void setIdQuestionnaire(int aIdQuestionnaire){
		this.idQuestionnaire=aIdQuestionnaire;
	}
	
	
	
	/**
	 * @return the questionnaire
	 */
	public KQuestionnaire getQuestionnaire() {
		return questionnaire;
	}


	/**
	 * @param questionnaire the questionnaire to set
	 */
	public void setQuestionnaire(KQuestionnaire questionnaire) {
		this.questionnaire = questionnaire;
	}


	/**
	 * @return the question
	 */
	public KQuestion getQuestion() {
		return question;
	}


	/**
	 * @param question the question to set
	 */
	public void setQuestion(KQuestion question) {
		this.question = question;
	}


	@Override
	public String toString() {
		return " [idQuestion] = " + idQuestion+" [idQuestionnaire] = " + idQuestionnaire;
	}
}