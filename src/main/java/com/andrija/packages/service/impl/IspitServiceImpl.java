/*
  Created by IntelliJ IDEA.
  User: andrijadjuric
 */
package com.andrija.packages.service.impl;

import com.andrija.packages.service.IspitService;
import com.andrija.packages.dao.IspitDao;
import com.andrija.packages.entity.MarkaTelefona;
import com.andrija.packages.entity.Telefon;

// for a deleted registration service
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IspitServiceImpl implements IspitService {

    @Autowired
    IspitDao ispitDao;

    @Override
    public List<Telefon> getTelefoni() {
        return ispitDao.getTelefoni();
    }

    @Override
    public Telefon getTelefonById(int id) {
        return ispitDao.getTelefonById(id);
    }

    @Override
    public List<MarkaTelefona> getMarkeTelefona() {
        return ispitDao.getMarkeTelefona();
    }

    @Override
    public MarkaTelefona getMarkaTelefonaById(int id) {
        return ispitDao.getMarkaTelefonaById(id);
    }

    @Override
    public MarkaTelefona addMarkaTelefona(MarkaTelefona markaTelefona) {
        return ispitDao.addMarkaTelefona(markaTelefona);
    }

    @Override
    public Telefon addTelefon(Telefon telefon) {
        return ispitDao.addTelefon(telefon);
    }

    @Override
    public void deleteMarkaTelefona(MarkaTelefona markaTelefona) {
        ispitDao.deleteMarkaTelefona(markaTelefona);
    }

    @Override
    public void deleteTelefon(Telefon telefon) {
        ispitDao.deleteTelefon(telefon);
    }
}
