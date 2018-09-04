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
import javax.persistence.Table;

@Entity
@Table(name = "ROLA")
public class Rola {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rolaId")
    private Integer roleId;

    @Column(name = "rolaNaziv")
    private String roleNaziv;

    // mozda korisno za buduci razvoj
    @Column(name = "rolaAktivna")
    private Integer roleAktivna;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleNaziv() {
        return roleNaziv;
    }

    public void setRoleNaziv(String roleNaziv) {
        this.roleNaziv = roleNaziv;
    }

    public Integer getRoleAktivna() {
        return roleAktivna;
    }

    public void setRoleAktivna(Integer roleAktivna) {
        this.roleAktivna = roleAktivna;
    }

    @Override
    public String toString() {
        return "Rola{" + "roleId=" + roleId + ", roleNaziv=" + roleNaziv + ", roleAktivna=" + roleAktivna + '}';
    }
}
