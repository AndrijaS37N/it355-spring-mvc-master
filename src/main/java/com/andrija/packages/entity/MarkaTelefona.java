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
@Table(name = "MARKATELEFONA")
public class MarkaTelefona {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "markaId")
    private Integer markaId;

    @Column(name = "markaNaziv")
    private String markaNaziv;

    @Column(name = "markaOpis")
    private String markaOpis;

    public Integer getMarkaId() {
        return markaId;
    }

    public void setMarkaId(Integer markaId) {
        this.markaId = markaId;
    }

    public String getMarkaNaziv() {
        return markaNaziv;
    }

    public void setMarkaNaziv(String markaNaziv) {
        this.markaNaziv = markaNaziv;
    }

    public String getMarkaOpis() {
        return markaOpis;
    }

    public void setMarkaOpis(String markaOpis) {
        this.markaOpis = markaOpis;
    }

    @Override
    public String toString() {
        return "MarkaTelefona{" + "markaId=" + markaId + ", markaNaziv=" + markaNaziv + ", markaOpis=" + markaOpis + '}';
    }
}
