package fr.almeri.beerboard.controllers;

import fr.almeri.beerboard.models.Pays;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;

@Controller
public class BaseController {

    @GetMapping("/example")
    public String example(Model model)
    {
        Pays pays = new Pays();
        pays.setNomPays("France");
        pays.setConsommation(145.0);
        pays.setProduction(190.9);

        Pays pays1 = new Pays();
        pays1.setNomPays("Angleterre");
        pays1.setConsommation(14.0);
        pays1.setProduction(200.9);

        Pays pays2 = new Pays();
        pays2.setNomPays("Espagne");
        pays2.setConsommation(145.0);
        pays2.setProduction(190.9);

        ArrayList<Pays> listPays = new ArrayList<>();

        listPays.add(pays);
        listPays.add(pays1);
        listPays.add(pays2);


        model.addAttribute("listes",listPays);


        return "hello";
    }
}
