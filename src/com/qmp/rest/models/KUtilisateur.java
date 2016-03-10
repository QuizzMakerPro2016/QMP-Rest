package com.qmp.rest.models;

import com.google.gson.annotations.Expose;

import net.ko.kobject.KObject;
import net.ko.persistence.annotation.Entity;
import net.ko.persistence.annotation.Table;
import net.ko.kobject.KListObject;


/**
* Classe KUtilisateur
*/
@SuppressWarnings("serial")
@Entity
@Table(name="utilisateur")
public class KUtilisateur extends KObject {
	private int idRang;
	@Expose
	private String mail;
	@Expose
	private String nom;
	@Expose
	private String password;
	@Expose
	private String prenom;
	@Expose
	private KRang rang;
	@Expose
	private KListObject<KGroupe> groupes;
	
	public KListObject<KGroupe> getGroupes() {
		return groupes;
	}
	public void setGroupes(KListObject<KGroupe> groupes) {
		this.groupes = groupes;
	}
	private KListObject<KRealisation> realisations;

	public KUtilisateur() {
		super();
		groupes=new KListObject<KGroupe>(KGroupe.class);
		hasMany(KRealisation.class);belongsTo(KRang.class);
		//hasManyBelongsTo(KGroupe_utilisateur.class, KGroupe.class);
		//hasManyBelongsTo("groupes", KGroupe.class, "id", "groupe_utilisateur", "idUtilisateur", KGroupe_utilisateur.class, "idGroupe");

	}
	/**
	 * return the value of idRang
	 * @return idRang
	 */
	public int getIdRang(){
		return this.idRang;
	}
	/**
	 * return the value of mail
	 * @return mail
	 */
	public String getMail(){
		return this.mail;
	}
	/**
	 * return the value of nom
	 * @return nom
	 */
	public String getNom(){
		return this.nom;
	}
	/**
	 * return the value of password
	 * @return password
	 */
	public String getPassword(){
		return this.password;
	}
	/**
	 * return the value of prenom
	 * @return prenom
	 */
	public String getPrenom(){
		return this.prenom;
	}
	/**
	 * return the value of rang
	 * @return rang
	 */
	public KRang getRang(){
		return this.rang;
	}

	/**
	 * return the value of realisations
	 * @return realisations
	 */
	public KListObject<KRealisation> getRealisations(){
		return this.realisations;
	}

	/**
	 * set the value of idRang
	 * @param aIdRang
	 */
	public void setIdRang(int aIdRang){
		this.idRang=aIdRang;
	}
	/**
	 * set the value of mail
	 * @param aMail
	 */
	public void setMail(String aMail){
		this.mail=aMail;
	}
	/**
	 * set the value of nom
	 * @param aNom
	 */
	public void setNom(String aNom){
		this.nom=aNom;
	}
	/**
	 * set the value of password
	 * @param aPassword
	 */
	public void setPassword(String aPassword){
		this.password=aPassword;
	}
	/**
	 * set the value of prenom
	 * @param aPrenom
	 */
	public void setPrenom(String aPrenom){
		this.prenom=aPrenom;
	}
	/**
	 * set the value of rang
	 * @param aRang
	 */
	public void setRang(KRang aRang){
		this.rang=aRang;
	}

	/**
	 * set the value of realisations
	 * @param aRealisations
	 */
	public void setRealisations(KListObject<KRealisation> aRealisations){
		this.realisations=aRealisations;
	}
	@Override
	public String toString() {
		return " [password] = " + password+" [mail] = " + mail+" [idRang] = " + idRang+" [nom] = " + nom+" [prenom] = " + prenom;
	}
}