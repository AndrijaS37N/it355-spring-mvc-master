/*
  Created by IntelliJ IDEA.
  User: andrijadjuric
 */
package com.andrija.packages.service;

// nope (registration)
import com.andrija.packages.entity.Korisnik;

import com.andrija.packages.entity.MarkaTelefona;
import com.andrija.packages.entity.Telefon;
import java.util.List;

public interface IspitService {

    public List<Telefon> getTelefoni();

    public Telefon getTelefonById(int id);

    public List<MarkaTelefona> getMarkeTelefona();

    public MarkaTelefona getMarkaTelefonaById(int id);

    public MarkaTelefona addMarkaTelefona(MarkaTelefona markaTelefona);

    public Telefon addTelefon(Telefon telefon);

    public void deleteMarkaTelefona(MarkaTelefona markaTelefona);

    public void deleteTelefon(Telefon telefon);
}
