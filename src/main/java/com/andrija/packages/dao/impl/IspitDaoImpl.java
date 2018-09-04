/*
  Created by IntelliJ IDEA.
  User: andrijadjuric
 */
package com.andrija.packages.dao.impl;

import com.andrija.packages.dao.IspitDao;
import com.andrija.packages.entity.MarkaTelefona;
import com.andrija.packages.entity.Telefon;

import java.util.List;
import javax.transaction.Transactional;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

public class IspitDaoImpl implements IspitDao {

    // let's go - instanciranje sesije
    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    @Transactional
    public List<Telefon> getTelefoni() {
        List<Telefon> results = (List<Telefon>) getSession().createCriteria(Telefon.class).list();
        return results;
    }

    @Override
    @Transactional
    public Telefon getTelefonById(int id) {
        Telefon telefon = (Telefon) getSession().createCriteria(Telefon.class).add(Restrictions.eq("telefonId", id)).uniqueResult();
        return telefon;
    }

    @Override
    @Transactional
    public List<MarkaTelefona> getMarkeTelefona() {
        List<MarkaTelefona> results = (List<MarkaTelefona>) getSession().createCriteria(MarkaTelefona.class).list();
        return results;
    }

    @Override
    @Transactional
    public MarkaTelefona getMarkaTelefonaById(int id) {
        MarkaTelefona marka = (MarkaTelefona) getSession().createCriteria(MarkaTelefona.class).add(Restrictions.eq("markaId", id)).uniqueResult();
        return marka;
    }

    @Override
    @Transactional
    public MarkaTelefona addMarkaTelefona(MarkaTelefona markaTelefona) {
        return (MarkaTelefona) getSession().merge(markaTelefona);
    }

    @Override
    @Transactional
    public Telefon addTelefon(Telefon telefon) {
        return (Telefon) getSession().merge(telefon);
    }

    @Override
    @Transactional
    public void deleteMarkaTelefona(MarkaTelefona markaTelefona) {
        getSession().delete(markaTelefona);
    }

    @Override
    @Transactional
    public void deleteTelefon(Telefon telefon) {
        getSession().delete(telefon);
    }
}
