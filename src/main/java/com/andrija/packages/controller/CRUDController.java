/*
  Created by IntelliJ IDEA.
  User: andrijadjuric
 */
package com.andrija.packages.controller;

import com.andrija.packages.entity.MarkaTelefona;
import com.andrija.packages.entity.Telefon;
import com.andrija.packages.service.IspitService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CRUDController {

    // dao commented out

//    @Autowired
//    IspitDao ispitDao;

    // using these services for practice

    @Autowired
    IspitService ispitService;

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView model = new ModelAndView();
        model.setViewName("home");
        return model;
    }

    @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("home");
        return model;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
                              @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();

        if (error != null) {
            model.addObject("error", "Invalid login information. Please try again.");
        }
        if (logout != null) {
            model.addObject("msg", "You're logged out.");
        }
        model.setViewName("login");
        return model;
    }

    @RequestMapping(value = "/addMarkaTelefona", method = RequestMethod.GET)
    public String addMarkaTelefona(Model model) {
        model.addAttribute("markaTelefona", new MarkaTelefona());
        return "addMarkaTelefona";
    }

    @RequestMapping(value = "/addMarkaTelefona", method = RequestMethod.POST)
    public ModelAndView addMarkaTelefona(@ModelAttribute("markaTelefona") MarkaTelefona mt, ModelAndView model) {
        //ispitDao.addMarkaTelefona(mt);
        ispitService.addMarkaTelefona(mt);
        model.addObject("successMsg", "Marka telefona je uspesno dodata!");
        return model;
    }

    @RequestMapping(value = "/viewMarkeTelefona", method = RequestMethod.GET)
    public ModelAndView getMarkeTelefona(ModelAndView model) {
        model.addObject("markeTelefona", ispitService.getMarkeTelefona());
        model.addObject("markaTelefona", new MarkaTelefona());
        return model;
    }

    @RequestMapping(value = "/editMarkaTelefona/{markaId}", method = RequestMethod.GET)
    public String editMarkaTelefona(@PathVariable("markaId") int id, Model model) {
        MarkaTelefona markaTelefona = ispitService.getMarkaTelefonaById(id);
        model.addAttribute("markaTelefona", markaTelefona);
        return "addMarkaTelefona";
    }

    @RequestMapping(value = "/deleteMarkaTelefona/{markaId}", method = RequestMethod.GET)
    public String deleteMarkaTelefona(@PathVariable("markaId") int id, HttpServletRequest request) {
        System.out.println("Fetching & Deleting marka telefona with id " + id);

        MarkaTelefona mt = ispitService.getMarkaTelefonaById(id);
        if (mt == null) {
            System.out.println("Nije moguce izvrsiti brisanje. Marka telefona sa id - " + id + " nije pronadjena.");
            String referer = request.getHeader("Referer");
            return "redirect:" + referer;
        }

        ispitService.deleteMarkaTelefona(mt);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }

    @RequestMapping(value = "/addTelefon", method = RequestMethod.GET)
    public String addTelefon(Model model) {
        model.addAttribute("telefon", new Telefon());
        model.addAttribute("markeTelefona", ispitService.getMarkeTelefona());
        return "addTelefon";
    }

    @RequestMapping(value = "/addTelefon", method = RequestMethod.POST)
    public ModelAndView addTelefon(@ModelAttribute("telefon") Telefon t, ModelAndView model) {
        t = ispitService.addTelefon(t);
        model.addObject("markeTelefona", ispitService.getMarkeTelefona());
        model.addObject("successMsg", "Telefon je uspesno dodat!");
        model.addObject("telefon", t);
        return model;
    }

    @RequestMapping(value = "/viewTelefoni", method = RequestMethod.GET)
    public ModelAndView getTelefoni(ModelAndView model) {
        model.addObject("telefoni", ispitService.getTelefoni());
        model.addObject("telefon", new Telefon());
        return model;
    }

    @RequestMapping(value = "/deleteTelefon/{telefonId}", method = RequestMethod.GET)
    public String deleteTelefon(@PathVariable("telefonId") int id, HttpServletRequest request) {
        System.out.println("Fetching & Deleting telefon with id " + id);

        Telefon t = ispitService.getTelefonById(id);
        if (t == null) {
            System.out.println("Nije moguce izvrsiti brisanje! Telefon sa id - " + id + " nije pronadjen.");
            String referer = request.getHeader("Referer");
            return "redirect:" + referer;
        }

        ispitService.deleteTelefon(t);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }

    @RequestMapping(value = "/viewJedanTelefon/{telefonId}**", method = RequestMethod.GET)
    public ModelAndView viewJedanTelefon(@PathVariable("telefonId") int id, HttpServletRequest request) {
        Telefon telefon = ispitService.getTelefonById(id);

        ModelAndView model = new ModelAndView();

        model.setViewName("viewJedanTelefon");
        model.addObject(telefon);
        model.addObject("telefonBrzinaProcesora", telefon.getTelefonBrzinaProcesora());
        model.addObject("telefonJacinaKamere", telefon.getTelefonJacinaKamere());
        model.addObject("telefonMemorija", telefon.getTelefonMemorija());

        return model;
    }
}
