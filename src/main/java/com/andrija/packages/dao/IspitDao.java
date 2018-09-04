/*
  Created by IntelliJ IDEA.
  User: andrijadjuric
 */
package com.andrija.packages.dao;

import com.andrija.packages.entity.MarkaTelefona;
import com.andrija.packages.entity.Telefon;
import java.util.List;

public interface IspitDao {
    
    public List<Telefon> getTelefoni();
    
    public Telefon getTelefonById(int id);
    
    public List<MarkaTelefona> getMarkeTelefona();

    public MarkaTelefona getMarkaTelefonaById(int id);

    public MarkaTelefona addMarkaTelefona(MarkaTelefona markaTelefona);
    
    public Telefon addTelefon(Telefon telefon);

    public void deleteMarkaTelefona(MarkaTelefona markaTelefona);
    
    public void deleteTelefon(Telefon telefon);
}
