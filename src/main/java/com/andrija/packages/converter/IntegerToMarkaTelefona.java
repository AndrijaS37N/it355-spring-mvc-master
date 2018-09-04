/*
  Created by IntelliJ IDEA.
  User: andrijadjuric
 */
package com.andrija.packages.converter;

import com.andrija.packages.dao.IspitDao;
import com.andrija.packages.entity.MarkaTelefona;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class IntegerToMarkaTelefona implements Converter<String, MarkaTelefona> {

    @Autowired
    IspitDao ispitDao;

    @Override
    public MarkaTelefona convert(String s) {
        if (s.isEmpty()) {
            return null;
        }
        Integer value = Integer.valueOf(s);
        System.out.println("Konvertovanje u marku.");
        MarkaTelefona mt = ispitDao.getMarkaTelefonaById(value);
        return mt;
    }
}
