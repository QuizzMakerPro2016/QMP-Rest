package com.qmp.rest.models;

import com.google.gson.annotations.Expose;

import net.ko.kobject.KObject;
import net.ko.persistence.annotation.Entity;
import net.ko.persistence.annotation.Table;
import net.ko.persistence.annotation.Id;


/**
* Classe KGroupe_utilisateur
*/
@SuppressWarnings("serial")
@Entity
@Table(name="groupe_utilisateur")
public class KGroupe_utilisateur extends KRestObject {
	@Id
	private int idGroupe;
	@Id
	private int idUtilisateur;
	@Expose
	private KGroupe groupe;
	@Expose
	private KUtilisateur utilisateur;

	public KGroupe_utilisateur() {
		super();
		belongsTo(KUtilisateur.class);belongsTo(KGroupe.class);
	}
	/**
	 * return the value of idGroupe
	 * @return idGroupe
	 */
	public int getIdGroupe(){
		return this.idGroupe;
	}
	/**
	 * return the value of idUtilisateur
	 * @return idUtilisateur
	 */
	public int getIdUtilisateur(){
		return this.idUtilisateur;
	}
	/**
	 * return the value of groupe
	 * @return groupe
	 */
	public KGroupe getGroupe(){
		return this.groupe;
	}
	/**
	 * return the value of utilisateur
	 * @return utilisateur
	 */
	public KUtilisateur getUtilisateur(){
		return this.utilisateur;
	}

	/**
	 * set the value of idGroupe
	 * @param aIdGroupe
	 */
	public void setIdGroupe(int aIdGroupe){
		this.idGroupe=aIdGroupe;
	}
	/**
	 * set the value of idUtilisateur
	 * @param aIdUtilisateur
	 */
	public void setIdUtilisateur(int aIdUtilisateur){
		this.idUtilisateur=aIdUtilisateur;
	}
	/**
	 * set the value of groupe
	 * @param aGroupe
	 */
	public void setGroupe(KGroupe aGroupe){
		this.groupe=aGroupe;
	}
	/**
	 * set the value of utilisateur
	 * @param aUtilisateur
	 */
	public void setUtilisateur(KUtilisateur aUtilisateur){
		this.utilisateur=aUtilisateur;
	}
	@Override
	public String toString() {
		return " [idUtilisateur] = " + idUtilisateur+" [idGroupe] = " + idGroupe;
	}
}