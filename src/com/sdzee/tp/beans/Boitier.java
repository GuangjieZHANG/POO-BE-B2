package com.sdzee.tp.beans;

public class Boitier {

    private String nom;
    private int id;
    private int calibreProtection;
    private int consommation;
    private Charge[] charges = new Charge[8];
    
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCalibreProtection() {
		return calibreProtection;
	}
	public void setCalibreProtection(int calibreProtection) {
		this.calibreProtection = calibreProtection;
	}
	public int getConsommation() {
		return consommation;
	}
	public void setConsommation(int consommation) {
		this.consommation = consommation;
	}
	
	public Charge getCharge(int localisation) {
		return charges[localisation];
	}
	
	public void setCharge(int localisation, Charge charge) {
		this.charges[localisation] = charge ;
	}
	public Charge[] getCharges() {
		return charges;
	}
	public void setCharges(Charge[] charges) {
		this.charges = charges;
	}

}

