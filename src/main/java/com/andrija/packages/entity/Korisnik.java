/*
  Created by IntelliJ IDEA.
  User: andrijadjuric
 */
package com.andrija.packages.entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "KORISNIK")
public class Korisnik {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "korisnikId")
    private Integer korisnikId;

    @ManyToOne
    @JoinColumn(name = "rolaId", referencedColumnName = "rolaId")
    private Rola role;

    @Column(name = "korisnikEmail")
    private String korisnikEmail;

    @Column(name = "korisnikPassword")
    private String korisnikPassword;

    @Column(name = "korisnikIme")
    private String korisnikIme;

    @Column(name = "korisnikPrezime")
    private String korisnikPrezime;

    // mozda za buduci razvoj
    @Column(name = "korisnikAktivan")
    private boolean korisnikAktivan;

    // ne koristi se jer registracija nije jos implementirana
    // predstavlja datum kada je korisnik registrovan
    @Column(name = "korisnikRegistrovan")
    private Timestamp korisnikRegistrovan;

    public Integer getKorisnikId() {
        return korisnikId;
    }

    public void setKorisnikId(Integer korisnikId) {
        this.korisnikId = korisnikId;
    }

    public Rola getRole() {
        return role;
    }

    public void setRole(Rola role) {
        this.role = role;
    }

    public String getKorisnikEmail() {
        return korisnikEmail;
    }

    public void setKorisnikEmail(String korisnikEmail) {
        this.korisnikEmail = korisnikEmail;
    }

    public String getKorisnikPassword() {
        return korisnikPassword;
    }

    public void setKorisnikPassword(String korisnikPassword) {
        this.korisnikPassword = korisnikPassword;
    }

    public String getKorisnikIme() {
        return korisnikIme;
    }

    public void setKorisnikIme(String korisnikIme) {
        this.korisnikIme = korisnikIme;
    }

    public String getKorisnikPrezime() {
        return korisnikPrezime;
    }

    public void setKorisnikPrezime(String korisnikPrezime) {
        this.korisnikPrezime = korisnikPrezime;
    }

    public boolean isKorisnikAktivan() {
        return korisnikAktivan;
    }

    public void setKorisnikAktivan(boolean korisnikAktivan) {
        this.korisnikAktivan = korisnikAktivan;
    }

    public Timestamp getKorisnikRegistrovan() {
        return korisnikRegistrovan;
    }

    public void setKorisnikRegistrovan(Timestamp korisnikRegistrovan) {
        this.korisnikRegistrovan = korisnikRegistrovan;
    }

    @Override
    public String toString() {
        return "Korisnik{" + "korisnikId=" + korisnikId + ", role=" + role + ", korisnikEmail=" + korisnikEmail + ", korisnikPassword=" + korisnikPassword + ", korisnikIme=" + korisnikIme + ", korisnikPrezime=" + korisnikPrezime + ", korisnikAktivan=" + korisnikAktivan + ", korisnikRegistrovan=" + korisnikRegistrovan + '}';
    }
}
