/*
  Created by IntelliJ IDEA.
  User: andrijadjuric
 */
package com.andrija.packages.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TELEFON")
public class Telefon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "telefonId")
    private Integer telefonId;

    @ManyToOne
    @JoinColumn(name = "markaId", referencedColumnName = "markaId")
    private MarkaTelefona markaTelefona;

    @Column(name = "telefonNaziv")
    private String telefonNaziv;

    @Column(name = "telefonOpis")
    private String telefonOpis;

    @Column(name = "telefonMemorija")
    private String telefonMemorija;

    @Column(name = "telefonBrzinaProcesora")
    private String telefonBrzinaProcesora;

    @Column(name = "telefonJacinaKamere")
    private String telefonJacinaKamere;

    @Column(name = "telefonVodootporan")
    private boolean telefonVodootporan;

    public Integer getTelefonId() {
        return telefonId;
    }

    public void setTelefonId(Integer telefonId) {
        this.telefonId = telefonId;
    }

    public MarkaTelefona getMarkaTelefona() {
        return markaTelefona;
    }

    public void setMarkaTelefona(MarkaTelefona markaTelefona) {
        this.markaTelefona = markaTelefona;
    }

    public String getTelefonNaziv() {
        return telefonNaziv;
    }

    public void setTelefonNaziv(String telefonNaziv) {
        this.telefonNaziv = telefonNaziv;
    }

    public String getTelefonOpis() {
        return telefonOpis;
    }

    public void setTelefonOpis(String telefonOpis) {
        this.telefonOpis = telefonOpis;
    }

    public String getTelefonMemorija() {
        return telefonMemorija;
    }

    public void setTelefonMemorija(String telefonMemorija) {
        this.telefonMemorija = telefonMemorija;
    }

    public String getTelefonBrzinaProcesora() {
        return telefonBrzinaProcesora;
    }

    public void setTelefonBrzinaProcesora(String telefonBrzinaProcesora) {
        this.telefonBrzinaProcesora = telefonBrzinaProcesora;
    }

    public String getTelefonJacinaKamere() {
        return telefonJacinaKamere;
    }

    public void setTelefonJacinaKamere(String telefonJacinaKamere) {
        this.telefonJacinaKamere = telefonJacinaKamere;
    }

    public boolean isTelefonVodootporan() {
        return telefonVodootporan;
    }

    public void setTelefonVodootporan(boolean telefonVodootporan) {
        this.telefonVodootporan = telefonVodootporan;
    }

    @Override
    public String toString() {
        return "Telefon{" + "telefonId=" + telefonId + ", markaTelefona=" + markaTelefona + ", telefonNaziv=" + telefonNaziv + ", telefonOpis=" + telefonOpis + ", telefonMemorija=" + telefonMemorija + ", telefonBrzinaProcesora=" + telefonBrzinaProcesora + ", telefonJacinaKamere=" + telefonJacinaKamere + ", telefonVodootporan=" + telefonVodootporan + '}';
    }
}
